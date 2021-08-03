//  Created by dasdom on 10.04.16.
//  Copyright © 2016 dasdom. All rights reserved.
//

import UIKit

class View: UIView {

  let button: UIButton
  
  override init(frame: CGRect) {
    button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Detail", for: .normal)
    button.addTarget(nil,
                     action: .showDetail,
                     for: .touchUpInside)
    
    super.init(frame: frame)
    
    backgroundColor = .white
    
    addSubview(button)
    button.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    button.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
  }
  
  required init?(coder aDecoder: NSCoder) { fatalError() }
}

private extension Selector {
  static let showDetail = #selector(DetailShowable.showDetail)
}

@objc protocol DetailShowable {
  @objc func showDetail()
}
