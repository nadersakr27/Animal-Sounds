
class Animal {
  String? _name;
  String? _soundName;

  Animal({String? name, String? svg, String? soundName}) {
    if (name != null) {
      _name = name;
    }
    if (soundName != null) {
      _soundName = soundName;
    }
  }
  String? get name => _name;
  String? get soundName => _soundName;
 

  Animal.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _soundName = json['soundName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = _name;
    data['soundName'] = _soundName;
    return data;
  }
}