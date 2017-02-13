//
//  DataServer.swift
//  TaskScheduler
//
//  Created by Andrew Bihl on 2/9/17.
//  Copyright © 2017 Andrew Bihl. All rights reserved.
//

import UIKit
import GoogleAPIClient
import GTMOAuth2

class DataServer: NSObject {
    static let defaultServer = DataServer()
    
    override private init() {
        super.init()
    }
    
    public static func getDefaultServer()->(DataServer){
        return defaultServer
    }
    
    func getTasks()->(Array<String>){
        return ["Do laundry", "Walk dog", "Fuck your bitch", "Sometimes we may have a really long task. Let's see what happens if we test it out."]
    }

}
