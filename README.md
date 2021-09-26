# myflutter1

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


-day1-flutter : 플러터 개발환경 준비 및 프로젝트 테스트

-day2-flutter : 플러터 기본 위젯 Stateless, Stateful, Lifecycle 공부


--1. 기본 위젯 2가지
         -StatelessWidget | 화면 표시용 위젯으로 화면에 표시된 이후에는 이벤트, 액션으로 내용을 변경할 수 없다.
         -StatefulWidget | 화면의 변경된 내용 표현을 위한 위젯, StatefulWidgetState클래스를 통해 변동부를 표시할 수 있다. 
         -StatefulWidgetState | 사용자의 이벤트, 액션을 통해 변경된 사항을 라이프사이클에 따라 화면에 나타낸다.
         
--2. 라이프사이클
         -이해 | StatefulWidget이 {생성-> 화면에 부착-> 초기화 -> 표시 -> 완전 제거 -> 탈착 /초기화, 의존성변경, 변경, 갱신, 제거/}
                같은 State에 의해 이벤트가 순차적으로 호출되어 실행됨. 즉, 생명주기를 통해 위젯의 변동부(생성-변경-제거)를 표현  
                
-day3-flutter : 플러터 자료형, 조건문, 반복문, 객체와 클래스 등
