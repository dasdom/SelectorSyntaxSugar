//
//  View.swift
//  SelectorSyntaxSugar
//
//  Created by dasdom on 10.04.16.
//  Copyright © 2016 dasdom. All rights reserved.
//

import UIKit

class View: UIView {

  let button: UIButton
  
  override init(frame: CGRect) {
    button = UIButton(type: .System)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Detail", forState: .Normal)
    button.addTarget(nil,
                     action: .showDetail,
                     forControlEvents: .TouchUpInside)
    
    super.init(frame: frame)
    
    backgroundColor = UIColor.whiteColor()
    
    addSubview(button)
    button.centerXAnchor.constraintEqualToAnchor(centerXAnchor).active = true
    button.centerYAnchor.constraintEqualToAnchor(centerYAnchor).active = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

private extension Selector {
  static let showDetail = #selector(DetailShowable.showDetail)
}

@objc protocol DetailShowable {
  @objc func showDetail()
}
