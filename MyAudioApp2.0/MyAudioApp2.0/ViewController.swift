//
//  ViewController.swift
//  MyAudioApp2.0
//
//  Created by Christiana Lewis on 8/19/20.
//  Copyright © 2020 Christiana Lewis. All rights reserved.
//

import UIKit


import AVFoundation

class ViewController: UIViewController {
    

    var audioPlayer = AVAudioPlayer()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    
        let sound = Bundle.main.path(forResource: "Horror Story", ofType: "wav")
        
       
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch{
            print(error)
        }
    }

  
    @IBAction func pauseAudio(_ sender: Any) {
        audioPlayer.pause()
    }
    
    @IBAction func playAudio(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func stopAudio(_ sender: Any) {
        audioPlayer.stop()
    }
    
    
}


    







