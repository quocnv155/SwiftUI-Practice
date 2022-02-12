//
//  HomeViewController.swift
//  SwiftUI-Practice
//
//  Created by QuocNV on 11/02/2022.
//

import Foundation
import UIKit
import SwiftUI
struct HomeView: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let storyboard = UIStoryboard(name: "HomeVC", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        return vc
    }
}

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func gotoSwiftUI(_ sender: Any) {
        let hostVC = UIHostingController(rootView: HomeView())
        present(hostVC, animated: true, completion: nil)
        
    }
}
