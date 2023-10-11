//
//  BaseCollectionViewCell.swift
//  
//
//  Created by kim sunchul on 2022/06/04.
//


#if canImport(UIKit)

import UIKit

open class BaseCollectionViewCell: UICollectionViewListCell, ViewLifeCycling, MakeLayoutType, ReuseIdentifierType, BaseSectionConfigurable {

  // MARK: - Property

  override open class var requiresConstraintBasedLayout: Bool {
    return true
  }
  
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

  // MARK: - Life Cycle

  open func viewDidInit() {
    // override point
  }

  // MARK: - Layout

  open func addSubViews() {
    // override point
  }

  open func makeConstraints() {
    // override point
  }

  // MARK: - Configure

  open func configure(item: BaseSectionItemType) {
    // override point
  }
}

#endif

