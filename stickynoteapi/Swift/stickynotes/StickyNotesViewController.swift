//
//  AppDelegate.swift
//  StickyNotesViewController
//
//  Created by Anirudh Vyas on 24/03/20.
//  Copyright © 2020 Gojek. All rights reserved.
//

import UIKit
import stickynote

let hostAddress = "35.232.179.243"
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
            imageView.image = UIImage(data: response.image);
        }
    }
    
    func getStickynote(_ message: String, _ size: Int32 = 512) {
        if let client = client {
            let request = StickyNoteRequest()
            request.message = message
            request.size = size
            let timeAtPress = Date()
            let call = client.rpcToGet(with: request, handler: { (response, error) in
                let elapsed = Date().timeIntervalSince(timeAtPress)
                print(elapsed)
                self.handleStickynoteResponse(response, error: error)
            })
            call.start()
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
