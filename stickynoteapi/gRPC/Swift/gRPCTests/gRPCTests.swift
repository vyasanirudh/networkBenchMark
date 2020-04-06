//
//  gRPCTests.swift
//  gRPCTests
//
//  Created by Anirudh Vyas on 29/03/20.
//  Copyright © 2020 Google. All rights reserved.
//

import XCTest
import stickynote

let hostAddress = "34.70.205.186" //Update this based on the GCP IP.

class gRPCTests: XCTestCase {
    
    var client: StickyNote?
    var updateCall: GRPCProtoCall?
    var updateWriter: GRXBufferedPipe?
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        configureNetworking()
    }
    
    func testgRPCServiceForHelloMessageToMeasureTime () {
        measure {
            let expectation = XCTestExpectation(description: "Download Hello message")
            self.makeRPCallForHelloMessage { (response,error) in
                XCTAssertNotNil(response, "No message downloaded!")
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: 2.0)
        }
    }
    
//    func testgRPCServiceForHelloMessageToMeasureResponseSize() {
//        let expectation = XCTestExpectation(description: "Download Hello message")
//        self.makeRPCallForHelloMessage { (response,error) in
//            XCTAssertNotNil(response, "No message downloaded!")
//            expectation.fulfill()
//        }
//        wait(for: [expectation], timeout: 2.0)
//    }
    
    func testgRPCServiceForImageDownloadToMeasureTime () {
        measure {
            let expectation = XCTestExpectation(description: "Download Image")
            self.makeRPCallForImageDownlaod { (response, error) in
                XCTAssertNotNil(response, "No image downloaded!")
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: 2.0)
        }
    }
    
//    func testgRPCServiceForImageDownloadToMeasureResponseSize() {
//        let expectation = XCTestExpectation(description: "Download Image")
//        self.makeRPCallForImageDownlaod { (response, error) in
//            XCTAssertNotNil(response, "No image downloaded!")
//            expectation.fulfill()
//        }
//        wait(for: [expectation], timeout: 2.0)
//
//        addTeardownBlock {
//
//        }
//    }
    
    
}

private extension gRPCTests {
    
    func configureNetworking() {
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
    
}
