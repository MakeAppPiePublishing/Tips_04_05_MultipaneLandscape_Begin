//
//  ViewController.swift
//  Multipane rotation - Demonstrates landscape layout on iPad
//
//
//  A exercise file for iOS Development Tips Weekly
//  by Steven Lipton (C)2018, All rights reserved
//  For videos go to http://bit.ly/TipsLinkedInLearning
//  For code go to http://bit.ly/AppPieGithub
//
import UIKit

class ViewController: UIViewController {
//Outlets
    @IBOutlet weak var pizzaImageView: UIImageView!
    @IBOutlet weak var rootStackView: UIStackView!

// Computed properties for convenience
    var isRegularHeight:Bool{
        return view.traitCollection.verticalSizeClass == .regular
    }
    var isCompactWidth:Bool{
        return view.traitCollection.horizontalSizeClass == .compact
    }
    
// The layout methods
    func landscapeLayout(){
        rootStackView.axis = .horizontal
        pizzaImageView.image = UIImage(named:"Pizza Landscape")
    }
    
    func portraitLayout(){
        rootStackView.axis = .vertical
        pizzaImageView.image = UIImage(named: "Pizza Portrait")
    }

    override func viewWillLayoutSubviews() {
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}
