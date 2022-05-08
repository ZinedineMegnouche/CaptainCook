//
//  ViewController.swift
//  CaptainCook
//
//  Created by Zinedine Megnouche on 29/03/2022.
//

import UIKit
import AppTrackingTransparency

class ViewController: UIViewController {
  override func viewDidLoad() {
      super.viewDidLoad()
      

      // Do any additional setup after loading the view, typically from a nib.

      let button = UIButton(type: .roundedRect)
      button.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
      button.setTitle("Test Crash", for: [])
      button.addTarget(self, action: #selector(self.crashButtonTapped(_:)), for: .touchUpInside)
      view.addSubview(button)
  }
    /*override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        ATTrackingManager.requestTrackingAuthorization { status in
            print("status \(status)")
        }
    }*/

  @IBAction func crashButtonTapped(_ sender: AnyObject) {
      let numbers = [0]
      let _ = numbers[1]
  }
}
