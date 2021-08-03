//  Created by dasdom on 10.04.16.
//  Copyright © 2016 dasdom. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DetailShowable {

  override func loadView() {
    view = View()
  }
  
  func showDetail() {
    navigationController?.pushViewController(DetailViewController(), animated: true)
  }
}

