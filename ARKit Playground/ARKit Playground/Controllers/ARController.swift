//
//  ARController.swift
//  ARKit Playground
//
//  Created by Reilly Freret on 4/30/19.
//  Copyright © 2019 Reilly Freret. All rights reserved.
//

import Foundation
import UIKit
import ARKit

class ARController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.interactivePopGestureRecognizer?.delegate = nil
        sceneView.delegate = self
        sceneView.showsStatistics = true
    }
    
    // Once again, disable Main Thread Checker scheme while debugging; won't run otherwise. Apple's gotta get its shit together
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let configuration = ARWorldTrackingConfiguration()
        sceneView.session.run(configuration)
    }
    
}
