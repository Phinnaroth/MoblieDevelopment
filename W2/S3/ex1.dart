
enum Skill { FLUTTER, DART, OTHER}

class Address{
  String _street;
  String _city;
  int _zipCode;

  Address(this._street, this._city, this._zipCode);

  @override
  String toString(){
    return "$_street, $_city, $_zipCode";
  }
}
class Employee {
  final String _name;
  static const double _baseSalary = 4000.0;
  final List<Skill> _skill;
  final Address _address;
  final int _yearOfExperience;

  Employee(this._name, this._skill, this._address, this._yearOfExperience);

  Employee.mobileDeveloper(): _name = "BoomBoom",
                      _skill = [Skill.FLUTTER, Skill.DART],
                      _address = Address("123", "PP", 123),
                      _yearOfExperience = 1;

  String get Name => _name;
  double get BaseSalary => _baseSalary;
  List<Skill> get skill => _skill;
  Address get address => _address;
  int get YearOfExperience => _yearOfExperience;

  double computeSalary() {
  
    double experienceBonus = 2000.0 * _yearOfExperience;

    double skillBonus = 0.0;
    for (Skill skill in _skill) {
      switch (skill) {
        case Skill.FLUTTER:
          skillBonus += 5000.0;
          break;
        case Skill.DART:
          skillBonus += 3000.0;
          break;
        case Skill.OTHER:
          skillBonus += 1000.0;
          break;
      }
    }

    return _baseSalary + experienceBonus + skillBonus;
  }
 
  void printDetails() {
    print('Employee: $_name, Base Salary: \$${_baseSalary}, Skill:$_skill, Address: $address, Year Of Experience: $YearOfExperience, Total Salary: \$${computeSalary()}');
  }
}

void main() {
  var emp1 = Employee.mobileDeveloper();
  emp1.printDetails();

  // var emp2 = Employee('Ronan', 45000);
  // emp2.printDetails();
}
