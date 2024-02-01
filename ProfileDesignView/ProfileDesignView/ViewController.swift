//
//  ViewController.swift
//  ProfileDesignView
//
//  Created by hajin on 2023/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    
        // Do any additional setup after loading the view.
    }

    @IBAction func ProfileButton(_ sender: Any) {
        
        let ProfileDesignVC = ProfileDesignViewController()
        ProfileDesignVC.modalTransitionStyle = .coverVertical
        ProfileDesignVC.modalPresentationStyle = .fullScreen
        self.present(ProfileDesignVC, animated: true , completion: nil)
    }
    
}

