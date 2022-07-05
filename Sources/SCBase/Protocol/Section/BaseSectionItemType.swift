//
//  BaseSectionItemType.swift
//  
//
//  Created by kim sunchul on 2022/06/04.
//

#if canImport(UIKit)

import UIKit

public protocol BaseSectionItemLayoutType {
  func size(collectionViewSize: CGSize) -> CGSize
}


public extension BaseSectionItemLayoutType {

  func size(collectionViewSize: CGSize) -> CGSize {
    return .zero
  }

}


public protocol BaseSectionItemType {
  var layout: BaseSectionItemLayoutType { get set }
  var identifierType: ReuseIdentifierType { get set }
}

#endif
