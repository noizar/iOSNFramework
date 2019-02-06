//
//  ViewController.swift
//  iOSNFramework
//
//  Created by Noizar on 01/30/2019.
//  Copyright (c) 2019 Noizar. All rights reserved.
//

import UIKit
import iOSNFramework

class ViewController: UIViewController{
    private var module:ExampleModule?

    override func viewDidLoad() {
        super.viewDidLoad()
        module = ExampleModule(viewStateDelegate: self, controller: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressIsLoading(_ sender: Any) {
        module?.test(type: 1)
    }
    
    @IBAction func pressSuccess(_ sender: Any) {
        module?.test(type: 2)
    }
    
    @IBAction func pressUpdate(_ sender: Any) {
        module?.test(type: 3)

    }
    
    @IBAction func pressFailure(_ sender: Any) {
        module?.test(type: 4)

    }
    
    func move()  {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let view = story.instantiateViewController(withIdentifier: "next")
        self.present(view, animated: true, completion: nil)
    }
}

extension ViewController: ViewStateDelegate{
    func onSuccess(data: Any?, tag: String, message: String) {
        print(message)
    }
    
    func onFailure(data: Any?, tag: String, message: String) {
        print(message)

    }
    
    func onUpdate(data: Any?, tag: String, message: String) {
        print(message)

    }
    
    func onLoading(isLoading: Bool, tag: String, message: String) {
        print(message)
    }
    
    
}

