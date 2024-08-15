class BmiModel {
  String? _label, _message;
  double? _bmiNumber;

  BmiModel(
    this._label,
    this._message,
    this._bmiNumber,
  );

  double get bmiNumber => _bmiNumber!;

  String get message => _message!;

  String get label => _label!;
}
