import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';
import 'package:reactive_pinput/reactive_pinput.dart';
import 'package:whatsappclone/core/constants/color_constants.dart';
import 'package:whatsappclone/core/constants/image_constants.dart';
import 'package:whatsappclone/core/utils/extentions/text_extention.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

late FormGroup form;

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    form = FormGroup({
      'phone': FormControl<PhoneNumber>(validators: [
        Validators.required,
      ]),
      'pin': FormControl<String>(validators: [
        Validators.required,
      ]),
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    form.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ReactiveForm(
        formGroup: form,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 3,
              child: Image.asset(
                logoimg,
                height: 100.w,
                width: 100.w,
              ),
            ),
            Expanded(
              child: Text(
                "Welcome to WhatsApp",
                style: Theme.of(context)
                    .textTheme
                    .text24(context)
                    .copyWith(fontWeight: FontWeight.w900),
              ),
            ),
            const Expanded(
              flex: 2,
              child: PhoneTextFieldWidget(),
            ),
            Flexible(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.w),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 45.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                ),
                onPressed: () {
                  if (form.valid) {
                  } else {
                    form.markAllAsTouched();
                  }
                },
                // If you want to do a more detailed phone check, the user can check with the
                // https://pub.dev/packages/flutter_libphonenumber package after confirming. You can show error if it is not suitable.
                child: const Text('Comfirm'),
              ),
            )),
            const Spacer(),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Expanded(
                      child: Text(
                        "Read our Privacy Policy. Tap “Agree & \nContinue” to accept the Terms of Service.",
                        style: Theme.of(context).textTheme.text14(context),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      child: Text(
                        "from \nFACEBOOK",
                        style: Theme.of(context).textTheme.text14(context),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class PinPutWidget extends StatelessWidget {
  const PinPutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.w),
              child: ReactivePinPut<String>(
                  formControlName: 'pin',
                  validationMessages: {
                    'required': (error) => 'The name must not be empty',
                  },
                  length: 4,
                  keyboardType: TextInputType.number,
                  cursor: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 9),
                        width: 22,
                        height: 1,
                        color: primaryColor,
                      ),
                    ],
                  ),
                  defaultPinTheme: PinTheme(
                    width: 56,
                    height: 60,
                    textStyle: Theme.of(context).textTheme.text18(context),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.transparent),
                    ),
                  )),
            )),
        Spacer(),
        Column(
          children: [
            Text(
              "Didn't  receive code ?",
              style: Theme.of(context).textTheme.text12(context),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Resend",
                  style: Theme.of(context).textTheme.text12(context),
                ))
          ],
        ),
      ],
    );
  }
}

class PhoneTextFieldWidget extends StatelessWidget {
  const PhoneTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45.w),
      child: ReactivePhoneFormField<PhoneNumber>(
        formControlName: 'phone',
        enableInteractiveSelection: true,
        style: Theme.of(context)
            .textTheme
            .text18(context)
            .copyWith(fontWeight: FontWeight.bold),
        countryCodeStyle: Theme.of(context)
            .textTheme
            .text18(context)
            .copyWith(fontWeight: FontWeight.bold),
        defaultCountry: IsoCode.TR,
        //TODO Automatic selection can be made according to the phone language.
        isCountrySelectionEnabled: true,
        isCountryChipPersistent: true,
        flagSize: 20,
        countrySelectorNavigator:
            const CountrySelectorNavigator.searchDelegate(),
        validationMessages: {
          'required': (error) => 'The name must not be empty',
        },
      ),
    );
  }
}
