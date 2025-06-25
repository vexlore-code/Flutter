//Answer to the question no a
abstract class Vehicle {
  int _currentSpeed = 0;

  void drive();

  void updateSpeed(int newSpeed) {
    if (newSpeed >= 0) {
      _currentSpeed = newSpeed;
    }
  }

  int fetchSpeed() {
    return _currentSpeed;
  }
}

//Answer to the question no b & c
class Car extends Vehicle {
  @override
  void drive() {
    print("The car is moving at ${fetchSpeed()} km/h");
  }
}

//Answer to the question no d
void main() {
  Car myCar = Car();
  myCar.updateSpeed(100);
  myCar.drive();
}
