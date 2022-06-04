//
//  BaseSection.swift
//  
//
//  Created by kim sunchul on 2022/06/04.
//

#if canImport(UIKit)

import UIKit

public protocol BaseSectionLayout {
  func minimumLineSpacing() -> CGFloat
  func minimumInteritemSpacing() -> CGFloat
  func insetForSection() -> UIEdgeInsets
}


public extension BaseSectionLayout {

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


public protocol BaseSection {
  var header: BaseSectionHeader? { get set }
  var footer: BaseSectionFooter? { get set }
  var items: [BaseSectionItem] { get set }
  var layout: BaseSectionLayout { get set }
}

#endif
