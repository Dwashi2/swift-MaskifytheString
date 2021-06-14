//
//  ViewController.swift
//  MaskifytheString
//
//  Created by Daniel Washington Ignacio on 14/06/21.
//


/*
 Usually when you sign up for an account to buy something, your credit card number, phone number or answer to a secret question is partially obscured in some way. Since someone could look over your shoulder, you don't want that shown on your screen. Hence, the app masks these strings.

 Your task is to create a function that takes a string, transforms all but the last four characters into "#" and returns the new masked string.

 Examples

 maskify("4556364607935616") ➞ "############5616"

 maskify("64607935616") ➞ "#######5616"

 maskify("1") ➞ "1"

 maskify("") ➞ ""
 Notes

 The maskify function must accept a string of any length.
 An empty string should return an empty string (fourth example above).
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.maskify("4556364607935616"))
        print(self.maskify("64607935616"))
        print(self.maskify("1"))
        print(self.maskify(""))
    }

    
    func maskify(_ str: String) -> String {
        var newArr: [Character] = []
        var index: Int = 0
        if str.count < 4{
            return str
        }
        for n in str{
            if index < str.count-4{
                newArr.append("#")
            }else{
            newArr.append(n)
            }
            index = index + 1
        }
        return String(newArr)
    }

}

