//
//  BoredViewController.swift
//  Inspired
//
//  Created by Naveen Budda on 6/27/20.
//  Copyright © 2020 Navadeep Budda. All rights reserved.
//

import UIKit
import AVFoundation

class BoredViewController: UIViewController {

    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "boredMusic", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            
            let audioSession = AVAudioSession.sharedInstance()
            do{
                try audioSession.setCategory(AVAudioSession.Category.playback)
            }
            catch{
                
            }
            
            
        }
            
        catch{
            print(error)
        
        }

        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var boredLabel: UILabel!
    
    
    @IBAction func boredShare(_ sender: Any) {
        let activityVC = UIActivityViewController(activityItems: ["Download Insparation on the app store today to see this Bored quote!"], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
        
        
    }
    
    @IBAction func boredSwipeQuote(_ sender: Any) {
        
        let boredArray = ["She refused to be bored chiefly because she wasn't boring.", "There are no uninteresting things, only uninterested people.", "I abhor the idea of a perfect world. It would bore me to tears.", "I would rather die of passion than of boredom.", "Is life not a thousand times too short for us to bore ourselves?", "The truth is that everyone is bored, and devotes himself to cultivating habits.", "The absence of the will to live is, alas, not sufficient to make one want to die.", "Never underestimate the determination of a kid who is time-rich and cash-poor.", "The writer's curse is that even in solitude, no matter its duration, he never grows lonely or bored." ]
        boredLabel.text = boredArray.randomElement()
        
    }
    @IBAction func boredPlay(_ sender: Any) {
        audioPlayer.play()
    }
    @IBAction func boredPause(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.pause()
        }
        else {
            
        }
    }
    @IBAction func boredRestart(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.currentTime = 0
            audioPlayer.play()
        }
        else {
            audioPlayer.play()
        }
        
    }
    @IBAction func manualBoredQuote(_ sender: Any) {
        let manualBoredArray = ["She refused to be bored chiefly because she wasn't boring.", "There are no uninteresting things, only uninterested people.", "I abhor the idea of a perfect world. It would bore me to tears.", "I would rather die of passion than of boredom.", "Is life not a thousand times too short for us to bore ourselves?", "The truth is that everyone is bored, and devotes himself to cultivating habits.", "The absence of the will to live is, alas, not sufficient to make one want to die.", "Never underestimate the determination of a kid who is time-rich and cash-poor.", "The writer's curse is that even in solitude, no matter its duration, he never grows lonely or bored." ]
        boredLabel.text = manualBoredArray.randomElement()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
