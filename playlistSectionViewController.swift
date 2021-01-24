//
//  playlistSectionViewController.swift
//  BoilerMakeVIII
//
//  Created by Lily Dolph and Tessa Dolph on 1/23/21.
//

import UIKit

class playlistSectionViewController: UIViewController {
    
    var arrayOfURLS = [String]()
    var theme = "";
    var name = "";
    var urls = [String]()
    
    let userDefaults = UserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name = userDefaults.value(forKey: "name") as! String
        theme = userDefaults.value(forKey: "theme") as! String
        urls = userDefaults.value(forKey: "urls") as! [String]


        firstPlaylist.setTitle(name, for: .normal)
            
        if theme == "red" {
            firstPlaylist.setBackgroundImage(UIImage(named: "Red_playlist"), for: .normal)
        }
            
        if theme == "blue" {
            firstPlaylist.setBackgroundImage(UIImage(named: "Blue_Theme"), for: .normal)
        }
            
        if theme == "yellow" {
            firstPlaylist.setBackgroundImage(UIImage(named: "Yellow_playlist"), for: .normal)
        }
            
        if theme == "black" {
            firstPlaylist.setBackgroundImage(UIImage(named: "Black_playlist"), for: .normal)
        }
        
        if theme == "purple" {
            firstPlaylist.setBackgroundImage(UIImage(named: "Purple_playlist"), for: .normal)
        }
            
        if theme == "white" {
            firstPlaylist.setBackgroundImage(UIImage(named: "Blue_playlist"), for: .normal)
        }
        
        
    }
    
    @IBOutlet weak var firstPlaylist: UIButton!
    @IBOutlet weak var secondPlaylist: UIButton!
    @IBOutlet weak var thirdPlaylist: UIButton!
    @IBOutlet weak var fourthPlaylist: UIButton!
    @IBOutlet weak var fifthPlaylist: UIButton!
    @IBOutlet weak var sixthPlaylist: UIButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func playlistButton(_ sender: Any) {
        self.performSegue(withIdentifier: "playlistToHomeSegue", sender: self)
    }
    
    @IBAction func codePageButton(_ sender: Any) {
        self.performSegue(withIdentifier: "playlistToCodeSegue", sender: self)
    }
    
    @IBAction func createPageButton(_ sender: Any) {
        self.performSegue(withIdentifier: "playlistToCreateSegue", sender: self)
    }
    
    @IBAction func playlistPageButton(_ sender: Any) {
        self.performSegue(withIdentifier: "PlaylistToPlaylistSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "PlaylistToPlaylistSegue" {
            
            var viewController = segue.destination as! playlistViewController
            
            //URLS
            viewController.urls = urls
        
            viewController.userDefaults.setValue(urls, forKey: "urlsNew")
           
    }
    }
     
}
