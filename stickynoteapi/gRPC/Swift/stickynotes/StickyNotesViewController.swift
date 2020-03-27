// Copyright 2016 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import UIKit
import stickynote

let hostAddress = "localhost"
let useSSL = false

class StickyNotesViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var streamSwitch: UISwitch!
    var client: StickyNote?
    var updateCall: GRPCProtoCall?
    var updateWriter: GRXBufferedPipe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.darkGray
        configureNetworking()
    }
    
    func configureNetworking() {
        var addressWithPort: String
        if (!useSSL) {
            addressWithPort = hostAddress + ":8080"
            // This tells the GRPC library to NOT use SSL.
            GRPCCall.useInsecureConnections(forHost: addressWithPort)
        } else {
            addressWithPort = hostAddress + ":443"
            // This tells the GRPC library to trust a certificate that it might not be able to validate.
            // Typically this would be used to trust a self-signed certificate.
            if let certificateFilePath = Bundle.main.path(forResource: "ssl", ofType: "crt") {
                GRPCCall.useTestCertsPath(certificateFilePath, testName: "example.com", forHost: hostAddress)
            }
        }
        client = StickyNote(host: addressWithPort)
    }
    
    @IBAction func textFieldDidEndEditing(_ textField: UITextField) {
        //    getStickynote(textField.text!)
    }
    
    func handleStickynoteResponse(_ response: StickyNoteResponse?, error: Error?) {
        if (error != nil) {
            imageView.backgroundColor = UIColor.red
            imageView.image = nil;
        } else if let response = response {
            let count = response.image.count
            imageView.image = UIImage(data: response.image);
        }
    }
    
    func getStickynote(_ message: String, _ size: Int32 = 512) {
        if let client = client {
            let request = StickyNoteRequest()
            request.message = message
            request.size = size
            var timeAtPress = Date()
            let call = client.rpcToGet(with: request, handler: { (response, error) in
                let elapsed = Date().timeIntervalSince(timeAtPress)
//                print(elapsed)
//                self.handleStickynoteResponse(response, error: error)
            })
            call.start()
            
            let helloRequest = SayHelloRequest()
            helloRequest.message = message
            timeAtPress = Date()
            let callHello = client.rpcToSayHello(with: helloRequest, handler: { (response, error) in
                let elapsed = Date().timeIntervalSince(timeAtPress)
                print(elapsed)
//                self.handleStickynoteResponse(response, error: error)
            })
            callHello.start()
        }
    }
    
    // [START openStreamingConnection]
    func openStreamingConnection() {
        if let client = client {
            updateWriter = GRXBufferedPipe()
            if let updateWriter = updateWriter {
                let timeAtPress = Date()
                updateCall = client.rpcToUpdate(withRequestsWriter: updateWriter,
                                                eventHandler: { (done, response, error) in
                                                    let elapsed = Date().timeIntervalSince(timeAtPress)
                                                    print(elapsed)
                                                    self.handleStickynoteResponse(response, error: error)
                })
                if let updateCall = updateCall {
                    updateCall.start()
                }
            }
        }
    }
    // [END openStreamingConnection]
    
    func closeStreamingConnection() {
        updateWriter?.writesFinishedWithError(nil)
    }
    
    // [START textDidChange]
    @IBAction func textDidChange(textField: UITextField) {
        if (streamSwitch.isOn) {
            let request = StickyNoteRequest()
            request.message = textField.text
            
            updateWriter?.writeValue(request)
        }
    }
    // [END textDidChange]
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        getStickynote(textField.text!,10)
        textField.resignFirstResponder()
        return false
    }
    
    @IBAction func switchValueDidChange(_ switch: UISwitch) {
        if (`switch`.isOn) {
            openStreamingConnection()
        } else {
            closeStreamingConnection()
        }
    }
    
    
}
