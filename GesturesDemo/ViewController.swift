//
//  ViewController.swift
//  GesturesDemo
//
//  Created by  on 10/15/20.
//  Copyright © 2020 AubreyApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myimageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func imageviewTapped(_ sender: UITapGestureRecognizer)
    {
        print("Demogoron tapped")
        view.backgroundColor = UIColor.black
    }
    
    @IBAction func starPanned(_ sender: UIPanGestureRecognizer)
    {
         let translation = sender.translation(in: view)
        guard let gestureView = sender.view else {
            return
        }
        gestureView.center = CGPoint (
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y )
        sender.setTranslation(.zero, in: view)
        }
        
    }


