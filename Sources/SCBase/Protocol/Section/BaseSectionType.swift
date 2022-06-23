//
//  BaseSectionType.swift
//  
//
//  Created by kim sunchul on 2022/06/04.
//

#if canImport(UIKit)

import UIKit

public protocol BaseSectionLayoutType {
  func minimumLineSpacing() -> CGFloat
  func minimumInteritemSpacing() -> CGFloat
  func insetForSection() -> UIEdgeInsets
}


public extension BaseSectionLayoutType {

  func minimumLineSpacing() -> CGFloat {
    return .zero
  }

  func minimumInteritemSpacing() -> CGFloat {
    return .zero
  }

  func insetForSection() -> UIEdgeInsets {
    return .zero
  }

}


public protocol BaseSectionType {
  var header: BaseSectionHeaderType? { get set }
  var footer: BaseSectionFooterType? { get set }
  var items: [BaseSectionItemType] { get set }
  var layout: BaseSectionLayoutType { get set }
}

#endif
