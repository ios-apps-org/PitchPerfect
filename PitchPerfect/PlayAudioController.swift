//
//  PlayAudioController.swift
//  PitchPerfect
//
//  Created by Jon DeMaagd on 4/3/20.
//  Copyright © 2020 jdemaagd. All rights reserved.
//

import UIKit
import AVFoundation

class PlayAudioController: UIViewController {

    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!

    var recordedAudioURL: URL!
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int { case snail = 0, rabbit, chipmunk, vader, echo, reverb }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI(.notPlaying)
        stopAudio()
    }
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
        print("Play sound button pressed!")
        switch(ButtonType(rawValue: sender.tag)!) {
        case .snail:
            playSound(rate: 0.5)
        case .rabbit:
            playSound(rate: 1.5)
        case .chipmunk:
            playSound(pitch: 1000)
        case .vader:
            playSound(pitch: -1000)
        case .echo:
            playSound(echo: true)
        case .reverb:
            playSound(reverb: true)
        }

        configureUI(.playing)
    }
    
    @IBAction func stopButtonPressed(_ sender: Any?) {
        stopAudio()
    }
    
}
