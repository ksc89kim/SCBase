//
//  BaseControl.swift
//  
//
//  Created by kim sunchul on 2022/06/03.
//

#if canImport(UIKit)

import UIKit

open class BaseControl: UIControl, ViewLifeCycle, MakeLayout {

  // MARK: - Property

  open var didMakeConstraints: Bool = false

  // MARK: - Init

  public init() {
    defer {
      self.viewDidInit()
      self.makeLayout()
    }
    super.init(frame: .zero)
  }

  public override init(frame: CGRect) {
    defer {
      self.viewDidInit()
      self.makeLayout()
    }
    super.init(frame: frame)
  }

  public required init?(coder aDecoder: NSCoder) {
    fatalError()
  }

}

#endif
