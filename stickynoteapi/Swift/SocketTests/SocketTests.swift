//
//  SocketTests.swift
//  SocketTests
//
//  Created by Anirudh Vyas on 08/04/20.
//  Copyright © 2020 Gojek. All rights reserved.
//

import XCTest
import Starscream

let hostAddress = "localhost"
let timeout = 10.0

class SocketTests: XCTestCase {

    func testSocketServiceForHelloMessageToMeasureTime () {
        measure {
            let expectation = XCTestExpectation(description: "Download Hello message")
            let socket = getASocket()
            socket.onEvent = { event in
                switch event {
                case .text(_):
                    expectation.fulfill()
                case .error(let error):
                    XCTAssertNil(error, "No message downloaded!")
                case .connected(_):
                    socket.write(string: "hello!")
                default:
                    break
                }
            }
            socket.connect()
            wait(for: [expectation], timeout: timeout)
        }
    }
    
    func testSocketServiceForHelloMessageToMeasureResponseSize() {
        let expectation = XCTestExpectation(description: "Download Hello message")
        let socket = getASocket()
        socket.onEvent = { event in
            switch event {
            case .text(let string):
                let data = Data(string.utf8)
                Reporter.recordTestResults(for: #function, with: "\(#function),\(data.count)\n")
                expectation.fulfill()
            case .error(let error):
                XCTAssertNil(error, "No message downloaded!")
            case .connected(_):
                socket.write(string: "hello!")
            default:
                break
            }
        }
        socket.connect()
        wait(for: [expectation], timeout: timeout)
    }
    
    func testSocketServiceForOpenStreamConnectionToMeasureTime() {
        measure {
            let runCount = 10
            let expectation = XCTestExpectation(description: "Download Hello message")
            expectation.expectedFulfillmentCount = runCount
            let socket = getASocket()
            socket.onEvent = { event in
                switch event {
                case .text(let string):
                    let data = Data(string.utf8)
                    Reporter.recordTestResults(for: #function, with: "\(#function),\(data.count)\n")
                    expectation.fulfill()
                case .error(let error):
                    XCTAssertNil(error, "No message downloaded!")
                case .connected(_):
                    for _ in 0..<runCount {
                        socket.write(string: "hello!")
                    }
                default:
                    break
                }
            }
            socket.connect()
            wait(for: [expectation], timeout: timeout)
        }
    }
}

private extension SocketTests {
    
    func getASocket() -> WebSocket {
        var request = URLRequest(url: URL(string: "http://\(hostAddress):8080")!)
        request.timeoutInterval = 5
        let socket = WebSocket(request: request)
        return socket
    }
}
