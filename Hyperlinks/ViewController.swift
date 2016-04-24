//
//  ViewController.swift
//  Hyperlinks
//
//  Created by Jure Zove on 24/04/16.
//  Copyright © 2016 Candy Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var textView: UITextView!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let plainString = "I ❤️ Candy Code"
    let attributedString = NSMutableAttributedString(string: plainString)
    let range = (plainString as NSString).rangeOfString("Candy Code")

    // Important: if you want to open other URLs, not only http, it's important to set a NSURL here, not just a String
    attributedString.addAttributes([NSLinkAttributeName: NSURL(string: "http://www.candycode.io/")!], range: range)

    // Optional: let's set a bigger font
    attributedString.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(18)], range: NSMakeRange(0, attributedString.length))

    textView.attributedText = attributedString
    textView.editable = false
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}
