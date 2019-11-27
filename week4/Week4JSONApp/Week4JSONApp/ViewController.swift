//
//  ViewController.swift
//  Week4JSONApp
//
//  Created by Kai-Ta Hsieh on 2019/11/27.
//  Copyright © 2019 Charles Hsieh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var stationIDLabel: UILabel!
  @IBOutlet weak var stationNameLabel: UILabel!
  @IBOutlet weak var addressLabel: UILabel!
  
  var station: Station?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json")!
    
    let session = URLSession(configuration: .default)
    
    let task = session.dataTask(with: url) {
      (data, response, error) in
      if let error = error {
        print("Error: \(error)")
      } else {
        let decoder = JSONDecoder()
        if let data = data, let station = try? decoder.decode(Station.self, from: data) {
          OperationQueue.main.addOperation {
            self.stationIDLabel.text = station.stationID
            self.stationNameLabel.text = station.stationName
            self.addressLabel.text = station.stationAddress
          }
        }
      }
    }
    
    task.resume()
    
  } // viewDidLoad()
  
} // ViewController
