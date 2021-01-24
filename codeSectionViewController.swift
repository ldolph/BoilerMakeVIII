//
//  codeSectionViewController.swift
//  BoilerMakeVIII
//
//  Created by Lily Dolph and Tessa Dolph on 1/23/21.
//

import UIKit

class codeSectionViewController: UIViewController {
    
    @IBOutlet var confirmButtonDisableEnable: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func homePageButton(_ sender: Any) {
        
        self.performSegue(withIdentifier: "codeToHomeSegue", sender: self)
        
    }
    
    @IBAction func createPageButton(_ sender: Any) {
        self.performSegue(withIdentifier: "codeToCreateSegue", sender: self)
    }
    
    @IBAction func playlistPageButton(_ sender: Any) {
        self.performSegue(withIdentifier: "codeToPlaylistSegue", sender: self)
        
    }
    
    @IBAction func confirmCreationOfCodeButton(_ sender: Any) {
        
        var code = "";
        let charactersForCode = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
        
        for i in 1...5 {
            
            var index = arc4random_uniform(60)
        
            code = "\(code)\(charactersForCode[Int(index)])"
            
            confirmButtonDisableEnable.isEnabled = false;
            
        }
        
        
    
        codeLabel.text = "Your Code: \(code)"
        
    }
    
    @IBOutlet var codeLabel: UILabel!
    
}
