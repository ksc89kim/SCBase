//
//  BaseSectionConfigurable.swift
//  
//
//  Created by kim sunchul on 2022/06/04.
//

#if canImport(UIKit)

import UIKit

public protocol BaseSectionConfigurable {
  func configure(item: BaseSectionItemType)
}

#endif
