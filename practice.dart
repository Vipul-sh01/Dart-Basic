class CalculatorModel {
  String input = ""; // Current user input
  String operation = ""; // Current operation
  double? firstOperand; // First operand as a numeric value
  double? secondOperand; // Second operand as a numeric value
  String displayResult = ""; // Result to display

  // Method to perform the operation
  double performOperation(String operation, double firstOperand, double secondOperand) {
    switch (operation) {
      case "+":
        return firstOperand + secondOperand;
      case "-":
        return firstOperand - secondOperand;
      case "*":
        return firstOperand * secondOperand;
      case "/":
        return secondOperand != 0 ? firstOperand / secondOperand : double.nan;
      default:
        return double.nan; // Return NaN for invalid operations
    }
  }

  // Helper method to process user input and set operands
  void processInput(String userInput) {
    if (firstOperand == null) {
      // Set the first operand if it's not already set
      firstOperand = double.tryParse(userInput);
    } else {
      // Otherwise, set the second operand
      secondOperand = double.tryParse(userInput);
    }
  }

  // Method to calculate the result
  void calculateResult() {
    if (firstOperand != null && secondOperand != null && operation.isNotEmpty) {
      double result = performOperation(operation, firstOperand!, secondOperand!);
      displayResult = result.toString();
      // Reset values after calculation
      firstOperand = null;
      secondOperand = null;
      input = "";
      operation = "";
    } else {
      displayResult = "Error"; // Handle incomplete input
    }
  }
}
