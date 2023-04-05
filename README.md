# swift-drawingapp
세번째 프로젝트 - 드로잉 앱

- [학습용 체크리스트](https://gist.github.com/noah0316/5592c86a6bf847d6c068d05ca3f1f1b9#file-studychecklist-md)

## 업무용 체크리스트

**🧩 step3-1**
- [x] 프로젝트 생성
    - [x] iOS 기본 app 템플릿 이용하여 프로젝트 생성
    - [x] 프로젝트 이름 DrawingApp으로 지정
    - [x] Devices 항목 iPad로 변경
    - [x] Device Orientation Landscape Left, Landscape Right만 지정
- [x] 모델 설계
    - [x] 사각형 뷰를 표현하는 모델 설계
    - [x] Core Graphics와 UIKit에 독립적인 타입으로 설계
    - [x] 모델 생성부분 캡슐화
- [x] 객체 생성
    - [x] 로그 함수 이용하여 생성결과 출력
    - [x] CustomStringConvetible 프로토콜 채택 및 구현

**🧩 step3-2 **
- [ ] Plane 구조체 구현
    - [ ] Plane 구조체 설계
    - [ ] 유닛 테스트 추가
- [ ] 속성을 조절할 수 있는 컨트롤 배치

## ⚒️ 작업 내용

### 🧩 step3-1

#### 💾 모델 설계
<img src="https://user-images.githubusercontent.com/63908856/228713723-f718c164-3b69-46a5-bc99-63acf833a8c3.png">

1️⃣ view를 표현하는 모델을 설계하였습니다.  
먼저 view를 표현하기 위해 핵심적인 속성이라고 생각한 position과 size를 포함하는 frame, color, alpha를 ViewRepresentable protocol로 추상화 하였습니다.  

2️⃣ 생성과 사용을 분리하기 위해 고민하였습니다.

ViewRepresentable을 생성하는 ViewRepresentableFactory protocol을 만들었습니다.

사각형 뷰를 표현하는 모델인 Rectangle 객체를 생성하기 위해 ViewRepresetableFactory protocol을 채택한 RectangleFactory를 만들었습니다.

ViewRepresentable을 생성하기 위해 필요한 연관 객체를 생성하는 ViewIngriedientFactory protocol을 만들었습니다.

    - 랜덤한 사각형 뷰를 생성하기 위해 ViewIngriedientFactory protocol을 채택한 RandomViewIngriedientFactory를 만들었습니다.
    - 랜덤한 identifier를 생성하기 위해 IdentifierFactory protocol을 채택한 RandomIdentifierFactory를 만들었습니다.

Rectangle 객체를 생성하기 위해 필요한 속성을 만들기 위해 RectangleFactory에서 identifierFactory와 viewIngriedientFactory를 합성하여 사용하였습니다.

Rectangle객체를 사용하는 ViewController의 변경의 영향을 최소화 하기 위해 ViewController가 구체타입인 Rectangle이 아닌 추상타입인 ViewRepresentable을 의존하도록 설계 하였습니다.

3️⃣ 변경의 영향을 최소화 하기 위해 고민하였습니다.

<img src="https://user-images.githubusercontent.com/63908856/228713739-e7628360-1358-4c40-bdf1-0f0f89438e11.png">

로그 함수를 사용해야하는 요구사항을 만족하기 위해 Loggable protocol을 만들고, Loggable protocol을 채택한 시스템로그 객체를 만들어 ViewController가 구체타입이 아닌 protocol에 의존하게 하여 교환해서 사용할 수 있도록 하였습니다.

**📌 작업 결과**

<img src="https://user-images.githubusercontent.com/63908856/228735544-934ee364-b7de-4090-af20-0c01f77f2ac5.png">


