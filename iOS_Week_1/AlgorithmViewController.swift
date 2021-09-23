//
//  AlgorithmViewController.swift
//  iOS_Week_1
//
//  Created by Erkut Bas on 19.09.2021.
//

import UIKit

class AlgorithmViewController: UIViewController {
    
    private var algorithmManager = AlgoruthmManager()
    
    convenience init(algorithmManager: AlgoruthmManager) {
        self.init()
        self.algorithmManager = algorithmManager
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func twoSumAction(_ sender: Any) {
         algorithmManager.twoSumTest()
    }
    
    @IBAction func isPalindromAction(_ sender: Any) {
        // call required test function
        print(algorithmManager.isPalindrome("A man, a plan, a canal: Panama"))
    }
    
    @IBAction func AnagramAction(_ sender: Any) {
        // call required test function
        print(algorithmManager.isAnagram("anagram", "nagaram"))
    }
    
    @IBAction func duplicationAction(_ sender: Any) {
        // call required test function
        print(algorithmManager.containsDuplicate([1,2,3,4,1,3,3,2,1,5]))
    }
    
    @IBAction func mergeArrayAction(_ sender: Any) {
        // call required test function
        var arr = [1,2,3,0,0,0]
        algorithmManager.merge(&arr, 3, [2,5,6], 3)
    }
    
    @IBAction func missingNumberAction(_ sender: Any) {
        // call required test function
    }
    
    @IBAction func arrayIntersectionAction(_ sender: Any) {
        // call required test function
        print(algorithmManager.intersect([1,2,2,1], [2,2]))
    }
    
}
