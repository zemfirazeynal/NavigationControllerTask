//
//  ViewController.swift
//  NavigationControllerTask
//
//  Created by Zemfira Asadzade on 25.03.25.
//

import UIKit
                                   //BA Delegate 5
class ViewController: UIViewController, RegisterDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonTapped(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(identifier: "RegisterController") as! RegisterController
        //AB 3
        controller.titleString = "Qeydiyyat ekranı"
        //BA Delegate 4
//        controller.delegate = self
        
        //BA Closure 3
        controller.registerCallback = { fullname, email, password in
            self.emailTextField.text = email
            self.passwordTextField.text = password
            
        }
        navigationController?.show(controller, sender: nil)
//        navigationController?.present(controller, animated: true)
    }
    
    //BA Delegate 6
    func registerAction(fullname: String, email: String, password: String) {
        emailTextField.text = email
        passwordTextField.text = password
    }
    
}

