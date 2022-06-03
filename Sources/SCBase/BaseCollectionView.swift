//
//  BaseCollectionView.swift
//  
//
//  Created by kim sunchul on 2022/06/03.
//

#if canImport(UIKit)

import UIKit

open class BaseCollectionView: UICollectionView, ViewLifeCycle, MakeLayout {

  // MARK: - Property

  open var didMakeConstraints: Bool = false

  // MARK: - Init

  public override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
    defer {
      self.viewDidInit()
      self.makeLayout()
    }
    super.init(frame: frame, collectionViewLayout: layout)
  }

  public required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

#endif
