//
//  BaseSectionFooterType.swift
//  
//
//  Created by kim sunchul on 2022/06/04.
//

#if canImport(UIKit)

import UIKit

public protocol BaseSectionFooterLayoutType {
  func size(collectionViewSize: CGSize) -> CGSize
}


public extension BaseSectionFooterLayoutType {

  func size(collectionViewSize: CGSize) -> CGSize {
    return .zero
  }
  
}


public protocol BaseSectionFooterType {
  var layout: BaseSectionFooterLayoutType { get set }
}

#endif
