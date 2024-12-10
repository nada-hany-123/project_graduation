import 'package:flutter/material.dart';
import 'package:gloves_app/SettingScreen.dart';
import 'package:gloves_app/connect_gloves.dart';
import 'package:gloves_app/register.dart';
import 'package:table_calendar/table_calendar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: Colors.white,
    ),
    body: Column(children: [
    const CircleAvatar(
    radius: 90,
    backgroundColor: Color.fromARGB(255, 217, 223, 239),
    child: IconButton(
    onPressed: null,
    icon: Icon(
    Icons.person,
    size: 160,
    color: Color.fromARGB(255, 29, 45, 68)
    )),
    ),
    Padding(
    padding: const EdgeInsets.only(right: 40),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    IconButton(onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => edit()),
      );
    },
        icon: const Icon(Icons.edit,color: Color.fromARGB(255, 29, 45, 68),)),
    const Text(' Edit profile',
    style: TextStyle(
    fontSize: 24,
    decoration: TextDecoration.underline,
    decorationColor: Colors.grey)),
    ],
    ),
    ),
    const Divider(
    thickness: 1,
    endIndent: 20,
    indent: 20,
    ),
    const SizedBox(height: 10,),
    Row(
    children: [
    IconButton(onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ViewStatsScreen()),
      );
    },
        icon: const Icon(Icons.bar_chart,color: Color.fromARGB(255, 29, 45, 68),)),
    const Text('  View stats', style: TextStyle(fontSize: 24)),
    ],
    ),
      const SizedBox(height: 10,),
    Row(
    children: [
    IconButton(onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Settings()),
      );
    },
        icon: const Icon(Icons.settings,color: Color.fromARGB(255, 29, 45, 68),)),
    const Text('  Settings', style: TextStyle(fontSize: 24)),
    ],
    ),
      const SizedBox(height: 10,),
    Row(
    children: [
    IconButton(onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LearningGoalsEmptyScreen()),
      );
    },
        icon: const Icon(Icons.track_changes,color: Color.fromARGB(255, 29, 45, 68),)),
    const Text('  Learning Goals & reminders',
    style: TextStyle(fontSize: 24)),
    ],
    ),
      const SizedBox(height: 10,),
    Row(
    children: [
    IconButton(onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BluetoothScreen(),
        ),
      );
    },
        icon: const Icon(Icons.devices_outlined,color: Color.fromARGB(255, 29, 45, 68),)),
    const Text('  Connected Devices', style: TextStyle(fontSize: 24)),
    ],
    ),
      const SizedBox(height: 10,),
    Row(
    children: [
    IconButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HelpSupportScreen()),
    );
    },
        icon: const Icon(Icons.help,color: Color.fromARGB(255, 29, 45, 68),)),
    const Text('  Help & Support', style: TextStyle(fontSize: 24)),
    ],
    ),
      const SizedBox(height: 10,),
    Row(
    children: [
    IconButton(onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RegisterScreen()),
      );
    },
        icon: const Icon(Icons.logout,color: Color.fromARGB(255, 29, 45, 68),)),
    const Text('  Logout', style: TextStyle(fontSize: 24)),
    ],
    ),
    ]),
    ));
    }
    }

class edit extends StatelessWidget {
  const edit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_rounded, color: Color.fromRGBO(29, 45, 68, 1)),
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ),
                  );
                },
              ),
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                const Center(
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 217, 223, 239),
                    radius: 60,
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.person,
                          color: Color.fromRGBO(29, 45, 68, 1),
                          size: 90,
                        )),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 340,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Full Name is required';
                      }
                      return null;
                    },
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 217, 223, 239),
                      labelText: 'Full Name',
                      labelStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color:Color.fromARGB(255, 217, 223, 239),),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color.fromARGB(255, 217, 223, 239),)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 340,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nick Name is required';
                      }
                      return null;
                    },
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 217, 223, 239),
                      labelText: 'Nick Name',
                      labelStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color.fromARGB(255, 217, 223, 239),)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 340,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !value.contains('@') ||
                          !value.contains('.')) {
                        return 'Invalid Email';
                      }
                      return null;
                    },
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 217, 223, 239),
                      labelText: 'Email',
                      labelStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color.fromARGB(255, 217, 223, 239),)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 340,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Phone Number is required';
                      }
                      return null;
                    },
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 217, 223, 239),
                      labelText: 'Phone Number',
                      labelStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(Icons.phone,color: Color.fromRGBO(29, 45, 68, 1),),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color.fromARGB(255, 217, 223, 239),)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      child: DropdownButtonFormField<String>(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 217, 223, 239),
                          labelText: 'Country',
                          labelStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Color.fromARGB(255, 217, 223, 239),)),
                        ),
                        items: ['United States', 'Egypt', 'Emirates', 'Kuwait']
                            .map((country) => DropdownMenuItem(
                          value: country,
                          child: Text(country),
                        ))
                            .toList(),
                        onChanged: (value) {},
                      ),
                    ),
                    const SizedBox(width: 40),
                    SizedBox(
                      width: 150,
                      child: DropdownButtonFormField<String>(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 217, 223, 239),
                          labelText: 'Gender',
                          labelStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Color.fromARGB(255, 217, 223, 239),)),
                        ),
                        items: [' Male', 'Female']
                            .map((country) => DropdownMenuItem(
                          value: country,
                          child: Text(country),
                        ))
                            .toList(),
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ProfileScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 217, 223, 239),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                        ),),
                          child: const Text(
                            'Cancel',
                            style: TextStyle(fontSize: 18, color: Color.fromRGBO(29, 45, 68, 1),),
                          )),
                    ),
                    const SizedBox(width: 40),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ProfileScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                              const Color.fromARGB(255, 19, 38, 88),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),),
                          child: const Text('Save',
                            style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 217, 223, 239),),
                          )),
                    ),
                  ],
                ),
              ]),
            ),
            ));
    }
}

class ViewStatsScreen extends StatefulWidget {
  @override
  _ViewStatsScreenState createState() => _ViewStatsScreenState();
}

class _ViewStatsScreenState extends State<ViewStatsScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          },
        ),
        title: Text(
          "View Stats",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset("assets/images/Frame 427319712.png", height: 360),
            ]),
            ),

    );
  }
}

class LearningGoalsEmptyScreen extends StatefulWidget {
  @override
  _LearningGoalsEmptyScreenState createState() =>
      _LearningGoalsEmptyScreenState();
}

class _LearningGoalsEmptyScreenState extends State<LearningGoalsEmptyScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  int _selectedTabIndex = 0;
  final List<String> _tabs = ['All', 'To Do', 'In Progress', 'Done'];
  List<String> _tasks = []; // List to store tasks

  void _addTask(String task) {
    setState(() {
      _tasks.add(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 19, 38, 88),
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ),
            );
          },
        ),
        title: Text(
          "Learning Goals",
          style: TextStyle(
            color: Color.fromARGB(255, 19, 38, 88),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Calendar widget
            TableCalendar(
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              calendarFormat: _calendarFormat,
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Color.fromARGB(255, 217, 223, 239),
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Color.fromARGB(255, 19, 38, 88),
                  shape: BoxShape.circle,
                ),
                outsideDaysVisible: false,
              ),
            ),
            SizedBox(height: 20),
            // Tabs
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(_tabs.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedTabIndex = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 22),
                    decoration: BoxDecoration(
                      color: _selectedTabIndex == index
                          ? Color.fromARGB(255, 19, 38, 88)
                          : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      _tabs[index],
                      style: TextStyle(
                        color: _selectedTabIndex == index
                            ? Colors.white
                            : Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 20),
            // Task List or Empty State
            Expanded(
              child: _tasks.isEmpty
                  ? Center(
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        String newTask = "";
                        return AlertDialog(
                          title: Text("Add Task"),
                          content: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter task details",
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (value) {
                              newTask = value;
                            },
                          ),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.of(context).pop(),
                              child: Text("Cancel"),
                            ),
                            TextButton(
                              onPressed: () {
                                if (newTask.isNotEmpty) {
                                  _addTask(newTask);
                                }
                                Navigator.of(context).pop();
                              },
                              child: Text("Add"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/Group 226.png',
                          height: 200,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "No tasks yet. Tap to add your first task!",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
                  : ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    color: Color.fromARGB(255, 217, 223, 239),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Icon(Icons.task_alt),
                      title: Text(_tasks[index]),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            _tasks.removeAt(index);
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class HelpSupportScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {"title": "General Information", "icon": Icons.notifications, "color": Colors.blue[50], "screen": CategoryDetailScreen()},
    {"title": "Technical Information", "icon": Icons.settings, "color": Colors.green[50], "screen": TechnicalInformationScreen()},
    {"title": "Enhancements", "icon": Icons.attach_money, "color": Colors.red[50], "screen": EnhancementsScreen()},
    {"title": "Data and Privacy", "icon": Icons.account_circle, "color": Colors.purple[50], "screen": DataPrivacyScreen()},
    {"title": "Troubleshooting", "icon": Icons.error_outline_rounded, "color": Colors.teal[50], "screen": TroubleshootingScreen()},
    {"title": "Features", "icon": Icons.featured_play_list_sharp, "color": Colors.blueGrey[100], "screen": FeaturesScreen()},
  ];

  final List<Map<String, String>> topQuestions = [
    {
      "title": "How to create an account?",
      "content": "Open the SIGHMI app to get started and follow the steps."
          " SIGHMI doesn’t charge a fee to create or maintain your account."
    },
    {
      "title": "What is the purpose of this app?",
      "content": "The app helps translate sign language gestures into text and speech."
    },
    {
      "title": "What languages does the app support?",
      "content": "The app supports English, Spanish, and more."
    },
    {
      "title": "Can I use this app offline?",
      "content": "Yes, you can use the app offline with limited features."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Help & Support",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "How can we help you?",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your keyword",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 223, 239),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Category Buttons
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categories.map((category) {
                  return _buildCategoryButton(
                    title: category['title'],
                    icon: category['icon'],
                    color: category['color'],
                    screen: category['screen'],  // Pass screen for navigation
                    context: context,  // Pass context for navigation
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 24),
            // Top Questions Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Questions",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View all",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: topQuestions.length,
                itemBuilder: (context, index) {
                  return _buildExpansionTile(
                    title: topQuestions[index]['title']!,
                    content: topQuestions[index]['content']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton({
    required String title,
    required IconData icon,
    required Color? color,
    required Widget screen,
    required BuildContext context,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: GestureDetector(
        onTap: () {
          // Navigate to the corresponding screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 131,
              height: 116,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: Colors.black54, size: 30),
                  SizedBox(height: 8),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpansionTile({
    required String title,
    required String content,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: ExpansionTile(
        title: Text(title, style: TextStyle(fontSize: 16)),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              content,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}


class CategoryDetailScreen extends StatelessWidget {
  final List<Map<String, String>> generalQuestions = [
    {
      "title": "What is the Smart Glove, and how does it work?",
      "content": "The Smart Glove is an innovative device designed to translate sign language gestures into text or speech "
          "using advanced motion sensors. "
          "It connects to a mobile app for real-time processing and feedback."
    },
    {
      "title": "Is the glove compatible with all devices and operating systems?",
      "content": "The Smart Glove app is compatible with iOS and Android devices, requiring Bluetooth connectivity."
          " Ensure your OS is version X.X or higher for smooth functionality."
    },
    {
      "title": "Are there reminders or motivational features included?",
      "content": "Yes, users can set daily reminders for practice sessions and earn badges for achieving milestones."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Help & Support",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "How can we help you?",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "General Information",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 223, 239),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Questions",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View all",
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: generalQuestions.length,
                itemBuilder: (context, index) {
                  return buildExpansionTile(
                    title: generalQuestions[index]['title']!,
                    content: generalQuestions[index]['content']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildExpansionTile({
    required String title,
    required String content,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: ExpansionTile(
        title: Text(title, style: TextStyle(fontSize: 16)),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              content,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

class TechnicalInformationScreen extends StatelessWidget {
  final List<Map<String, String>> generalQuestions = [
    {
      "title": "What sensors does the Smart Glove use?",
      "content": "The glove uses motion sensors "
          "like accelerometers and gyroscopes to detect hand movements and flex sensors to measure finger bends."
    },
    {
      "title": "How does the glove connect to the app?",
      "content": "The Smart Glove uses Bluetooth technology to pair with the mobile app."
          " Ensure Bluetooth is enabled on your device."
    },
    {
      "title": "Can I use the glove without the app?",
      "content": "The app is required for translation, gesture tracking, and accessing additional features. However,"
          " pre-synced gestures may work offline in limited functionality."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Help & Support",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "How can we help you?",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Technical Information ",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 223, 239),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Questions",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View all",
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: generalQuestions.length,
                itemBuilder: (context, index) {
                  return buildExpansionTile(
                    title: generalQuestions[index]['title']!,
                    content: generalQuestions[index]['content']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildExpansionTile({
    required String title,
    required String content,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: ExpansionTile(
        title: Text(title, style: TextStyle(fontSize: 16)),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              content,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

class EnhancementsScreen extends StatelessWidget {
  final List<Map<String, String>> generalQuestions = [
    {
      "title": "Are there plans for new gesture libraries or language support?",
      "content": "We’re continually adding new gesture libraries and expanding to support more sign languages."
          " Updates will be announced via the app or email."
    },
    {
      "title": "Can the app integrate with third-party software? ",
      "content": "Yes, integrations with accessibility tools and platforms like speech-to-text software are supported in the app."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Help & Support",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "How can we help you?",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Enhancements ",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 223, 239),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Questions",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View all",
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: generalQuestions.length,
                itemBuilder: (context, index) {
                  return buildExpansionTile(
                    title: generalQuestions[index]['title']!,
                    content: generalQuestions[index]['content']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildExpansionTile({
    required String title,
    required String content,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: ExpansionTile(
        title: Text(title, style: TextStyle(fontSize: 16)),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              content,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

class TroubleshootingScreen extends StatelessWidget {
  final List<Map<String, String>> generalQuestions = [
    {
      "title": "What should I do if the glove stops working?",
      "content": "Ensure the glove is charged, and Bluetooth is enabled on your device."
          " Restart both the glove and app, and try reconnecting."
    },
    {
      "title": "Why are gestures not recognized correctly?",
      "content": "Check if the glove is worn properly and recalibrate the sensors in the app. "
          "Ensure no obstructions block the sensors."
    },
    {
      "title": "What should I do if the app crashes?",
      "content": "Update the app to the latest version, clear its cache, and restart your device. If the issue persists, contact support."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Help & Support",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "How can we help you?",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Troubleshooting ",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 223, 239),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Questions",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View all",
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: generalQuestions.length,
                itemBuilder: (context, index) {
                  return buildExpansionTile(
                    title: generalQuestions[index]['title']!,
                    content: generalQuestions[index]['content']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildExpansionTile({
    required String title,
    required String content,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: ExpansionTile(
        title: Text(title, style: TextStyle(fontSize: 16)),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              content,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

class DataPrivacyScreen extends StatelessWidget {
  final List<Map<String, String>> generalQuestions = [
    {
      "title": "Is my data secure?",
      "content": "Yes, the app encrypts all data in transit and at rest, ensuring your privacy and security."
    },
    {
      "title": "Does the app share data with third parties?",
      "content": "No personal data is shared with third parties without user consent. Only aggregated,"
          " anonymized data may be used for research."
    },
    {
      "title": "Can I delete my data?",
      "content": "Yes, users can delete their accounts and all associated data through the app’s 'Privacy' section"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Help & Support",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "How can we help you?",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: " Data and Privacy",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 223, 239),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Questions",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View all",
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: generalQuestions.length,
                itemBuilder: (context, index) {
                  return buildExpansionTile(
                    title: generalQuestions[index]['title']!,
                    content: generalQuestions[index]['content']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildExpansionTile({
    required String title,
    required String content,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: ExpansionTile(
        title: Text(title, style: TextStyle(fontSize: 16)),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              content,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturesScreen extends StatelessWidget {
  final List<Map<String, String>> generalQuestions = [
    {
      "title": "What is the Smart Glove, and how does it work?",
      "content": "The Smart Glove is an innovative device designed to translate sign language gestures into text or speech using advanced motion sensors. "
          "It connects to a mobile app for real-time processing and feedback."
    },
    {
      "title": "Is the glove compatible with all devices and operating systems?",
      "content": "The Smart Glove app is compatible with iOS and Android devices, requiring Bluetooth connectivity."
          " Ensure your OS is version X.X or higher for smooth functionality."
    },
    {
      "title": "Are there reminders or motivational features included?",
      "content": "Yes, users can set daily reminders for practice sessions and earn badges for achieving milestones."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Help & Support",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "How can we help you?",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Features ",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color.fromARGB(255, 217, 223, 239),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Questions",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View all",
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: generalQuestions.length,
                itemBuilder: (context, index) {
                  return buildExpansionTile(
                    title: generalQuestions[index]['title']!,
                    content: generalQuestions[index]['content']!,
                    backgroundColor: Colors.white,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildExpansionTile({
    required String title,
    required String content,
    required Color backgroundColor,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: ExpansionTile(
        title: Text(title, style: TextStyle(fontSize: 16)),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              content,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}





