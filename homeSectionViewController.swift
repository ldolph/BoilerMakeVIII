//
//  homeSectionViewController.swift
//  BoilerMakeVIII
//  Created by Lily Dolph and Tessa Dolph on 1/23/21.
//

import UIKit

class homeSectionViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
   
    @IBAction func createPageButton(_ sender: Any) {
        self.performSegue(withIdentifier: "homeToCreateSegue", sender: self)
    }
    
    @IBAction func generateCodePageButton(_ sender: Any) {
        self.performSegue(withIdentifier: "homeToCodeSegue", sender: self)   
    }
    
    @IBAction func playlistPageButton(_ sender: Any) {    
        self.performSegue(withIdentifier: "homeToPlaylistSegue", sender: self)
    }
}
