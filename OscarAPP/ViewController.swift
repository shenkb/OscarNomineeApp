//
//  ViewController.swift
//  OscarAPP
//
//  Created by Kaining on 12/9/17.
//  Copyright © 2017 Kaining. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var resultsTextView: UITextView!
    
    let bestPicture = ["Arrival",
                       "Fences",
                       "Hacksaw Ridge",
                       "Hell or High Water",
                       "Hidden Figures",
                       "La La Land",
                       "Lion",
                       "Manchester by the Sea",
                       "Moonlight"]
    let bestActress = ["Isabelle Huppert - Elle",
                       "Ruth Negga - Loving",
                       "Natalie Portman - Jackie",
                       "Emma Stone - La La Land",
                       "Meryl Streep - Florence Foster Jenkins"]
    let bestActor = ["Casey Affleck - Manchester by the Sea", "Andrew Garfield - Hacksaw Ridge", "Ryan Gosling - La La Land", "Viggo Mortensen - Captain Fantastic", "Denzel Washington - Fences"]

    override func viewDidLoad() {
        super.viewDidLoad()
        resultsTextView.text = arrayToString(array: bestPicture)
    }
    
    func arrayToString(array: [String]) -> String {
        var newArray = ""
        for index in 0...array.count - 1 {
            newArray = newArray + array[index] + "\n"
        }
        return newArray
    }
    
    @IBAction func segmentedPressed(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            resultsTextView.text = arrayToString(array: bestPicture)
        case 1:
            resultsTextView.text = arrayToString(array: bestActress)
        case 2:
            resultsTextView.text = arrayToString(array: bestActor)
        default:
            resultsTextView.text = "Could not appear the right solution. Check again!"
        }
    }
    
}

