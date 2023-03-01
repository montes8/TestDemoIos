//
//  ViewController.swift
//  TestDemoIos
//
//  Created by MacBook Pro on 28/02/23.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var btnLoginT: UIButton!
    @IBOutlet weak var editPassT: UITextField!
    @IBOutlet weak var editEmailTest: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBacgroundRoundEdit()
        
    }


    @IBAction func OnClickTbnLogin(_ sender: Any) {
        var success : Bool = false
        if editEmailTest.text == "" || editPassT.text == "" {
            showAlert("Debes ingresar los datos completos")
        }else{
            success = validEmailFormat()
            success = validPasswordFormat()
            if(success){showAlert("Datos validos")}
        }
        
    
    }
    
    func validEmailFormat() ->Bool{
        if(Utils.validEmail(editEmailTest?.text ?? "")){
            return true
        }else{
            showAlert("El email es incorrecto")
            return false
        }
        
    }
    
    func validPasswordFormat() -> Bool{
        if(Utils.validPassword(editPassT?.text ?? "")){
            return true
        }else{
            showAlert("La contraseña debe contener minimo 8 caracteres")
            return false
        }
    }
    
    func setBacgroundRoundEdit(){
        editPassT.layer.masksToBounds = true
        editPassT.layer.masksToBounds = true
        editPassT.layer.cornerRadius = 8;
        editEmailTest.layer.cornerRadius = 8;
    }

    func showAlert(_ message : String){
           let alert = UIAlertController(title: "Alerta", message: message, preferredStyle: .alert)

           alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: { action in
               if action.style == .cancel{
                   print("ok button pressed")
               }
           }))
           
           present(alert, animated: true)
       }
}

