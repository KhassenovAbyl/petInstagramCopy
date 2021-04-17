//
//  ViewController.swift
//  petInstagramCopy
//
//  Created by Abylbek Khassenov on 02.04.2021.
//
import FirebaseAuth
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        hundleNotAuthenticated()
    }
    
    private func hundleNotAuthenticated(){
        
        if Auth.auth().currentUser == nil{
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }

}

