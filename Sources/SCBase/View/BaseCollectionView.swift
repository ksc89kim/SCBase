//
//  BaseCollectionView.swift
//  
//
//  Created by kim sunchul on 2022/06/03.
//

#if canImport(UIKit)

import UIKit

open class BaseCollectionView: UICollectionView, ViewLifeCycle, MakeLayout {

  // MARK: - Property

  open var didMakeConstraints: Bool = false

  // MARK: - Init

  public override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
    defer {
      self.viewDidInit()
      self.makeLayout()
    }
    super.init(frame: frame, collectionViewLayout: layout)
  }

  public required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - Life Cycle

  open func viewDidInit() {
    // override point
  }

  // MARK: - Layout

  open func addSubViews() {
    // override point
  }

  open func makeConstraints() {
    // override point
  }
  
  // MARK: - Dequeue

  open func dequeueReusableCell<Cell: ReuseIdentifier & UICollectionViewCell>(
    _ type: Cell.Type,
    for indexPath: IndexPath
  ) -> Cell {
    guard let cell = self.dequeueReusableCell(
      withReuseIdentifier: type.reuseIdentifier,
      for: indexPath
    ) as? Cell else {
      let message = "dequeue error (\(String(describing: type)))"
      fatalError(message)
    }
    return cell
  }

  open func dequeueReusableView<View: ReuseIdentifier & UICollectionReusableView>(
    _ type: View.Type,
    kind: String,
    for indexPath: IndexPath
  ) -> View {
    guard let view = self.dequeueReusableSupplementaryView(
      ofKind: kind,
      withReuseIdentifier: type.reuseIdentifier,
      for: indexPath
    ) as? View else {
      let message = "dequeue error (\(String(describing: type)))"
      fatalError(message)
    }
    return view
  }
}

#endif
