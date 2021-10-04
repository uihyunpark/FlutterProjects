import '../day2/simple_atm_v1.dart';

void main() {
  //한줄 주석
  /*
  여러줄 주석
   */

  //변수

  int num1 = 1000;
  double num2 = 3.14;
  num num3 = 100;
  num num4 = 3.14;
  //num 은 정수, 실수 가능

  double sum1 = num1 + num2;
  //int sum2 = num1 + num2; // int형과 double 형 연산은 불가 컴파일 오류

  print(sum1);

  num sum3 = num3 * num4;
  print(sum3); // num형은 int형 double 형 연산 가능

  //문자열

  String text = 'Carpe diem, quam minmum credula postero';
  String myName = 'uihyun';
  String hello = 'Hello, ${myName}';
  print(text.substring(0, 10)); // substring 문자열 자르기 인덱스 0~10
  print(hello);

  String str1 = 'flutter';
  String str2 = 'google';
  String plus = str1 + ' ' + str2;
  int len = plus.length;
  print(plus + '=> length : $len');

  //bool 형
  bool a = true;
  bool b = false;
  bool chk = a && b;
  print('chk is $chk');

  //var 형
  //var 변수는 다른 타입의 변수 할당 불가
  var strLen = len;
  var text2 = str1;
  var check = chk;
  var variable = text2;
  print('$strLen,$text2, $check, $variable');

  //연산자
  int n1 = 99;
  n1 += 1; //+= -= *= /= %= ??=
  print('n1 = $n1');

  //관계
  const double PIE = 3.14;
  if (PIE >= 3) {
    print('PIE는 3 이상이다');
  }

  //논리
  const String PASSWORD = '1234';
  String _input = '12345';
  if (_input == PASSWORD) {
    print('로그인 성공');
  } else {
    print('비밀 번호를 다시 입력하세요');
  }

  //삼항 연사자
  String _nextInput = '1234';
  String _loginResult = PASSWORD == _nextInput ? '로그인 성공' : '비밀번호를 다시 입력하세요';
  print(_loginResult);

  //type test 연산자
  var account = Account('111-222-33-01', 50000);
  if (account is Account) {
    String name = account.accountNumber;
    int amount = (account as Account).balacne;
    print('account name is $name , amount is $amount');
  }

  //if null
  Null loginAccount = null; // 실습용 String 변수 null 초기화 불가하므로 null 인스턴스로 변경
  String playerName = loginAccount ?? 'Guest';

  print('Login Player is $playerName');

  //캐스케이드 연산자
  Account account2 = Account('222-333-33-01', 60000)
    ..deposit(5000)
    ..transfer(account, 10000)
    ..withdraw(5000);

  print('account 2 balnce is ${account2.balacne}');

  //조건적 멤버 접근 연산자,-> null 일경우 ?. 연산자로 처리가능 예제에서는 처리를 위해 String 처리
  Account account3 = Account('null', 6000);
  print('account 3 is ${account3.accountNumber}');

  //if 문
  int even = 78;
  int odd = 99;

  if (even % 2 == 0) {
    print('$even is even number');
  }
  if (odd % 2 == 0) {
    print('$odd is not even number');
  }
  else {
    print('$odd is odd number');
  }

  // for 문
  List<String> fruits = ['Apple', 'Banana', 'Kiwi'];
  for (String fruit in fruits) {
    print('I like $fruit');
  }

  //while 문
  List<num> numbers = [100, 200, -1];
  int i = 0;
  while (numbers[i] > 0) {
    print('${numbers[i]} is positive');
    i += 1;
  }

  //do-while 문
  int j = 5;
  do {
    print(j);
    j--;
  } while (j > 0);

  //switch/case 문

  List<num> httpCodes = [200, 401, 500];
  for (num http in httpCodes) {
    switch (http) {
      case 200:
        print('200 is OK');
        break;
      case 401:
        print('400 is Unautherized');
        break;
      case 500:
        print('500 is Internal Server Error');
        break;
    }
  }

  //final
  final String name = 'uihyun';
  //name ='Steve'; final 상수 선언 이후 변경 시도시 컴파일 에러

  //const
  const int STUDENT_MAX = 100;
  const double PIE8 = 3.14159326;
  print('$name, $STUDENT_MAX,$PIE8');
  //static
  print('Queue initial capacity is ${Queue.initialCapacity}');
}
  class Queue{
    static const initialCapacity = 12;
  }

