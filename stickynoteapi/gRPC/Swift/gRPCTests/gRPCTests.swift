//
//  gRPCTests.swift
//  gRPCTests
//
//  Created by Anirudh Vyas on 29/03/20.
//  Copyright © 2020 Google. All rights reserved.
//

import XCTest
import stickynote

let hostAddress = "localhost" //Update this based on the GCP IP.

class gRPCTests: XCTestCase {

    var client: StickyNote?
    var updateCall: GRPCProtoCall?
    var updateWriter: GRXBufferedPipe?
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        configureNetworking()
    }
    
    func testgRPCServiceForImageDownloadToMeasureTime () {
        measure {
            let expectation = XCTestExpectation(description: "Download Image")
            if let client = client {
                let request = StickyNoteRequest()
                request.message = "testgRPCSForImageDownloadToMeasureTime"
                request.size = 512
                let call = client.rpcToGet(with: request, handler: { (response, error) in
                    XCTAssertNotNil(response, "No image downloaded!")
                    expectation.fulfill()
                })
                call.start()
            }
            wait(for: [expectation], timeout: 2.0)
        }
    }

    func testgRPCServiceForHelloMessageToMeasureTime () {
        measure {
            let expectation = XCTestExpectation(description: "Download Hello message")
            if let client = client {
                let request = SayHelloRequest()
                request.message = "testgRPCServiceForHelloMessageToMeasureTime"
                let call = client.rpcToSayHello(with: request, handler: { (response, error) in
                    XCTAssertNotNil(response, "No message downloaded!")
                    expectation.fulfill()
                })
                call.start()
            }
            wait(for: [expectation], timeout: 2.0)
        }
    }
}

extension gRPCTests {
    
    private func configureNetworking() {
        let addressWithPort = "\(hostAddress):8080"
        GRPCCall.useInsecureConnections(forHost: addressWithPort)
        client = StickyNote(host: addressWithPort)
    }
    
}
