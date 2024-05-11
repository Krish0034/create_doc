import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';
import '../../../common/custom_phone_text_field.dart';
import '../../../util/app_strings.dart';
import '../../../util/logger.dart';



class PhoneTextField extends StatefulWidget {
  final TextEditingController phoneController;
  final Function? onChange;
  const PhoneTextField({super.key, required this.phoneController, this.onChange});

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  @override
  Widget build(BuildContext context) {
    return CustomPhoneTextField(
      readOnly: false,
      label: AppString.phoneHintText,
      hint: AppString.phoneHintText,
      keyboardType: TextInputType.number,
      controller:widget.phoneController,
      validator: (PhoneNumber value) {
        Logger.data("validate phone number is $value");
        if (value.number == "") {
          return AppString.phoneValidatorText;
        }
        
      },
      onChanged:widget.onChange ??(PhoneNumber value) {
        Logger.data("phone number is ${value.completeNumber}");
      },
    );
  }
}
