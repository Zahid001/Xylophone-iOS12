//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController{
    

    var audioPlayer = AVAudioPlayer()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            playTone(trackName: "note1", ext: "wav")
            break
        case 2:
            playTone(trackName: "note2", ext: "wav")
            break
        case 3:
            playTone(trackName: "note3", ext: "wav")
            break
        case 4:
            playTone(trackName: "note4", ext: "wav")
            break
        case 5:
            playTone(trackName: "note5", ext: "wav")
            break
        case 6:
            playTone(trackName: "note6", ext: "wav")
            break
        case 7:
            playTone(trackName: "note7", ext: "wav")
            break
        default:
            print("invalid")
        }
        
    }
    
    func playTone(trackName : String,ext:String)  {
        let audioUrl = Bundle.main.url(forResource: trackName, withExtension: ext)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl!)
        }
        catch{
            print(error)
        }
        
        
        audioPlayer.play()
    }
    
  

}

