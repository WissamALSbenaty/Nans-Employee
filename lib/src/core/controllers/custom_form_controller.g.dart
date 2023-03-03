// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_form_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CustomFormController on CustomFormControllerBase, Store {
  Computed<bool>? _$canSubmitComputed;

  @override
  bool get canSubmit =>
      (_$canSubmitComputed ??= Computed<bool>(() => super.canSubmit,
              name: 'CustomFormControllerBase.canSubmit'))
          .value;

  late final _$isSubmittingAtom =
      Atom(name: 'CustomFormControllerBase.isSubmitting', context: context);

  @override
  bool get isSubmitting {
    _$isSubmittingAtom.reportRead();
    return super.isSubmitting;
  }

  @override
  set isSubmitting(bool value) {
    _$isSubmittingAtom.reportWrite(value, super.isSubmitting, () {
      super.isSubmitting = value;
    });
  }

  late final _$currentValuesAtom =
      Atom(name: 'CustomFormControllerBase.currentValues', context: context);

  @override
  ObservableList<String?> get currentValues {
    _$currentValuesAtom.reportRead();
    return super.currentValues;
  }

  @override
  set currentValues(ObservableList<String?> value) {
    _$currentValuesAtom.reportWrite(value, super.currentValues, () {
      super.currentValues = value;
    });
  }

  late final _$changeValueAsyncAction =
      AsyncAction('CustomFormControllerBase.changeValue', context: context);

  @override
  Future<void> changeValue(int index, String? newValue) {
    return _$changeValueAsyncAction
        .run(() => super.changeValue(index, newValue));
  }

  late final _$submitFormAsyncAction =
      AsyncAction('CustomFormControllerBase.submitForm', context: context);

  @override
  Future<void> submitForm(BuildContext context) {
    return _$submitFormAsyncAction.run(() => super.submitForm(context));
  }

  @override
  String toString() {
    return '''
isSubmitting: ${isSubmitting},
currentValues: ${currentValues},
canSubmit: ${canSubmit}
    ''';
  }
}
