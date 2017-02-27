//
//  ViewController.swift
//  DevChat
//
//  Created by Michael L Gueterman on 2/17/17.
//  Copyright © 2017 Michael L Gueterman. All rights reserved.
//

import UIKit
import FirebaseAuth

class CameraVC: AVCamCameraViewController, AAPLCameraVCDelegate {

    @IBOutlet weak var cameraBtn: UIButton!

    @IBOutlet weak var recordBtn: UIButton!
    
    @IBOutlet weak var previewView: AVCamPreviewView!
    
    override func viewDidLoad() {
        delegate = self
        _previewView = previewView

        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        guard FIRAuth.auth()?.currentUser != nil else {
            performSegue(withIdentifier: "LoginVC", sender: nil)
            return
        }
    }

    @IBAction func recordBtnPressed(_ sender: Any) {
        print("Toggling Recording Mode")
        toggleMovieRecording()
    }

    @IBAction func changeCameraBtnPressed(_ sender: Any) {
        print("Switching Cameras")
        changeCamera()
    }
    
    func shouldEnableCameraUI(_ enable: Bool) {
        cameraBtn.isEnabled = enable
        print("Should enable camera UI: \(enable)")
    }
    
    func shouldEnableRecordUI(_ enable: Bool) {
        recordBtn.isEnabled = enable
        print("Should enable record UI: \(enable)")
    }
    
    func recordingHasStarted() {
        print("Recording has started")
    }
    
    func canStartRecording() {
        print("Can start recording")
    }
}

