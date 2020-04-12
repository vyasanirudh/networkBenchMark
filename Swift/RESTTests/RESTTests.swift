//
//  RESTTests.swift
//  RESTTests
//
//  Created by Anirudh Vyas on 29/03/20.
//  Copyright © 2020 Gojek. All rights reserved.
//

import XCTest
import os.log

let hostAddress = "34.68.5.9"
let timeout = 10.0

class RESTTests: XCTestCase {

    func testRESTServiceForHelloMessageToMeasureTime () {
        measure {
            let expectation = XCTestExpectation(description: "Download Hello Message")
            self.triggerRequest(with: hostAddress, endPoint: "sayHello") { (data) in
                XCTAssertNotNil(data, "No message downloaded!")
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: timeout)
        }
    }

//    func testRESTServiceForHelloMessageToMeasureResponseSize () {
//        let expectation = XCTestExpectation(description: "Download Hello Message")
//        self.triggerRequest(with: hostAddress, endPoint: "sayHello") { (data) in
//            XCTAssertNotNil(data, "No message downloaded!")
//            Reporter.recordTestResults(for: #function, with: "\(#function),\(data?.count ?? 0)\n")
//            expectation.fulfill()
//        }
//        wait(for: [expectation], timeout: timeout)
//    }
    
    func testRESTServiceForImageDownloadToMeasureTime () {
        measure {
            let expectation = XCTestExpectation(description: "Download Image")
            self.triggerRequest(with: hostAddress, endPoint: "stickynote") { (data) in
                XCTAssertNotNil(data, "No image downloaded!")
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: timeout)
        }
    }
    
    func testRESTServiceForPollingToMeasureTime() {
        measure {
            let runCount = 10
            let expectation = XCTestExpectation(description: "Download Image")
            expectation.expectedFulfillmentCount = runCount
            for _ in 0..<runCount {
                self.triggerRequest(with: hostAddress, endPoint: "stickynote") { (data) in
                    XCTAssertNotNil(data, "No image downloaded!")
                    expectation.fulfill()
                }
            }
            wait(for: [expectation], timeout: 20.0)
        }
    }
    
//    func testRESTServiceForImageDownloadToMeasureResponseSize () {
//        let expectation = XCTestExpectation(description: "Download Image")
//        self.triggerRequest(with: hostAddress, endPoint: "stickynote") { (data) in
//            XCTAssertNotNil(data, "No image downloaded!")
//            Reporter.recordTestResults(for: #function, with: "\(#function),\(data?.count ?? 0)\n")
//            expectation.fulfill()
//        }
//        wait(for: [expectation], timeout: timeout)
//    }
    
}

extension RESTTests {
    
    private func triggerRequest(with hostAddress: String, endPoint: String, completion: @escaping (Data?)->()) {
        let urlComponents = NSURLComponents()
        urlComponents.scheme = "http"
        urlComponents.host = hostAddress
        urlComponents.port = NSNumber(value:8080)
        urlComponents.path = "/" + endPoint
        let messageQuery = URLQueryItem(name: "message", value: "Testing")
        urlComponents.queryItems = [messageQuery]
        if let url = urlComponents.url {
            let request = URLRequest(url:url)
            let session = URLSession.shared
            let task = session.dataTask(with: request, completionHandler: {data, response, error in
                completion(data)
            })
            task.resume()
        }
    }
}
