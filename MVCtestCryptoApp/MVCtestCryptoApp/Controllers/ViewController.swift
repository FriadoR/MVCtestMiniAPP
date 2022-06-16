//
//  ViewController.swift
//  MVCtestCryptoApp
//
//  Created by Сергей Саченко on 16.06.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tickerLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    
    private var count = 0
    private var testData: [Crypto] = []
    private let randomCount = RandomCount()

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonResult()
        let model = Crypto.testData
        setupData(with: model)
        setupInitialState()
    }

    @IBAction func actionButton(_ sender: Any) {
        displayData(i: randomCount.getRandomCount(data: testData))
    }
    
    func buttonResult() {
        editButton.layer.cornerRadius = 10
    }
    
    func setupInitialState() {
        displayData(i: count)
    }
    
    func setupData(with testData: ([Crypto])) {
        self.testData = testData
    }
    
    func displayData(i: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            nameLabel.text = testData[i].name
            tickerLabel.text = testData[i].ticker
            valueLabel.text = String(testData[i].value)
        } else {
            print("Sorry, no data")
        }
    }
}

