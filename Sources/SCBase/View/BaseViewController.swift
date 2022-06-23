//
//  BaseViewController.swift
//  
//
//  Created by kim sunchul on 2022/06/01.
//


#if canImport(UIKit)

import UIKit

open class BaseViewController: UIViewController, MakeLayoutType {

  // MARK: - Property

  open var didMakeConstraints: Bool = false

  // MARK: - Life Cycle

  open override func viewDidLoad() {
    super.viewDidLoad()

    self.makeLayout()
  }

  // MARK: - Layout

  open func addSubViews() {
    // override point
  }

  open func makeConstraints() {
    // override point
  }
}

#endif
