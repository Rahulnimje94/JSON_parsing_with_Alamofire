//
//  ViewController.swift
//  Practice_JSONParsing
//
//  Created by Anand on 01/02/18.
//  Copyright © 2018 Rahul. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    var storyModel = [DataModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        getMethod()
        
    }

    func getMethod() {
        Alamofire.request("https://jsonplaceholder.typicode.com/posts")
            .responseJSON { response in
                switch response.result {
                case .success:
                    print(response.result.value as? [[String : Any]] ?? [])
                    self.getResponse(response: (response.result.value as? [[String : Any]])!)
                case .failure:
                    print("error")
                }
        }
    }
    
    func getResponse(response: [[String : Any]]) {
        for dic in response{
            self.storyModel.append(DataModel(dic))
        }
        print(self.storyModel)
        
    }
    
}

