class CalculatorModel {
  String input = ""; // User input string
  String operation = ""; // Current operation
  double? firstOperand; // First operand
  String displayResult = ""; // Result to display

  double performOperation(String operation, double firstOperand, double secondOperand) {
    switch (operation) {
      case "+":
        return firstOperand + secondOperand;
      case "-":
        return firstOperand - secondOperand;
      case "*":
        return firstOperand * secondOperand;
      case "/":
        return secondOperand != 0 ? firstOperand / secondOperand : 0;
      default:
        return 0;
    }
  }

  
}
