//
//  ViewController.swift
//  Api_JSON_data
//
//  Created by Sudharsan Ravikumar on 11/08/21.
// c9258cc7197f32df92c0bcf8367b4cc0
//

import UIKit

class ViewController: UIViewController {
    var window: UIWindow?
    @IBOutlet weak var toMars: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        ApiInterface.getWeatherData()
        print("here")
    }
    
    
    @IBAction func onClickToMars(_ sender: Any) {
        print("onClickToMars")
        let objAppDelegate = UIApplication.shared.delegate as? AppDelegate
        objAppDelegate?.travelToMars(shouldTravel: true)
    }
    

}

