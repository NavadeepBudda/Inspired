//
//  StressViewController.swift
//  Inspired
//
//  Created by Naveen Budda on 6/27/20.
//  Copyright © 2020 Navadeep Budda. All rights reserved.
//

import UIKit
import AVFoundation

class StressViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
        audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "stressMusic", ofType: "mp3")!))
        
        }
        catch{
            print(error)
        }

        
        // Do any additional setup after loading the view.
    }
    @IBOutlet var stressLabel: UILabel!
    
    @IBAction func stressShare(_ sender: Any) {
        let activityVC = UIActivityViewController(activityItems: ["Download Insparation on the app store today to see this Stress quote!"], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
        
    }
    
    @IBAction func stressSwipeQuote(_ sender: Any) {
        let stressArray = ["It’s not stress that kills us, it is our reaction to it","If the problem can be solved, why worry? If the problem cannot be solved, worrying will do you no good.","Adopting the right attitude can convert a negative stress into a positive one.","The greatest weapon against stress is our ability to choose one thought over another.","Better to do something imperfectly than to do nothing flawlessly.","If you treat every situation as a life and death matter, you’ll die a lot of times.", "It’s a good idea always to do something relaxing prior to making an important decision in your life.", "Worrying won’t stop the bad things from happening, it just stops you from enjoying the good.", "The greatest mistake you can make in life is to be continually fearing you will make one."]
        stressLabel.text = stressArray.randomElement()
    }
    
    @IBAction func manualStressQuote(_ sender: Any) {
        let manualStressArray = ["It’s not stress that kills us, it is our reaction to it","If the problem can be solved, why worry? If the problem cannot be solved, worrying will do you no good.","Adopting the right attitude can convert a negative stress into a positive one.","The greatest weapon against stress is our ability to choose one thought over another.","Better to do something imperfectly than to do nothing flawlessly.","If you treat every situation as a life and death matter, you’ll die a lot of times.", "It’s a good idea always to do something relaxing prior to making an important decision in your life.", "Worrying won’t stop the bad things from happening, it just stops you from enjoying the good.", "The greatest mistake you can make in life is to be continually fearing you will make one."]
        stressLabel.text = manualStressArray.randomElement()
    }
    
    
    @IBAction func stressPlay(_ sender: Any) {
        audioPlayer.play()
        print("hi")
    }
    @IBAction func stressPause(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.pause()
        }
    }
    @IBAction func stressRestart(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.currentTime = 0
            audioPlayer.play()
        }
        else {
            audioPlayer.play()
        }
        
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
