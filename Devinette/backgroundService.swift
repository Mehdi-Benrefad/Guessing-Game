//
//  backgroundService.swift
//  Devinette
//
//  Created by Mehdi Benrefad on 21/04/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import Foundation

class backgroundService{
    
    static var color : String {
    
        get{
            return UserDefaults.standard.string(forKey: "color") ?? "white"
        }
        
        set{
            UserDefaults.standard.set(newValue, forKey: "color")
        }
    }
}
