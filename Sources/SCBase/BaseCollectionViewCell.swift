//
//  BaseCollectionViewCell.swift
//  
//
//  Created by kim sunchul on 2022/06/04.
//


#if canImport(UIKit)

import UIKit

open class BaseCollectionViewCell: UICollectionViewCell, ViewLifeCycle, MakeLayout, ReuseIdentifier {

  // MARK: - Property

  open var didMakeConstraints: Bool = false

  public static var reuseIdentifier: String {
    return String(describing: Self.self)
  }

  // MARK: - Init

  public init() {
    defer {
      self.viewDidInit()
      self.makeLayout()
    }
    super.init(frame: .zero)
  }

  override init(frame: CGRect) {
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

