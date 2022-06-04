//
//  BaseSectionFooter.swift
//  
//
//  Created by kim sunchul on 2022/06/04.
//

#if canImport(UIKit)

import UIKit

public protocol BaseSectionFooterLayout {
  func size(collectionViewSize: CGSize) -> CGSize
}


public extension BaseSectionFooterLayout {

  func size(collectionViewSize: CGSize) -> CGSize {
    return .zero
  }
  
}


public protocol BaseSectionFooter: BaseSectionFooterLayout {

}

#endif
