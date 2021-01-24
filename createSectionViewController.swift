//
//  createSectionViewController.swift
//  BoilerMakeVIII
//
//  Created by Lily Dolph and Tessa Dolph on 1/23/21.
//

import UIKit

class createSectionViewController: UIViewController, UITextFieldDelegate {

    var theme = "";
    var urls = [String]()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func homePageButton(_ sender: Any) {
        self.performSegue(withIdentifier: "createToHomeSegue", sender: self)
    }
    
    @IBAction func codePageButton(_ sender: Any) {
        self.performSegue(withIdentifier: "createToCodeSegue", sender: self)
    }
    
    @IBAction func playlistPageButton(_ sender: Any) {
        self.performSegue(withIdentifier: "createToPlaylistSegue", sender: self)
    }
    
    //Image views
    @IBOutlet var yellowSelectImage: UIImageView!
    @IBOutlet var blueSelectImage: UIImageView!
    @IBOutlet var redSelectImage: UIImageView!
    @IBOutlet var blackSelectImage: UIImageView!
    @IBOutlet var purpleSelectImage: UIImageView!
    @IBOutlet var whiteSelectImage: UIImageView!
    
    
    //Themes
    @IBOutlet var yellow: UIButton!
    @IBOutlet var blue: UIButton!
    @IBOutlet var red: UIButton!
    @IBOutlet var black: UIButton!
    @IBOutlet var purple: UIButton!
    @IBOutlet var white: UIButton!
    
    
    //Text Fields
    @IBOutlet weak var URLFieldFive: UITextField! //top
    @IBOutlet weak var URLFieldFour: UITextField! //four
    @IBOutlet weak var URLFieldThree: UITextField! //three
    @IBOutlet weak var URLFieldTwo: UITextField! //two
    @IBOutlet weak var URLFieldOne: UITextField! //one
    @IBOutlet var nameField: UITextField!
    @IBOutlet weak var nameFieldOne: UITextField!
    
    
    @IBAction func sumbitPlaylist(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Text Field Five
        var labelText =  URLFieldFive.text
        var arrayText = labelText
        if arrayText != "nil" && arrayText != "" {
            urls.append(arrayText!)
        }

        //Text Field Four
        labelText =  URLFieldFour.text
        arrayText = labelText
        if arrayText != "nil" && arrayText != "" {
            urls.append(arrayText!)
            
        }
        
        //Text Field Three
        labelText =  URLFieldThree.text
        arrayText = labelText
        if arrayText != "nil" && arrayText != "" {
            urls.append(arrayText!)
        }
        
        //Text Field Two
        labelText =  URLFieldTwo.text
        arrayText = labelText
        if arrayText != "nil" && arrayText != "" {
            urls.append(arrayText!)
        }
        
        //Text Field One
        labelText =  URLFieldOne.text
        arrayText = labelText
        if arrayText != "nil" && arrayText != "" {
            urls.append(arrayText!)
        }
    
        
        if segue.identifier == "sumbitPlaylistSegue" {
            
            var viewController = segue.destination as! playlistSectionViewController
        
            //URLS
            viewController.urls = urls

            //Theme
            if (yellowSelectImage.image == UIImage(named: "circleTwo")) {
                theme = "yellow"
            }
        
            if (blueSelectImage.image == UIImage(named: "circleTwo")) {
                theme = "blue"
            }
        
            if (redSelectImage.image == UIImage(named: "circleTwo")) {
                theme = "red"
            }
        
            if (purpleSelectImage.image == UIImage(named: "circleTwo")) {
                theme = "purple"
            }
        
            if (whiteSelectImage.image == UIImage(named: "circleTwo")) {
                theme = "white"
            }
        
            if (blackSelectImage.image == UIImage(named: "circleThree")) {
                theme = "black"
            }
        
            viewController.theme = theme;
            
            //Name
            var name = nameField.text;
            viewController.name = name ?? "";
            
            viewController.userDefaults.setValue(name, forKey: "name")
            viewController.userDefaults.setValue(theme, forKey: "theme")
            viewController.userDefaults.setValue(urls, forKey: "urls")
           
    }
    }
    

    
    @IBAction func yellowTheme(_ sender: Any) {
        
        yellowSelectImage.image = UIImage(named: "circleTwo")
        
        blueSelectImage.image = UIImage(named: "emptyPng")
        redSelectImage.image = UIImage(named: "emptyPng")
        blackSelectImage.image = UIImage(named: "emptyPng")
        purpleSelectImage.image = UIImage(named: "emptyPng")
        whiteSelectImage.image = UIImage(named: "emptyPng")
    }
    
    @IBAction func blueTheme(_ sender: Any) {
        
        blueSelectImage.image = UIImage(named: "circleTwo")
        
        yellowSelectImage.image = UIImage(named: "emptyPng")
        redSelectImage.image = UIImage(named: "emptyPng")
        blackSelectImage.image = UIImage(named: "emptyPng")
        purpleSelectImage.image = UIImage(named: "emptyPng")
        whiteSelectImage.image = UIImage(named: "emptyPng")

    }
    
    @IBAction func redTheme(_ sender: Any) {
        
        redSelectImage.image = UIImage(named: "circleTwo")

        yellowSelectImage.image = UIImage(named: "emptyPng")
        blueSelectImage.image = UIImage(named: "emptyPng")
        blackSelectImage.image = UIImage(named: "emptyPng")
        purpleSelectImage.image = UIImage(named: "emptyPng")
        whiteSelectImage.image = UIImage(named: "emptyPng")
    }
    
    @IBAction func blackTheme(_ sender: Any) {
        
        blackSelectImage.image = UIImage(named: "circleThree")

        yellowSelectImage.image = UIImage(named: "emptyPng")
        redSelectImage.image = UIImage(named: "emptyPng")
        blueSelectImage.image = UIImage(named: "emptyPng")
        purpleSelectImage.image = UIImage(named: "emptyPng")
        whiteSelectImage.image = UIImage(named: "emptyPng")
    }
    
    @IBAction func purpleTheme(_ sender: Any) {
        
        purpleSelectImage.image = UIImage(named: "circleTwo")

        yellowSelectImage.image = UIImage(named: "emptyPng")
        redSelectImage.image = UIImage(named: "emptyPng")
        blackSelectImage.image = UIImage(named: "emptyPng")
        blueSelectImage.image = UIImage(named: "emptyPng")
        whiteSelectImage.image = UIImage(named: "emptyPng")
    }
    
    @IBAction func whiteTheme(_ sender: Any) {
        
        whiteSelectImage.image = UIImage(named: "circleTwo")

        yellowSelectImage.image = UIImage(named: "emptyPng")
        redSelectImage.image = UIImage(named: "emptyPng")
        blackSelectImage.image = UIImage(named: "emptyPng")
        purpleSelectImage.image = UIImage(named: "emptyPng")
        blueSelectImage.image = UIImage(named: "emptyPng")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        URLFieldFive.delegate = self
        URLFieldTwo.delegate = self
        URLFieldOne.delegate = self
        URLFieldThree.delegate = self
        URLFieldFour.delegate = self
                
    }
    
    lazy var emptyDoubles: [String?] = [(URLFieldFive.text), (URLFieldFour.text), (URLFieldThree.text), (URLFieldTwo.text), (URLFieldOne.text)]
    
}
