//
//  ViewController.swift
//  LihuisiSnapChat
//
//  Created by Eduardo Lihuisi on 31/05/23.
//

import UIKit
import FirebaseAuth
import FirebaseCore

class IniciarSesionViewController: UIViewController {
    
    @IBAction func googleSesionTapped(_ sender: Any) {
    }
    

    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            print("Intentando Iniciar sesion")
            if error != nil {
                print("Se presento el siguiente error: \(error)")
            } else {
                print("Inicio de sesion exitoso")
            }
        }
    }
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


}

