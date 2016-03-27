//
//  GithubConfigsGetter.swift
//  OctoPodium
//
//  Created by Nuno Gonçalves on 26/03/16.
//  Copyright © 2016 Nuno Gonçalves. All rights reserved.
//

struct AppConfigurations {

    struct GithubConfigurations {
        
        static let instance = GithubConfigurations()
        
        let clientId: String
        let clientSecret: String
        
        private init() {
            let pListPath = NSBundle.mainBundle().pathForResource("Github", ofType: "plist")
            let content = NSDictionary(contentsOfFile: pListPath!)
            clientId = content!["ClientId"] as! String
            clientSecret = content!["ClientSecret"] as! String
        }
        
    }
}