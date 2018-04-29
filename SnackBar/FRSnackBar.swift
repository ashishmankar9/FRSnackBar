//
//  FRSnackBar.swift
//  SnackBar
//
//  Created by Ashish Mankar on 29/04/18.
//  Copyright © 2018 Ashish Mankar. All rights reserved.
//

import UIKit

struct FRConstant {
    
    static let kSnackBarHeight:CGFloat = 60
    
}

class FRSnackBar: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    func showSnackBar(displayMessage: String, alpha:CGFloat, backgroundColor: UIColor, textColor: UIColor){
        
        //let snackBar = UIView()
        
        if let window = UIApplication.shared.keyWindow {
        
            let snackBar = UIView()
            
            snackBar.backgroundColor = .clear
            
            window.addSubview(snackBar)
            
            snackBar.frame = CGRect(x: 0, y: UIScreen.main.bounds.height, width: UIScreen.main.bounds.width, height: FRConstant.kSnackBarHeight)
            
            let opacityView = UIView()
            opacityView.frame = CGRect(x: 0, y: 0, width: snackBar.frame.width, height: snackBar.frame.height)
            opacityView.backgroundColor = backgroundColor
            opacityView.alpha = alpha
            snackBar.addSubview(opacityView)
            
            let messageLabel = UILabel()
            messageLabel.frame = CGRect(x: 0, y: 0, width: snackBar.frame.size.width, height: snackBar.frame.size.height)
            messageLabel.textAlignment = .center
            messageLabel.text = displayMessage
            messageLabel.textColor = textColor
            
            snackBar.addSubview(messageLabel)
            
            let checkUI: UIView = UIView()
            checkUI.frame = snackBar.frame
            checkUI.backgroundColor = .orange
            
            snackBar.addSubview(checkUI)
            
            UIView.animate(withDuration: 0.5, animations: {
                
                snackBar.frame = CGRect(x: 0, y: snackBar.frame.origin.y - snackBar.frame.size.height, width: UIScreen.main.bounds.width, height: snackBar.frame.size.height)
                
            }, completion: { (finished) in
                
                UIView.animate(withDuration: 1, animations: {
                    
                    snackBar.frame = CGRect(x: 0, y: UIScreen.main.bounds.height, width: UIScreen.main.bounds.width, height: snackBar.frame.size.height)
                    
                }, completion: { (finished) in
                    
                    snackBar.removeFromSuperview()
                    
                })
                
            })
            
        }
        
    }
    
}
