//
//  File.swift
//  
//
//  Created by kim sunchul on 2022/06/01.
//

import Foundation

public protocol MakeLayout: AnyObject {
  var didMakeConstraints: Bool { get set }

  func addSubViews()
  func makeConstraintsIfNeeded()
  func makeConstraints()
}


public extension MakeLayout {

  func makeLayout() {
    self.addSubViews()
    self.makeConstraintsIfNeeded()
  }

  func makeConstraintsIfNeeded() {
    if !self.didMakeConstraints {
      self.makeConstraints()
      self.didMakeConstraints = true
    }
  }

  func addSubViews() {
    // override point
  }

  func makeConstraints() {
    // override point
  }
  
}
