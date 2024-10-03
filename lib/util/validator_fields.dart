

class ValidatorFields {
  static final RegExp REGEX_EMOJI = RegExp(
      r"(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])");


  static String? phone(String value) {
    final nob = int.tryParse(value);
    if (nob != null) {
      if (value.length > 8 && value.length < 13) {
        return null;
      } else {
        return "Please check the number.";
      }
    } else {
      return 'Please enter your phone number to continue.';
    }
  }

  static bool? email(String value) {
    final bool isValid = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value.trim());
      return isValid;

  }

  bool isUsername(String s) {
    RegExp regex = RegExp(r'^[a-zA-Z0-9][a-zA-Z0-9_.]+[a-zA-Z0-9]$');
    return regex.hasMatch(s);
  }

  static bool isOnlyEmojis(String text) {
    // find all emojis
    final emojis = REGEX_EMOJI.allMatches(text);

    // return if none found
    if (emojis.isEmpty) return false;

    // remove all emojis from the this
    for (final emoji in emojis) {
      text = text.replaceAll(emoji.input.substring(emoji.start, emoji.end), "");
    }

    // remove all whitespace (optional)
    text = text.replaceAll(" ", "");

    // return true if nothing else left
    return text.isEmpty;
  }

  static String? validateVerificationCode(String value) {
    if (value.isNotEmpty && value.length == 4) {
      return null;
    } else {
      return 'OTP must be 4 digits';
    }
  }


}
