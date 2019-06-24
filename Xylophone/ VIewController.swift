//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
// Step 1
import AVFoundation

// Step 2 (add the second class, AVAudioPlayerDelegate)
class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    // Step 3: create our audioPlayer variable of type AVAudioPlayer!
    var audioPlayer : AVAudioPlayer!
    
    // place names of wav files in an array so we can call them by index
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
//        print(soundArray[sender.tag - 1])
        // this prints the tag of the UIButton that was pressed
//        print(sender.tag)
        
        playSound(soundArray[sender.tag - 1])
    }
    
    func playSound(_ soundFile: String) {
        
        // Step 4: Create a sound URL that contains our sound file
        //       soundURL contains the location of the note we want to play
        let soundURL = Bundle.main.url(forResource: soundFile, withExtension: "wav")
        
        // Step 5: Set up the audio player to TRY and play the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }
  

}

