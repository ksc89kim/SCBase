//
//  ReuseIdentifier.swift
//  
//
//  Created by kim sunchul on 2022/06/03.
//

import Foundation

protocol ReuseIdentifier {
  static var reuseIdentifier: String { get }
  var reuseIdentifier: String { get }
}


extension ReuseIdentifier {

  static var reuseIdentifier: String {
    return String(describing: self)
  }

  var reuseIdentifier: String {
    return String(describing: Self.self)
  }

}
