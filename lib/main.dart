import 'package:flutter/material.dart';
import 'package:uikit/components/custom_appbar.dart';
import 'package:uikit/components/custom_avatar.dart';
import 'package:uikit/components/custom_bottombar.dart';
import 'package:uikit/components/custom_button.dart';
import 'package:uikit/components/custom_checkbox.dart';
import 'package:uikit/components/custom_header.dart';
import 'package:uikit/components/custom_navbar.dart';
import 'package:uikit/components/custom_progressbar.dart';
import 'package:uikit/components/custom_snackbar.dart';
import 'package:uikit/components/custom_textarea.dart';
import 'package:uikit/components/custom_textfield.dart';
import 'package:uikit/colors.dart';
import 'package:uikit/typography.dart';
import 'package:vize/vize.dart';

// Точка входа в приложение
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Инициализация библиотеки Vize
    Vize.init(context, figmaWidth: 390, figmaHeight: 884);
    return MaterialApp(title: 'StoryBook', debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget colors(Color color, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 48.fh,
          width: 81.5.fw,
          decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(4.r)),
        ),
        SizedBox(height: 4.fh),
        Text(text, style: secondLabel.copyWith(color: secondary)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(label: 'HR Design\nSystem'),
            Padding(
              padding: ps(h: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24.fh),
                  Text('Typography & Colors', style: screenHeader.copyWith(color: primary)),
                  SizedBox(height: 13.fh),
                  Column(
                    children: [
                      Row(
                        children: [
                          colors(primary, 'Primary'),
                          SizedBox(width: 8.fh),
                          colors(secondary, 'Secondary'),
                          SizedBox(width: 8.fh),
                          colors(tertiary, 'Tertiary'),
                          SizedBox(width: 8.fh),
                          colors(error, 'Error'),
                        ],
                      ),
                      SizedBox(height: 21.fh),
                      Row(
                        children: [
                          colors(white, 'White'),
                          SizedBox(width: 8.fh),
                          colors(black, 'Black'),
                          SizedBox(width: 8.fh),
                          colors(grey, 'Grey'),
                          SizedBox(width: 8.fh),
                          colors(darkenWhite, 'darkenWhite'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 35.fh),
                  Container(
                    width: 350.fw,
                    padding: pa(16),
                    decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(12.r)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Screen Header (24px)', style: screenHeader),
                        SizedBox(height: 8.fh),
                        Text('Subheader (18px)', style: subheader),
                        SizedBox(height: 8.fh),
                        Text('Body Medium (16px) - Modern Corporate\nclarity for HR professionals.', style: bodyMedium),
                        SizedBox(height: 8.fh),
                        Text('Body Small (14px) - Used for metadata and dense\ncandidate information.', style: bodySmall),
                        SizedBox(height: 8.fh),
                        Text('Field Label (14px Bold)', style: fieldLabel),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.fh),
                  Text('Buttons', style: screenHeader.copyWith(color: primary)),
                  SizedBox(height: 16.fh),
                  Column(
                    children: [
                      Row(
                        children: [
                          CustomButton(text: 'Primary Default', fillColor: primary, borderColor: primary, width: 167.fw, textColor: white, isDisabled: false),
                          Spacer(),
                          CustomButton(text: 'Primary Disabled', fillColor: primary, borderColor: primary, width: 167.fw, textColor: white, isDisabled: true),
                        ],
                      ),
                      SizedBox(height: 16.fh),
                      Row(
                        children: [
                          Spacer(),
                          CustomButton(text: 'Secondary', fillColor: white, borderColor: primary, width: 167.fw, textColor: primary, isDisabled: false),
                        ],
                      ),
                      SizedBox(height: 36.fh),
                      CustomButton(text: 'Destructive Solid', fillColor: error, borderColor: error, width: 350.fw, textColor: white, isDisabled: false),
                    ],
                  ),
                  SizedBox(height: 109.fh),
                  Text('Input Fields', style: screenHeader.copyWith(color: primary)),
                  SizedBox(height: 16.fh),
                  CustomTextField(label: 'Default Input', hint: 'Enter text...', state: TextFieldState.normal, type: TextFieldType.normal, controller: null),
                  SizedBox(height: 24.fh),
                  CustomTextField(label: 'Focused State', hint: 'Active typing state', state: TextFieldState.focused, type: TextFieldType.normal, controller: null),
                  SizedBox(height: 24.fh),
                  CustomTextField(label: 'Error State', hint: 'Wrong data', state: TextFieldState.error, type: TextFieldType.normal, controller: null, errorText: 'Invalid input'),
                  SizedBox(height: 20.fh),
                  CustomTextField(label: 'Disabled Input', hint: 'Cannot edit this', state: TextFieldState.disabled, type: TextFieldType.normal, controller: null),
                  SizedBox(height: 24.fh),
                  CustomTextField(label: 'Password Field', hint: '••••••••', state: TextFieldState.normal, type: TextFieldType.password, controller: null),
                  SizedBox(height: 24.fh),
                  CustomTextField(label: 'Searching Field', hint: 'Search by title...', state: TextFieldState.normal, type: TextFieldType.search, controller: null),
                  SizedBox(height: 109.fh),
                  Text('Select & Checkboxes', style: screenHeader.copyWith(color: primary)),
                  SizedBox(height: 16.fh),

                  SizedBox(height: 24.fh),
                  CustomCheckbox(label: 'Checked', isTap: true, isDisabled: false, onTap: (bool value) {}),
                  SizedBox(height: 16.fh),
                  CustomCheckbox(label: 'Unchecked', isTap: false, isDisabled: false, onTap: (bool value) {}),
                  SizedBox(height: 16.fh),
                  CustomCheckbox(label: 'Disabled', isTap: false, isDisabled: true, onTap: (bool value) {}),
                  SizedBox(height: 109.fh),
                  Text('Avatars', style: screenHeader.copyWith(color: primary)),
                  SizedBox(height: 16.fh),
                  Row(
                    children: [
                      CustomAvatar(borderColor: primary, fillColor: darkenWhite, size: 60, photo: 'assets/ava.jpg', label: 'Photo'),
                      SizedBox(width: 34.fw),
                      CustomAvatar(
                        borderColor: grey,
                        fillColor: darkenWhite,
                        size: 60,
                        label: 'Initials',
                        initials: 'JD',
                        initialsStyle: screenHeader.copyWith(fontSize: 20, letterSpacing: 0, height: 28 / 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.fh),
                  Text('Navigation & Feedback', style: screenHeader.copyWith(color: primary)),
                  SizedBox(height: 14.fh),
                ],
              ),
            ),
            CustomAppBar(label: 'HR Design\nSystem'),
            SizedBox(height: 16.fh),
            Padding(
              padding: ps(h: 20),
              child: CustomHeader(label: 'Settings'),
            ),
            SizedBox(height: 80.fh),
            Padding(
              padding: ps(h: 20),
              child: CustomProgressBar(currentStep: 2, label: 'Candidate Progress (Step 2 of 3)'),
            ),
            SizedBox(height: 16.fh),
            Padding(
              padding: ps(h: 18),
              child: Text('Textarea', style: screenHeader.copyWith(color: primary)),
            ),
            SizedBox(height: 25.fh),
            Padding(
              padding: po(l: 11),
              child: CustomTextArea(hint: 'Brief overview of the practical task if\napplicable...', height: 82, width: 350),
            ),
            SizedBox(height: 16.fh),
            Padding(
              padding: ps(h: 18),
              child: Text('Snackbar', style: screenHeader.copyWith(color: primary)),
            ),
            SizedBox(height: 15.fh),
            Center(
              child: CustomButton(
                text: 'SnackBar',
                fillColor: primary,
                borderColor: primary,
                width: 350.fw,
                textColor: white,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(customSnackbar());
                },
              ),
            ),
            SizedBox(height: 16.fh),
            Padding(
              padding: ps(h: 6),
              child: Text('BottomBars', style: screenHeader.copyWith(color: primary)),
            ),
            SizedBox(height: 20.fh),
            CustomBottomBar(text1: 'Vacancies', text2: 'Candidates', text3: 'Settings', currentPage: 2, onTap: (int value) {}),
            SizedBox(height: 16.fh),
            CustomNavbar(),
          ],
        ),
      ),
    );
  }
}
