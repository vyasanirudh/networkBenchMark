//
//  gRPCTests.swift
//  gRPCTests
//
//  Created by Anirudh Vyas on 29/03/20.
//  Copyright © 2020 Gojek. All rights reserved.
//

import XCTest
import stickynote

let hostAddress = "35.238.196.60"
let timeout = 10.0

class gRPCTests: XCTestCase {
    
    var client: StickyNote?
    var updateCall: GRPCProtoCall?
    var updateWriter: GRXBufferedPipe?
    
    override func setUp() {
        connect()
    }
    
    func testgRPCServiceForHelloMessageToMeasureTime () {
        measure {
            let expectation = XCTestExpectation(description: "Download Hello message")
            self.makeRPCallForHelloMessage { (response,error) in
                XCTAssertNotNil(response, "No message downloaded!")
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: timeout)
        }
    }
    
//    func testgRPCServiceForHelloMessageToMeasureResponseSize() {
//        let expectation = XCTestExpectation(description: "Download Hello message")
//        self.makeRPCallForHelloMessage { (response,error) in
//            XCTAssertNotNil(response, "No message downloaded!")
//            Reporter.recordTestResults(for: #function, with: "\(#function),\(response?.data()?.count ?? 0)\n")
//            expectation.fulfill()
//        }
//        wait(for: [expectation], timeout: timeout)
//    }
    
    func testgRPCServiceForImageDownloadToMeasureTime () {
        measure {
            let expectation = XCTestExpectation(description: "Download Image")
            self.makeRPCallForImageDownlaod { (response, error) in
                XCTAssertNotNil(response, "No image downloaded!")
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: timeout)
        }
    }
    
//    func testgRPCServiceForImageDownloadToMeasureResponseSize() {
//        let expectation = XCTestExpectation(description: "Download Image")
//        self.makeRPCallForImageDownlaod { (response, error) in
//            XCTAssertNotNil(response, "No image downloaded!")
//            Reporter.recordTestResults(for: #function, with: "\(#function),\(response?.data()?.count ?? 0)\n")
//            expectation.fulfill()
//        }
//        wait(for: [expectation], timeout: timeout)
//    }
    
    func testgRPCServiceForOpenStreamConnectionToMeasureTime() {
        measure {
            let runCount = 10
            let expectation = XCTestExpectation(description: "Download Image")
            expectation.expectedFulfillmentCount = runCount
            self.makeOpenStreamRPCCallForHelloMessage { (response, error) in
                XCTAssertNotNil(response, "No image downloaded!")
                expectation.fulfill()
            }
            for _ in 0..<runCount {
                let helloRequest = SayHelloRequest()
                helloRequest.message = "hello" //Update this to random strings.
                updateWriter?.writeValue(helloRequest)
            }
            wait(for: [expectation], timeout: timeout)
        }
    }
}

private extension gRPCTests {
    
    func connect() {
        let addressWithPort = "\(hostAddress):8080"
        GRPCCall.useInsecureConnections(forHost: addressWithPort)
        client = StickyNote(host: addressWithPort)
    }
    
    func makeRPCallForHelloMessage(completion: @escaping (SayHelloResponse?,Error?)->()) {
        if let client = client {
            let request = SayHelloRequest()
            request.message = "makeRPCallForHelloMessage"
            let call = client.rpcToSayHello(with: request, handler: { (response, error) in
                completion(response,error)
            })
            call.start()
        }
    }
    
    func makeRPCallForImageDownlaod(completion: @escaping (StickyNoteResponse?,Error?)->()) {
        if let client = client {
            let request = StickyNoteRequest()
            request.message = "makeRPCallForImageDownlaod"
            let call = client.rpcToGet(with: request, handler: { (response, error) in
                completion(response,error)
            })
            call.start()
        }
    }
    
    func makeOpenStreamRPCCallForHelloMessage(completion: @escaping (SayHelloResponse?,Error?)->())  {
        if let client = client {
            updateWriter = GRXBufferedPipe()
            if let updateWriter = updateWriter {
                updateCall = client.rpcToStreamHello(withRequestsWriter: updateWriter,
                                                     eventHandler: { (done, response, error) in
                                                        completion(response,error)
                })
                if let updateCall = updateCall {
                    updateCall.start()
                }
            }
        }
    }
}
