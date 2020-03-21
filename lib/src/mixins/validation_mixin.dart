class ValidationMixin {
  String validateEmail(value) {
    if (!value.contains('@')) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String validatePassword(value) {
    if (value.length < 4) {
      return 'Please enter a password greather than 4 characters';
    }
    return null;
  }
}
