//
//  BaseSectionHeader.swift
//  
//
//  Created by kim sunchul on 2022/06/04.
//

#if canImport(UIKit)

import UIKit

public protocol BaseSectionHeaderLayout {
  func size(collectionViewSize: CGSize) -> CGSize
}


public extension BaseSectionHeaderLayout {

  func size(collectionViewSize: CGSize) -> CGSize {
    return .zero
  }
  
}


public protocol BaseSectionHeader {
  var layout: BaseSectionHeaderLayout { get set }
}

#endif
