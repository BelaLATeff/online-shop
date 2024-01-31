import 'package:flutter/services.dart';
import 'package:online_shop/imports/packages_import.dart';

class Validator {
  // static String? passwordValidator(String? value) {
  //   if (value == null) return 'Password is required.';

  //   if (value.length < 8) return 'Must be at least 8 characters.';

  //   return null;
  // }

  static String? accountValidator(String? value) {
    final validation = requiredValidator(
      value, /*  key: 'ACCOUNT'.tr */
    );
    if (validation != null) return validation;

    if (!value!.isEmail && !value.isPhoneNumber) {
      return 'valid email or phone number'.tr;
    }

    return null;
  }

  static String? lengthValidator(
    String? value, {
    required int minLength,
    int? maxLength,
  }) {
    final validation = requiredValidator(value /* , key: text */);
    if (validation != null) return validation;

    if (value!.length < minLength) {
      return '${'Must be at least'.tr} $minLength ${'characters'.tr}';
    }

    if (maxLength != null && value.length > maxLength) {
      return '${'Must be maximum'.tr} $maxLength ${'characters'.tr}';
    }

    return null;
  }

  static String? phoneValidator(String? value) {
    final validation = requiredValidator(value /* , key: 'Mobile Number'.tr */);
    if (validation != null) return validation;
    if (!value!.isPhoneNumber) {
      return 'enter valid phone'.tr;
    }

    return null;
  }

  static String? emailValidator(String? value) {
    final validation = requiredValidator(value /* , key: 'E-mail'.tr */);
    if (validation != null) return validation;

    if (!value!.isEmail) {
      return 'enter valid email'.tr;
    }

    return null;
  }

  static String? dropdownValidator(dynamic value, {required String key}) {
    if (value == null) return '${key.toUpperCase()} ${'is required'.tr}';
    return null;
  }

  static String? requiredValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'required'.tr;
    }
    return null;
  }

  static TextInputFormatter denyEnglishLetters() {
    // deny English numbers
    return FilteringTextInputFormatter.deny(RegExp(r'\d'));
  }

  static TextInputFormatter denyArabicLetters() {
    // deny Arabic numbers
    return FilteringTextInputFormatter.deny(RegExp(r'[\u0660-\u0669]*'));
  }

  static TextInputFormatter denyZeroNum() {
    //users can't type 0 at 1st position
    return FilteringTextInputFormatter.deny(
      RegExp(r'^0+'),
    );
  }

  static TextInputFormatter allowNumsOnly() {
    //users can't type 0 at 1st position
    return FilteringTextInputFormatter.allow(
      RegExp('[0-9.]+'),
    );
  }
}
