class MyValidator {
  static String? nameValidator(String? name) {
    if (name == null || name.isEmpty) {
      return "name is requred";
    }
    return null;
  }

  static String? emalValidator(String? email) {
    if (email == null || email.isEmpty) {
      return "email is requred";
    }
    if (!RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')
        .hasMatch(email)) {
      return "pleas enter a valid email ";
    }
    return null;
  }


  static String? passwrdValidator(String? paswword) {
    if (paswword == null || paswword.isEmpty) {
      return "paswword is requred";
    }
    if (paswword.length <= 5) {
      return "pleas enter a valid id 6 number ";
    }

    return null;
  }

  
}