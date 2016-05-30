//
//  ViewController.swift
//  login
//
//  Created by Dân Tơi on 5/25/16.
//  Copyright © 2016 Dân Tơi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblkq: UILabel!
    @IBOutlet weak var txtuser: UITextField!
    @IBOutlet weak var txtpassword: UITextField!
    @IBOutlet weak var txtsua: UITextField!
    
    var users = ["admin":"admin", "tungnguyen":"123"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btndangnhap(sender: AnyObject) {
        if let password = users[txtuser.text!]
        {
            if password == txtpassword.text{
                print ("Đăng nhập thành công")
            }
            else{
                print ("Sai mật khẩu")
            }
        }
        else{
           print ("Tài khoản ko tồn tại")
        }
    }
    
    @IBAction func btndanhsach(sender: AnyObject) {
        for (user, _) in users{
            print (user)
        
        }
    }
    
    @IBAction func btnthem(sender: AnyObject) {
        if (txtuser.text == "") || (txtpassword.text == "") {
            print  ("user và pass ko đc trống")
        }
        else{
            
            if let password = users[txtuser.text!]
            {
                if password == txtpassword.text{
                    print ("Tài khoản này đã tồn tại")
                }
            }
            else{
                users [txtuser.text!] = String(txtpassword.text!)
                print(users)
                print ("Thêm thành công!")
            }

        }
    }

    @IBAction func btnxoa(sender: AnyObject) {
        if (txtuser.text == "") || (txtpassword.text == "") {
            print ("user và pass ko đc trống")
        }
        else{
            
            if let password = users[txtuser.text!]
            {
                if password == txtpassword.text{
                    users.removeValueForKey(txtuser.text!)
                    print (users)
                    print ("Xoá thành công :v ")
                }
                else{
                    print ("Sai mật khẩu")
                }
            }
            else{
                print ("Tài khoản ko tồn tại")
            }

            
        }
    }
    
    @IBAction func btnsua(sender: AnyObject) {
        if (txtuser.text == "") || (txtpassword.text == "") {
            print ("user và pass ko đc trống")
        }
        else{
            
            if let password = users[txtuser.text!]
            {
                if password == txtpassword.text{
                    if txtsua.text == ""{
                        print ("Vui lòng nhập pw mới")
                    }
                    else{
                    users[(txtuser.text!)] = txtsua.text
                    print (users)
                    print ("Sửa thành công :v ")
                    }
                }
                else{
                    print ("Sai mật khẩu")
                }
            }
            else{
                print ("Tài khoản ko tồn tại")
            }
            
            
        }

    }
}


















