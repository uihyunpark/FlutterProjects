import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  //함수 기초
  //호출
  int a = 100;
  int b = 200;
  int c = _getBigger(a, b);
  print('_getBigger(a,b) = $c');

  //중복호출
  String str = "apple";
  String addBrace = addSuffix(addPrefix(str, '('), ')');
  print(addBrace);

  //선택인자
  int num1 = 100;
  int num2 = addNumber(100);
  int num3 = addNumber(100, 20);
  print('num1 = $num1, num2 = $num2, num3 = $num3');
  //이름 있는 인자
  String http1 = getHttp('http://naver.com', port: 80);
  String http2 = getHttp('http://localhost');

  print(http1);
  print(http2);

  //클래스 생성
  Game game1 = Game('Star Craft', 'Strategy');
  Game game2 = ArcadeGame('Strike 1945', 'Shooting', true);

  // 속성
  print('game1 is ${game1.name}');
  print('game2 is ${game2.name}');

  game1.genre = 'Realtime Strategy';

  //메서드 호출
  game1.play();
  game2.play();

  //리스트
  List<int> numbers = [100, 200, 300];
  List<int> evens = [2, 4, 6, 8, 10];

  List<String> planets = ['Earth', 'Jupiter', 'Mars', 'Saturn'];
  List<String> otherPlanets = ['Venus', 'Mercury', 'Neptune'];

  //리스트 출력

  print('numbers are $numbers');
  print('first number is ${numbers[0]}');
  print('last number is ${numbers[numbers.length - 1]}');

  for (int each in evens) {
    print('each even number is $each');
  }

  //리스트 활용
  List<int> evenFromZero = [0, ...evens];
  List<String> allPlanets = planets + otherPlanets;
  print('evenFromZero are $evenFromZero\n');
  print('All planets are $allPlanets');

  //set
  Set<int> naturalNumbers = {1, 2, 3, 4, 1};
  Set<String> ids = {"X-3", "X-2", "X-1"};

  //set 사용
  print('numbers are $naturalNumbers');
  print('ids are $ids');

  //print('first number is ${numbers[0]}'); 집합의 순서는 없기때문에 index 없음
  for (int each in naturalNumbers) {
    print('each number is $each');
  }

  //Set<int> integers = {0 } + naturalNumbers; // 리스트 처럼 + 없음

  //수학적 set 활용
  Set<int> numSet1 = {100, 200, 300};
  Set<int> numSet2 = {100, 200, 500, 1000};

  print('numSet1 union numSet2 = ${numSet1.union(numSet2)}');
  print('numSet1 intersection numSet2 = ${numSet1.intersection(numSet2)}');
  print('numSet1 difference numSet2 = ${numSet1.difference(numSet2)}');

  //Map
  Map<int, String> intMap = {0: 'AAA', 50: 'BBB', 100: 'CCC'};
  //사용법
  print('intMap is $intMap');
  print('intMap[50] : ${intMap[50]}');
  intMap.update(50, (val) => 'DDD');

  //사용자 정의 클래스
  Map<String, Student> students = {
    'jake': Student('Jake', 'Warton', 'jake@gmail.com'),
    'tony': Student('tony', 'Stark', 'tony@gmail.com'),
    'kent': Student('Kent', 'Beck', 'kent@gmail.com'),
  };

  String fullName =
      students['jake']!.firstName + ' ' + students['jake']!.lastName;
  print('Jake\'s fullname is $fullName');

  String email = students['kent']!.email;
  print('Kent\'s email is $email');

  //core 패키지
  //숫자 -> 문자 변환
  int n1 = 5000;
  double n2 = 360.1234;

  String num1Str = n1.toString();
  String num2Str = n2.toStringAsFixed(2);
  print('n1 to str is $num1Str');
  print('n2 to str is $num2Str');

  //문자 -> 숫자 변환
  List<String> inputs = ['-1', '1234', '32.25'];
  print(int.parse(inputs[0]));
  print(int.parse(inputs[1]));
  print(double.parse(inputs[2]));
  print(num.parse(inputs[2]));

  //입력받기
  stdout.write('Enter name? ');
  String? input = stdin.readLineSync();

  print('Hello,$input');

  //파일 생성
  File newFile = File('temp_file.txt');
  newFile.createSync();
  //파일읽기
  File poem = File('poem.txt');
  List<String> lines = poem.readAsLinesSync();
  for (String line in lines) {
    print(line);
  }

  //파일 쓰기
  File memoFile = File('diary.txt');
  String contents = """ 2021.09.26 플러터 공부중
  지금은 패키지 공부중입니다.
  """;
  memoFile.writeAsStringSync(contents);

  //math 패키지
  //최대최소
  List<int> nums = [100, 200, 300, 400, 250];
  int maxValue = max(nums[0], nums[1]);
  int minValue = min(nums[2], nums[3]);
  print('max(100,200) is $maxValue');
  print('min(300,400) is $minValue');

  //제곱근
  double sqaureRooted = sqrt(nums[4]);
  print('sqrt(250) is $sqaureRooted');

  //난수
  List<int> randomNumbers = _makeRandomNumbers(10, 8);
  print('random number(0..9) is $randomNumbers');

  //반올림
  double doubleValue = 500.51;
  int rounded = doubleValue.round();
  print('500.51 rounds $rounded');

  //Json 파싱
  String jsonStr = """
  {"basket" : {
  "apple" : 50,
  "banana" : 10,
  "grape" : 5
  }
  }
  """;

  Map json = jsonDecode(jsonStr);
  Map basket = json["basket"];
  int apples = basket["apple"];
  int bananas = basket["banana"];
  int grapes = basket["grape"];


  print("apples are $apples");
  print("bananas are $bananas");
  print('grapes are $grapes');

  //json 읽기
  Map basketMap = _readBasketJson('basket.json');
  print('grape was ${basketMap["grape"]}');

  //json 쓰기
  basketMap.update("grape", (val) => 99);
  File('basket.json').writeAsStringSync(jsonEncode(basketMap));

  Map updated = _readBasketJson('basket.json');
  int grapesNow = updated["grape"];
  print('now grapes are $grapesNow');

}
Map _readBasketJson(String fileName){
  String contents = File(fileName).readAsStringSync();
  print('contents : $contents');
  return jsonDecode(contents);

}
List<int> _makeRandomNumbers(int max, int counts) {
  Random rand = Random();
  List<int> res = List.filled(counts, 0); // 빈리스트 생성 오류로 인한 list 초기화
  for (int i = 0; i < counts; ++i) {
    res[i] = rand.nextInt(max);
  }
  return res;
}

class Student {
  String firstName;
  String lastName;
  String email;

  Student(this.firstName, this.lastName, this.email);
}

String getHttp(String url, {int port = 8080}) {
  return 'get http from $url, port = $port';
}

int addNumber(int num, [int inc = 1]) => num + inc;

String addPrefix(String str, String prefix) => '$prefix $str';

String addSuffix(String str, String suffix) => '$str $suffix';

int _getBigger(int a, int b) {
  if (a >= b) return a;
  return b;
}

class Game {
  String _name;
  String _genre;

  Game(this._name, this._genre);

  String get name => _name;

  set genre(g) => this._genre = g;

  void play() {
    print('play $_name game($_genre)!!');
  }
}

class ArcadeGame extends Game {
  bool _joystickSupport = false;

  ArcadeGame(String name, String genre, this._joystickSupport)
      : super(name, genre);

  @override
  void play() {
    print('$name supports joystick? $_joystickSupport');
  }
}
