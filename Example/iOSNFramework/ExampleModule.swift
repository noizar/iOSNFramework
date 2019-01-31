//
//  ExampleModule.swift
//  iOSNFramework_Example
//
//  Created by noizar on 30/01/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import iOSNFramework

protocol ExampleDelegate {
    func test(type:Int)
}

class ExampleModule: ModuleDelegate,ExampleDelegate {
    let tagTesting = "testing"
    
    override init(viewStateDelegate: ViewStateDelegate) {
        super.init(viewStateDelegate: viewStateDelegate)
    }
    
    func test(type:Int) {
        network.networkConfiguration(tag: tagTesting)
        switch type  {
        case 1:
            self.network.onLoading(isLoading: true, message: "testing Loading")
        case 2:
            self.network.onSucess(data: "", message: "testing Sucess")
        case 3:
            self.network.onUpdate(data: "", message: "testing Update")
        case 4:
            self.network.onFailure(data: "", message: "testing Failure")
        default:
            print("error")
        }
    }
    
}
