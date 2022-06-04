//
//  BaseSectionItem.swift
//  
//
//  Created by kim sunchul on 2022/06/04.
//

#if canImport(UIKit)

import UIKit

public protocol BaseSectionItemLayout {
  func size(collectionViewSize: CGSize) -> CGSize
}


public extension BaseSectionItemLayout {

  func size(collectionViewSize: CGSize) -> CGSize {
    return .zero
  }

}


public protocol BaseSectionItem: ReuseIdentifier {
  var layout: BaseSectionItemLayout { get set }
}

#endif
