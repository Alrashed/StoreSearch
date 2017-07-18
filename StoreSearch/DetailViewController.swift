//
//  DetailViewController.swift
//  StoreSearch
//
//  Created by Khalid Alrashed on 7/18/17.
//  Copyright © 2017 Khalid Alrashed. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var popupView: UIView!
    @IBOutlet weak var artworkImageview: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var kindLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var priceButton: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = .custom
        transitioningDelegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        popupView.layer.cornerRadius = 10
        view.tintColor = UIColor(red: 20/255, green: 160/255, blue: 160/255, alpha: 1)
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(close))
        gestureRecognizer.cancelsTouchesInView = false
        gestureRecognizer.delegate = self
        view.addGestureRecognizer(gestureRecognizer)
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

extension DetailViewController: UIGestureRecognizerDelegate {
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        return (touch.view === self.view)
    }
}
