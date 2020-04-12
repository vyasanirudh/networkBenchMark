//
//  Reporter.swift
//  stickynotes
//
//  Created by Anirudh Vyas on 07/04/20.
//  Copyright © 2020 Gojek. All rights reserved.
//

import UIKit

public class Reporter {
    
    class func pathPrefix() -> URL? {
        if let srcRoot = ProcessInfo.processInfo.environment["SRCROOT"], let srcRootUrl = URL(string: srcRoot) {
            let dir = URL(fileURLWithPath: srcRootUrl.path)
            return dir
        }
        return nil
    }
    
    class func recordTestResults(for test: String, with value:String) {
        let screenshotsDirectory: URL? = Reporter.pathPrefix()?.appendingPathComponent("build/reports/", isDirectory: true)
        if let path = screenshotsDirectory?.appendingPathComponent("responseSizeReport.csv") {
            do {
                if let currentContent = try? String(contentsOf: path) {
                    try (currentContent + value).write(to: path, atomically: false, encoding: .utf8)
                } else {
                    try value.write(to: path, atomically: false, encoding: .utf8)
                }
            }
            catch let error {
                NSLog("Problem writing screenshot")
                NSLog(error.localizedDescription)
            }
        }
    }
}
