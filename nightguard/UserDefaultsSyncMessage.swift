//
//  UserDefaultsSyncMessage.swift
//  nightguard
//
//  Created by Florian Preknya on 1/25/19.
//  Copyright © 2019 private. All rights reserved.
//

import Foundation

class UserDefaultSyncMessage: WatchMessage {
    
    var dictionary: [String : Any]
    
    required init?(dictionary: [String : Any]) {
        self.dictionary = dictionary
    }
    
    init() {
        var dictionary = [String: Any]()
        UserDefaultsValues.values(from: UserDefaultsValues.GroupNames.watchSync)?.forEach { value in
            dictionary[value.key] = value.anyValue
        }
        
        self.dictionary = dictionary
    }
}
