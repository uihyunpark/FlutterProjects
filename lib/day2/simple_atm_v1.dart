class Account {
  String _accountNumber;
  int _balacne;

  Account(this._accountNumber, this._balacne);

  int get balacne => _balacne;

  set balacne(int value) {
    _balacne = value;
  }

  String get accountNumber => _accountNumber;

  set accountNumber(String value) {
    _accountNumber = value;
  }


  void deposit(int money) {
    this._balacne += money;
  }

  void transfer(Account accountTo, int money) {
    //accountTo 목적 Account 객체
    if (this._balacne >= money) {
      accountTo._balacne += money;
      this._balacne -= money;
      print('${accountTo.accountNumber} 계좌로 $money 전송 완료');
    } else {
      print('잔액 부족');
    }
  }

  void withdraw(int money) {
    if (this._balacne >= money) {
      this._balacne -= money;
      print('$money 출금 완료 ' +
          this._accountNumber +
          '\'s 잔액은 $this._balacne 입니다.');
    }
  }
}
