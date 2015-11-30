//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Liz Vanderkloot on 11/30/15.
//  Copyright © 2015 lizvdk. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let filePathUrl = NSBundle.mainBundle().URLForResource("movie_quote", withExtension: "mp3") {
            audioPlayer = try!
AVAudioPlayer(contentsOfURL: filePathUrl)
            audioPlayer.enableRate = true
        } else {
            print("Error getting file")
        }
    }
    
    @IBAction func playSlowAudio(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0.0
        audioPlayer.rate = 0.5
        audioPlayer.play()
    }

    @IBAction func playFastAudio(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0.0
        audioPlayer.rate = 2.0
        audioPlayer.play()
    }
    
    @IBAction func stopPlayingAudio(sender: UIButton) {
        audioPlayer.stop()
    }
}
