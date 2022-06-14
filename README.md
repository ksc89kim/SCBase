# SCBase

- 상속으로 기본 클래스를 쉽게 사용하기 위한 기본 컴포넌트입니다.
- 추후, snippet과 연동하여 사용할 계획이 있는 컴포넌트입니다.

## UIKit
```
UIViewController -> BaseViewController
UIView -> BaseView
UIControl -> BaseControl
UICollectionView -> BaseCollectionView
UICollectionViewCell -> BaseCollectionViewCell
UICollectionReusableView -> BaseCollectionReusableView
```

## Protocol

```swift
public protocol MakeLayout: AnyObject {
  var didMakeConstraints: Bool { get set }

  func addSubViews()
  func makeConstraintsIfNeeded()
  func makeConstraints()
}
```
- MakeLayout은 Layout 구성을 코드로 할 경우 가독성과 의존성 분리를 위하여 사용하고 싶을때, 채택합니다.
- addSubViews() : 자식 뷰들을 추가할때 사용합니다.
- makeConstraints() : autolayout constraint를 설정할때 사용합니다.


```swift
public protocol ReuseIdentifier {
  static var reuseIdentifier: String { get }
  var reuseIdentifier: String { get }
}
```
- ReuseIdentifier은 cell 또는 header, footer에서 identifier로 사용하고 싶을때 채택합니다.


```swift
public protocol ViewLifeCycle {
  func viewDidInit()
}
```
- ViewLifeCycle은 view와 관련된 시점을 알고 싶을때 채택합니다.


```swift
public protocol BaseSectionLayout {
  func minimumLineSpacing() -> CGFloat
  func minimumInteritemSpacing() -> CGFloat
  func insetForSection() -> UIEdgeInsets
}

public protocol BaseSection {
  var header: BaseSectionHeader? { get set }
  var footer: BaseSectionFooter? { get set }
  var items: [BaseSectionItem] { get set }
  var layout: BaseSectionLayout { get set }
}

public protocol BaseSectionFooterLayout {
  func size(collectionViewSize: CGSize) -> CGSize
}

public protocol BaseSectionFooter {
  var layout: BaseSectionFooterLayout { get set }
}

public protocol BaseSectionHeaderLayout {
  func size(collectionViewSize: CGSize) -> CGSize
}

public protocol BaseSectionHeader {
  var layout: BaseSectionHeaderLayout { get set }
}

public protocol BaseSectionItemLayout {
  func size(collectionViewSize: CGSize) -> CGSize
}

public protocol BaseSectionItem: ReuseIdentifier {
  var layout: BaseSectionItemLayout { get set }
}

```
- BaseSection, BaseSectionHeader, BaseSectionFooter, BaseSectionItem는 컬렉션 뷰의 섹션 데이터 구조 형태와 동일하게 맞추고, 해당 프로토콜로 다형성을 사용하고 싶을때 채택합니다.
- Layout 형태의 프로토콜은 UICollectionViewDelegateFlowLayout로 커스텀하게 사용하고 싶을때 채택을 진행합니다.

## Snippet
```
cp -r SCBase/Snippet ~/Library/Developer/Xcode/UserData/CodeSnippets
```
- 손쉽게 소스코드를 사용하기 위한 snippet입니다.
- snippet 코드에 있는 영역들은 복사해서 사용합니다.
- 단축어는 sc_ 로 시작합니다.