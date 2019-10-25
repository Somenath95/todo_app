class Note {
  //Declaring variables
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;
  //Variable Declaration ends here

  //Constructor of Note Class
  Note(this._title, this._date, this._priority, [this._description]);
  //Constructor with ID
  Note.withId(this._id, this._title, this._date, this._priority,
      [this._description]);

  //Initializing Getter methods for each veriables
  int get id => _id;
  String get title => _title;
  String get description => _description;
  String get date => _date;
  int get priority => _priority;

  //Initializing setter methods for each variables
  set title(String newTitle) {
    if (newTitle.length < 255) {
      this._title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length < 255) {
      this._title = newDescription;
    }
  }

  set date(String newDate) {
    this._title = newDate;
  }

  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }
  //Setter methods ends here

// Method to Change Note objects into a Map objects
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;
    return map;
  }

  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._priority = map['priority'];
    this._date = map['date'];
  }
}
