//
//  AnxietyViewController.swift
//  Inspired
//
//  Created by Navadeep Budda on 6/27/20.
//  Copyright © 2020 Navadeep Budda. All rights reserved.
//

import UIKit
import AVFoundation

class AnxietyViewController: UIViewController {
    
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
    
    @IBAction func anxietyShare(_ sender: Any) {
        let activityVC = UIActivityViewController(activityItems: ["Download Insparation on the app store today to see this Anxiety quote!"], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
    }
    
    @IBAction func anxietyPlay(_ sender: Any) {
        print("hello")
         audioPlayer.play()
    }
    @IBAction func anxietyPause(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.pause()
        }
        else {
            
        }
    }
    @IBAction func anxietyRestart(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.currentTime = 0
            audioPlayer.play()
        }
        else {
            audioPlayer.play()
        }
        
    }
    @IBOutlet var anxietyLabel: UILabel!
    
    @IBAction func manualAnxietyQuote(_ sender: Any) {
        let manualAnxientyArray = ["Anxiety’s like a rocking chair. It gives you something to do, but it doesn’t get you very far.","Life is 10 percent what you experience and 90 percent how you respond to it.","Smile, breathe, and go slowly.", "You don’t have to control your thoughts. You just have to stop letting them control you.", "If you always do what you’ve always done, you’ll always get what you’ve always got.", "People become attached to their burdens sometimes more than the burdens are attached to them.", "Nothing diminishes anxiety faster than action.", "Nothing can bring you peace but yourself.", "You wouldn’t worry so much about what others think of you if you realized how seldom they do.", "You can’t always control what goes on outside. But you can always control what goes on inside."]
        anxietyLabel.text = manualAnxientyArray.randomElement()
    }
    
    @IBAction func anxietySwipeQuote(_ sender: Any) {
        let swipeAnxientyArray = ["Anxiety’s like a rocking chair. It gives you something to do, but it doesn’t get you very far.","Life is 10 percent what you experience and 90 percent how you respond to it.","Smile, breathe, and go slowly.", "You don’t have to control your thoughts. You just have to stop letting them control you.", "If you always do what you’ve always done, you’ll always get what you’ve always got.", "People become attached to their burdens sometimes more than the burdens are attached to them.", "Nothing diminishes anxiety faster than action.", "Nothing can bring you peace but yourself.", "You wouldn’t worry so much about what others think of you if you realized how seldom they do.", "You can’t always control what goes on outside. But you can always control what goes on inside."]
        anxietyLabel.text = swipeAnxientyArray.randomElement()
    }
    
    
    @IBAction func anxietySpeak(_ sender: Any) {
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
