//
//  DetailViewController.swift
//  StoreSearch
//
//  Created by Khalid Alrashed on 7/18/17.
//  Copyright © 2017 Khalid Alrashed. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = .custom
        transitioningDelegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}

extension DetailViewController: UIViewControllerTransitioningDelegate {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return DimmingPresentationController(presentedViewController: presented, presenting: presenting)
    }
}
