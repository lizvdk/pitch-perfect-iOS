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
        } else {
            print("Error getting file")
        }
    }
    
    @IBAction func playSlowAudio(sender: UIButton) {
        audioPlayer.play()
    }

}
