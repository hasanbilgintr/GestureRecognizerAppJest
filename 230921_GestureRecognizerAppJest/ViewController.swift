//
//  ViewController.swift
//  230921_GestureRecognizerAppJest
//
//  Created by hasan bilgin on 21.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //jest Algılayıcılar label yada diğer itemlere tıklanabilirlik özelliği getirme

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var ismetalica=false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //imageView tıklanma özelliği aktiflkeştirdik
        imageView.isUserInteractionEnabled=true
        
        let gestureRecognizer=UITapGestureRecognizer(target: self, action: #selector(changePic))
        //image ekleme
        imageView.addGestureRecognizer(gestureRecognizer)
    }
        //kısayol command+Q kapatıyo dikketedelim
    
    @objc func changePic(){
        //print("tapped")
        if ismetalica{
            imageView.image=UIImage(named: "metalica")
            myLabel.text="metalice"
            ismetalica=false
        }else{
            imageView.image=UIImage(named: "metalica2")
            myLabel.text="metalica2"
            ismetalica=true
        }
        
        
    }

}

