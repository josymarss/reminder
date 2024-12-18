//
//  LoginBottomSheetController.swift
//  Remnder
//
//  Created by Josymarss on 14/12/24.
//

import Foundation
import UIKit

class LoginBottomSheetCongtroller: UIViewController {
    let loginBottomSweetView = LoginBottomSheetView()
    var hanldeAreaHeight: CGFloat = 50.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
        setUpGestureHandler()
        panGestureHandler()
    }
    
    private func setUp() {
        self.view.addSubview(loginBottomSweetView)
        loginBottomSweetView.translatesAutoresizingMaskIntoConstraints = false
        
        setConstraints()
    }
    
    private func setUpGestureHandler() {
        
    }
    
    private func panGestureHandler() {
        
    }
    
    func animateShow(completion: (() -> Void)? = nil) {
        
        self.view.layoutIfNeeded()
        loginBottomSweetView.transform = CGAffineTransform(translationX: 0, y:loginBottomSweetView.frame.height)
        
        UIView.animate(withDuration: 0.3, animations: {
            self.loginBottomSweetView.transform = .identity
            self.view.layoutIfNeeded()
        }) { _ in
            completion?()
        }
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            loginBottomSweetView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            loginBottomSweetView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            loginBottomSweetView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
        
        let heightConstraint = loginBottomSweetView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
    }
    
}
