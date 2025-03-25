//
//  RegisterController.swift
//  NavigationControllerTask
//
//  Created by Zemfira Asadzade on 25.03.25.
//

import UIKit

//BA 2
protocol RegisterDelegate {
    func registerAction(fullname: String, email: String, password: String)
}

class RegisterController: UIViewController {

    @IBOutlet weak var fullnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //AB 1
    var titleString = ""
    
    // BA Delegate 1
    var delegate: RegisterDelegate?
    
    //BA Closure 1
    var registerCallback: ((String, String, String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //AB 2
        title = titleString

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        if let fullname = fullnameTextField.text, !fullname.isEmpty,
           let email = emailTextField.text, !email.isEmpty,
           let password = passwordTextField.text, !password.isEmpty {
            //BA Delegate 3
//            delegate?.registerAction(fullname: fullname, email: email, password: password)
            
            //BA Closure 2
            registerCallback?(fullname, email, password)

            navigationController?.popViewController(animated: true)
        }
//        dismiss(animated: true)
    }
    
   

}
