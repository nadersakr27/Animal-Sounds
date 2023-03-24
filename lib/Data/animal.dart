
class Animal {
  String? _name;
  String? _soundName;
  String? _discretion;

  Animal({String? name, String? svg, String? soundName,String? discretion}) {
    if (name != null) {
      _name = name;
    }
    if (soundName != null) {
      _soundName = soundName;
    }
    if (discretion != null) {
      _discretion = discretion;
    }
  }
  String? get name => _name;
  String? get soundName => _soundName;
  String? get discretion => _discretion;
 

  Animal.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _soundName = json['soundName'];
    _discretion = json['discretion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = _name;
    data['soundName'] = _soundName;
    data['discretion'] = _discretion;
    return data;
  }
}