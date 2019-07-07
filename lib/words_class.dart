class Words {
  String fullNameHint;
  String emailHint;
  String myMale;
  String myFemale;
  String passHint;
  String confirmPassHint;
  String signUpHint;
  String errorEmailOne;
  String erorEmailTwo;
  String passerrorOne;
  String passerrorTwo;
  String goNextOne;
  String goNextTwo;

  Words(
      {this.fullNameHint,
      this.emailHint,
      this.myMale,
      this.myFemale,
      this.passHint,
      this.confirmPassHint,
      this.signUpHint,
      this.errorEmailOne,
      this.erorEmailTwo,
      this.passerrorOne,
      this.passerrorTwo,
      this.goNextOne,
      this.goNextTwo});
  factory Words.fromJson(Map<String, dynamic> parsedJson) {
    return Words(
        fullNameHint: parsedJson['fullNameHint'],
        emailHint: parsedJson['emailHint'],
        myMale: parsedJson['myMale'],
        myFemale: parsedJson['myFemale'],
        passHint: parsedJson['passHint'],
        confirmPassHint: parsedJson['confirmPassHint'],
        signUpHint: parsedJson['signUpHint'],
        errorEmailOne: parsedJson['errorEmailOne'],
        erorEmailTwo: parsedJson['errorEmailTow'],
        passerrorOne: parsedJson['passwordError1'],
        passerrorTwo: parsedJson['passwordError2'],
        goNextOne: parsedJson['goNextOne'],
        goNextTwo: parsedJson['goNextTwo']);
  }
}
