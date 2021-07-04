//
//  SecondPage.swift
//  Tap it
//
//  Created by DCS on 04/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class SecondPage: UIViewController {
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        button.addTarget(self, action: #selector(MoveToVC), for: .touchUpInside)
        button.layer.cornerRadius = 6
        return button
    }()
    private let myTextView : UITextView = {
        
        let textView = UITextView()
        textView.text = "Tap On Highlighted Box To Earn +10 Point, If tap On Wrong Box Then lose -5 Point, Tap Within Given Time, Click Start To Begin"
        textView.textAlignment = .center
        textView.backgroundColor = .white
        textView.textColor = .black
        textView.font = .boldSystemFont(ofSize: 25)
        textView.isEditable = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myButton)
        view.addSubview(myTextView)
        self.title = "Rules"
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"bgs2.png")!)

        
    }
    @objc func MoveToVC(){
        let vc = ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        myButton.frame = CGRect(x: 40, y: view.height/2+200, width: view.width-80, height: 60)
         myTextView.frame = CGRect(x: 40, y: 310, width: 300, height: 200)
    }

}
