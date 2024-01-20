//
//  ViewController.swift
//  AutoLayout
//
//  Created by Bayu Alif Farisqi on 20/01/24.
//

import UIKit

class ProfileViewController: UIViewController {

    
   
    @IBOutlet weak var followedButton: UIButton!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userProfesi: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImageView.image = UIImage(named: "bayu")
        userName.text = "Bayu Alif F"
        userProfesi.text = "iOS Engineer"
        setUpCircleImageView()
    }
    private func setUpCircleImageView(){
        profileImageView.layer.borderWidth = 1
        profileImageView.layer.masksToBounds = false
        profileImageView.layer.borderColor = UIColor.black.cgColor
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
        profileImageView.clipsToBounds = true
        
    }
    private var isFollow = false
    @IBAction func setFollowed(_ sender: UIButton) {
        isFollow = !isFollow
        followedButton.setTitle(isFollow ? "Following":"Follow", for: .normal)
    }
}

