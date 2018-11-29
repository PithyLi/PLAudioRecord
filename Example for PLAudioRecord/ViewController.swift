//
//  ViewController.swift
//  PLAudioRecord
//
//  Created by Jayz Zz on 2018/11/29.
//  Copyright © 2018 Pithy'L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        PLAudioRecord.shared.delegate = self
    }

    @IBAction func startAction(_ sender: Any) {
        PLAudioRecord.shared.record()
    }

    @IBAction func stopAction(_ sender: Any) {
        PLAudioRecord.shared.stop()
    }
}

extension ViewController: PLAudioRecordPortocol {
    func record(_ record: PLAudioRecord, volume: Float) {
        print("volue: \(volume)")
    }
}
