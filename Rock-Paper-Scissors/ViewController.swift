//
//  ViewController.swift
//  Rock-Paper-Scissors
//
//  Created by Ashmeet Singh on 17/08/20.
//  Copyright © 2020 Beast Playground. All rights reserved.
//

import UIKit
import GoogleMobileAds


class ViewController: UIViewController, GADBannerViewDelegate {
    
    
    @IBOutlet weak var AdBanner: GADBannerView!
    
    
    
    var player_number = 1
    var score = [0,0]
    var computer_number_win = 1
    var move_choosen = false
    
    @IBOutlet weak var player_image: UIImageView!
    @IBOutlet weak var computer_image: UIImageView!
    
    
    @IBOutlet weak var player_score: UILabel!
    @IBOutlet weak var computer_score: UILabel!
    
    
    @IBOutlet weak var winner_lable: UILabel!
    
    
    @IBAction func rock(_ sender: Any) {
        move_choosen = true
        player_number = 1
        player_image.image = UIImage(named: "Rock")
    }
    @IBAction func paper(_ sender: Any) {
        move_choosen = true
        player_number = 2
        player_image.image = UIImage(named: "Paper")
    }
    @IBAction func scissors(_ sender: Any) {
        move_choosen = true
        player_number = 3
        player_image.image = UIImage(named: "Scissors")
    }
    @IBAction func player_is_ready(_ sender: Any) {
        
        let computer_number = Int.random(in: 1...3)
        
        if computer_number == 1 {
            computer_number_win = 1
            computer_image.image = UIImage(named: "Rock")
            winnerCheck()
        }
        else if computer_number == 2{
            computer_number_win = 2
            computer_image.image = UIImage(named: "Paper")
            winnerCheck()
        }
        else if computer_number == 3{
            computer_number_win = 3
            computer_image.image = UIImage(named: "Scissors")
            winnerCheck()
        }
    }
    func winnerCheck(){
        if player_number == 1 && computer_number_win == 1 && move_choosen == true{
            winner_lable.text = "It's a Draw"
            winner_lable.isHidden = false
            move_choosen = false
            UIView.animate(withDuration: 0.5, animations: {
                
                self.winner_lable.center = (CGPoint (x: self.winner_lable.center.x + 700, y: self.winner_lable.center.y))
                
            })
        }
        else if player_number == 2 && computer_number_win == 2 && move_choosen == true{
            winner_lable.text = "It's a Draw"
            winner_lable.isHidden = false
            move_choosen = false
            UIView.animate(withDuration: 0.5, animations: {
                
                self.winner_lable.center = (CGPoint (x: self.winner_lable.center.x + 700, y: self.winner_lable.center.y))
                
            })
        }
        else if player_number == 3 && computer_number_win == 3 && move_choosen == true{
            winner_lable.text = "It's a Draw"
            winner_lable.isHidden = false
            move_choosen = false
            UIView.animate(withDuration: 0.5, animations: {
                
                self.winner_lable.center = (CGPoint (x: self.winner_lable.center.x + 700, y: self.winner_lable.center.y))
                
            })
        }
        else if player_number == 1 && computer_number_win == 3 && move_choosen == true{
            score[0] += 1
            winner_lable.text = "You Win"
            player_score.text = "\(score[0])"
            winner_lable.isHidden = false
            move_choosen = false
            UIView.animate(withDuration: 0.5, animations: {
                
                self.winner_lable.center = (CGPoint (x: self.winner_lable.center.x + 700, y: self.winner_lable.center.y))
                
            })
        }
        else if player_number == 2 && computer_number_win == 1 && move_choosen == true{
            score[0] += 1
            winner_lable.text = "You Win"
            player_score.text = "\(score[0])"
            winner_lable.isHidden = false
            move_choosen = false
            UIView.animate(withDuration: 0.5, animations: {
                
                self.winner_lable.center = (CGPoint (x: self.winner_lable.center.x + 700, y: self.winner_lable.center.y))
                
            })
        }
        else if player_number == 3 && computer_number_win == 2 && move_choosen == true{
            score[0] += 1
            winner_lable.text = "You Win"
            player_score.text = "\(score[0])"
            winner_lable.isHidden = false
            move_choosen = false
            UIView.animate(withDuration: 0.5, animations: {
                
                self.winner_lable.center = (CGPoint (x: self.winner_lable.center.x + 700, y: self.winner_lable.center.y))
                
            })
        }
        else if player_number == 1 && computer_number_win == 2 && move_choosen == true{
            score[1] += 1
            computer_score.text = "\(score[1])"
            winner_lable.text = "Computer Wins"
            winner_lable.isHidden = false
            move_choosen = false
            UIView.animate(withDuration: 0.5, animations: {
                
                self.winner_lable.center = (CGPoint (x: self.winner_lable.center.x + 700, y: self.winner_lable.center.y))
                
            })
        }
        else if player_number == 2 && computer_number_win == 3 && move_choosen == true{
            score[1] += 1
            computer_score.text = "\(score[1])"
            winner_lable.text = "Computer Wins"
            winner_lable.isHidden = false
            move_choosen = false
            UIView.animate(withDuration: 0.5, animations: {
                
                self.winner_lable.center = (CGPoint (x: self.winner_lable.center.x + 700, y: self.winner_lable.center.y))
                
            })
        }
        else if player_number == 3 && computer_number_win == 1 && move_choosen == true{
            score[1] += 1
            computer_score.text = "\(score[1])"
            winner_lable.text = "Computer Wins"
            winner_lable.isHidden = false
            move_choosen = false
            UIView.animate(withDuration: 0.5, animations: {
                
                self.winner_lable.center = (CGPoint (x: self.winner_lable.center.x + 700, y: self.winner_lable.center.y))
                
            })
        }
        else{
            winner_lable.text = "Please Select your Move"
            winner_lable.isHidden = false
            move_choosen = false
            UIView.animate(withDuration: 0.5, animations: {
                
                self.winner_lable.center = (CGPoint (x: self.winner_lable.center.x + 700, y: self.winner_lable.center.y))
                
            })
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winner_lable.isHidden = true
        winner_lable.center = (CGPoint (x: winner_lable.center.x - 700, y: winner_lable.center.y))
        
        AdBanner.isHidden = true
        AdBanner.delegate = self
        AdBanner.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        AdBanner.adSize = kGADAdSizeSmartBannerPortrait
        AdBanner.rootViewController = self
        AdBanner.load(GADRequest())
    }
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        AdBanner.isHidden = false
    }
    func adView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: GADRequestError) {
        AdBanner.isHidden = true
    }
}
