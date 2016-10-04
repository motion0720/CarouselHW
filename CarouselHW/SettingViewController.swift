//
//  SettingViewController.swift
//  CarouselHW
//
//  Created by SHEN, MENGNAN on 10/3/16.
//  Copyright © 2016 SHEN, MENGNAN. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    @IBOutlet weak var settingScrollView: UIScrollView!
    @IBOutlet weak var settingImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingScrollView.contentSize = settingImageView.frame.size

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressX(_ sender: AnyObject) {
        
        navigationController!.popViewController(animated: true)
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
