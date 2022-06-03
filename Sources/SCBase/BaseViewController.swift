//
//  BaseViewController.swift
//  
//
//  Created by kim sunchul on 2022/06/01.
//


#if canImport(UIKit)

import UIKit

open class BaseViewController: UIViewController, ViewLifeCycle, MakeLayout {

  // MARK: - Property

  open var didMakeConstraints: Bool = false

  // MARK: - Init

  init() {
    defer {
      self.viewDidInit()
      self.makeLayout()
    }
    super.init(nibName: nil, bundle: nil)
  }

  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    defer {
      self.viewDidInit()
      self.makeLayout()
    }
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
  }

  required public init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}

#endif
