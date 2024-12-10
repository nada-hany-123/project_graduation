import 'package:flutter/material.dart';
import 'package:gloves_app/ProfileScreen.dart';
import 'package:provider/provider.dart';


class SettingsProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void changeTheme(ThemeMode newTheme) {
    _themeMode = newTheme;
    notifyListeners();
  }
}

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isBluetoothOn = false;
  bool lighttheme = false;
  bool isLightModeOn = false;

  @override
  Widget build(BuildContext context) {
    final settingsProvider = Provider.of<SettingsProvider>(context);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              title:  Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 28,
                      color: Color.fromRGBO(29, 45, 68, 1),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "Settings",
                    style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),
                  ),
                  Spacer(),]

              ),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Account Settings",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
                Row(children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text('Edit profile',
                      style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(flex: 1),
                  IconButton(
                      onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProfileScreen()),
                          );
                      },
                      icon: const Icon(Icons.chevron_right,color: Colors.black,))
                ]),
                Row(children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text('Change password',
                      style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(flex: 1),
                  IconButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChangePasswordScreen()),
                    );
                  },
                      icon: const Icon(Icons.chevron_right,color: Colors.black,))
                ]),
                Row(children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text('Bluetooth',
                      style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(flex: 1),
                  Switch(
                    value: isBluetoothOn,
                    onChanged: (value) {
                      setState(() {
                        isBluetoothOn = value;
                      });
                    },
                    activeColor: Colors.blue,
                  ),
                ]),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Dark Mode',
                        style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Switch(
                      value: settingsProvider.themeMode == ThemeMode.dark,
                      onChanged: (value) {
                        if (value) {
                          settingsProvider.changeTheme(ThemeMode.dark);
                        } else {
                          settingsProvider.changeTheme(ThemeMode.light);
                        }
                      },
                      activeTrackColor: Theme.of(context).primaryColor,
                      inactiveTrackColor: Theme.of(context).primaryColor,
                      thumbColor: MaterialStateProperty.all(Colors.white),
                    ),
                  ],
                ),
                const Divider(
                  height: 60,
                  thickness: 1,
                  endIndent: 20,
                  indent: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(18),
                  child: Text("More",
                    style: TextStyle(fontSize: 20, color: Colors.grey,fontWeight: FontWeight.bold),
                  ),
                ),
                Row(children: [
                  const Padding(
                    padding: EdgeInsets.all(18),
                    child: Text('Contact us',
                      style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(flex: 1),
                  IconButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactUsScreen()),
                    );
                  },
                      icon: const Icon(Icons.chevron_right,color: Colors.black,))
                ]),
                Row(children: [
                  const Padding(
                    padding: EdgeInsets.all(18),
                    child: Text('Privacy policy',
                      style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(flex: 1),
                  IconButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PrivacyPolicyScreen()),
                    );
                  },
                      icon: const Icon(Icons.chevron_right,color: Colors.black,))
                ]),
                Row(children: [
                  const Padding(
                    padding: EdgeInsets.all(18),
                    child: Text('Terms of service',
                      style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(flex: 1),
                  IconButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TermsAndConditionsScreen()),
                    );
                  },
                      icon: const Icon(Icons.chevron_right,color: Colors.black,))
                ]),
              ],
            ),
            ),
        );
    }
}


class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Change Password',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Image.asset("assets/images/Password manager, information security.png", height: 300)
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock,color: Colors.black,),
                  hintText: 'Enter your current password',
                  filled: true,
                  fillColor: Color.fromRGBO(218, 224, 241, 1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock,color: Colors.black,),
                  hintText: 'New password',
                  filled: true,
                  fillColor: Color.fromRGBO(218, 224, 241, 1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock,color: Colors.black,),
                  hintText: 'Confirm password',
                  filled: true,
                  fillColor: Color.fromRGBO(218, 224, 241, 1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Settings()),
                        );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(218, 224, 241, 1),
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 55, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text('Cancel',
                      style: TextStyle(color: Color.fromRGBO(29, 45, 68, 1),),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Settings()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(29, 45, 68, 1),
                      padding: EdgeInsets.symmetric(horizontal: 55, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text('Save',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Contact Us',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "We're here to help! Reach out to us for support or feedback.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: 1,
                          onChanged: (value) {},
                          activeColor: Theme.of(context).primaryColor,
                        ),
                        Text(
                          'Email us at: support@SIGHMI.com',
                          style: TextStyle(fontSize: 16,color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: 1,
                          onChanged: (value) {},
                          activeColor: Theme.of(context).primaryColor,
                        ),
                        Text(
                          'Call us at: +961-897-111',
                          style: TextStyle(fontSize: 16,color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your full name in here',
                    filled: true,
                    fillColor: Color.fromRGBO(218, 224, 241, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email address in here',
                    filled: true,
                    fillColor: Color.fromRGBO(218, 224, 241, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                child: TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: 'Write your message in here',
                    filled: true,
                    fillColor: Color.fromRGBO(218, 224, 241, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Looking for answers? Visit our FAQ page.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 70,),
          
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Color.fromRGBO(29, 45, 68, 1),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Send Message',
                    style: TextStyle(fontSize: 16,color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}



class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Privacy Policy',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your privacy matters to us. Please read our policy to understand how we collect, use, and protect your data.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              sectionTitle("Overview"),
              sectionContent(
                  "We value your trust and are committed to safeguarding your personal information. This Privacy Policy outlines the data we collect, how we use it, and your rights."),
              sectionTitle("Data We Collect"),
              sectionContent("""
• Personal Information: Name, email address, and account details during registration.
• Usage Data: How you interact with the app, including gestures or glove inputs.
• Device Data: Device model, operating system, and app version.
• Optional Data: Data related to body measurements or skin tone for optional features.
"""),
              sectionTitle("How We Use Your Data"),
              sectionContent("""
• Improving app functionality and performance.
• Translating sign language gestures accurately.
• Offering personalized size and color recommendations.
• Responding to your inquiries or support requests.
• Ensuring compliance with legal requirements.
"""),
              sectionTitle("Data Sharing"),
              sectionContent("""
We do not share your personal information with third parties, except:
• When required by law.
• To trusted service providers assisting in app operations, under strict confidentiality agreements.
"""),
              sectionTitle("Data Security"),
              sectionContent("""
We implement advanced security measures to protect your data from unauthorized access. However, no method of electronic storage is 100% secure, and we cannot guarantee absolute security.
"""),
              sectionTitle("User Rights"),
              sectionContent("""
You have the right to:
• Access, correct, or delete your personal data.
• Opt out of data collection for non-essential features.
• Request a copy of your data.
"""),
              sectionTitle("Updates to Policy"),
              sectionContent("""
We may update this Privacy Policy periodically. Changes will be communicated through app notifications or email.
"""),
              // Checkbox
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {
                    },
                  ),
                  Expanded(
                    child: Text(
                      "I have read and understand the Privacy Policy.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Need help? Contact Us',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }


  Widget sectionContent(String content) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 14,
        height: 1.5,
        color: Colors.black87,
      ),
    );
  }
}



class TermsAndConditionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Terms and Conditions',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Please read these terms carefully before using the app.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 5),
              sectionTitle("Introduction"),
              sectionContent(
                  "Welcome to SIGHMI App! By using this application, you agree to comply with and be bound by the following terms and conditions of use, which govern your relationship with our app. If you disagree with any part of these terms, please do not use the app."),
              sectionTitle("User Obligations"),
              sectionContent("""
• Use the app only for its intended purposes, such as translating sign language or accessing smart glove features.
• Do not misuse the app or interfere with its operation.
• Ensure that your device meets the necessary technical requirements to run the app efficiently.
"""),
              sectionTitle("Privacy Policy"),
              sectionContent("""
We are committed to protecting your privacy. The Smart Glove App collects data such as sign language gesture inputs, user preferences, and device information to improve functionality and enhance user experience. For detailed information on how we handle your data, please refer to our Privacy Policy.
"""),
              sectionTitle("Intellectual Property"),
              sectionContent("""
All content, designs, trademarks, and intellectual property associated with the Smart Glove App are owned by SIGHMI. You may not copy, distribute, or reproduce any content from the app without explicit permission. Unauthorized use may lead to legal action.
"""),
              sectionTitle("Limitations of Liability"),
              sectionContent("""
The SIGHMI App is provided 'as is' without any guarantees of accuracy or reliability in translating gestures or other features.
We are not liable for any damages resulting from:
• Misinterpretation of sign language translations.
• Incorrect size or fit recommendations.
• Technical malfunctions or compatibility issues.
Your use of the app is at your own risk.
"""),
              sectionTitle("Updates to Terms"),
              sectionContent("""
We reserve the right to update or modify these terms at any time. Changes will be effective immediately upon posting.
It is your responsibility to review the terms periodically. Continued use of the app after updates constitutes your acceptance of the revised terms.
"""),
              SizedBox(height: 3),
              Text(
                'Need help? Contact Us',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 6),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
                child: Text("Accept Terms",style: TextStyle(color: Colors.white,fontSize: 18),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(29, 45, 68, 1),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  textStyle: TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                ),
              ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget sectionContent(String content) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 14,
        height: 1.5,
        color: Colors.black87,
      ),
    );
  }
}

