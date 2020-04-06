//
//  RESTTests.swift
//  RESTTests
//
//  Created by Anirudh Vyas on 29/03/20.
//  Copyright © 2020 Google. All rights reserved.
//

import XCTest

let hostAddress = "34.67.168.22" //Update this based on the GCP IP.

class RESTTests: XCTestCase {

    func testRESTServiceForHelloMessageToMeasureTime () {
        measure {
            let expectation = XCTestExpectation(description: "Download Hello Message")
            self.triggerRequest(with: hostAddress, endPoint: "sayHello") { (data) in
                XCTAssertNotNil(data, "No message downloaded!")
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: 2.0)
        }
    }

    func testRESTServiceForHelloMessageToMeasureResponseSize () {
        let expectation = XCTestExpectation(description: "Download Hello Message")
        self.triggerRequest(with: hostAddress, endPoint: "sayHello") { (data) in
            XCTAssertNotNil(data, "No message downloaded!")
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 2.0)
    }
    
    func testRESTServiceForImageDownloadToMeasureTime () {
        measure {
            let expectation = XCTestExpectation(description: "Download Image")
            self.triggerRequest(with: hostAddress, endPoint: "stickynote") { (data) in
                XCTAssertNotNil(data, "No image downloaded!")
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: 2.0)
        }
    }
    
    func testRESTServiceForImageDownloadToMeasureResponseSize () {
        let expectation = XCTestExpectation(description: "Download Image")
        self.triggerRequest(with: hostAddress, endPoint: "stickynote") { (data) in
            XCTAssertNotNil(data, "No image downloaded!")
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 2.0)
    }
    
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
