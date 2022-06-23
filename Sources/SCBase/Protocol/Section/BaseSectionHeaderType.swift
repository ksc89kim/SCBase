//
//  BaseSectionHeader.swift
//  
//
//  Created by kim sunchul on 2022/06/04.
//

#if canImport(UIKit)

import UIKit

public protocol BaseSectionHeaderLayoutType {
  func size(collectionViewSize: CGSize) -> CGSize
}


public extension BaseSectionHeaderLayoutType {

  func size(collectionViewSize: CGSize) -> CGSize {
    return .zero
  }
  
}


public protocol BaseSectionHeaderType {
  var layout: BaseSectionHeaderLayoutType { get set }
}

#endif
