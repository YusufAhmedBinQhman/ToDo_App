import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app/core/constants/app_image.dart';
import 'package:to_do_app/core/view/widgets/cust_bottom_navigation.dart';
import 'package:to_do_app/core/view/widgets/cust_container_to_do.dart';
import 'package:to_do_app/core/view/widgets/cust_task_complete_rate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    loadUser();
  }

  bool checkboxValue = false;
  String? userName;
  Future<String?> loadUser() async {
    final SharedPreferences prefUser = await SharedPreferences.getInstance();
    String? user = prefUser.getString("User_Name");
    setState(() {
      userName = user;
    });
    return userName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //AppBar
              Row(
                spacing: 5,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage(AppImage.bottomProfileOn),
                  ),
                  Column(
                    spacing: 3,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Evening ,${userName}",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        "One task at a time.One step closer.",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xff282828),
                    child: Image.asset(AppImage.lightMode),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Yuhuu ,Your work Is almost done !",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 10),
              CustContainerToDo(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //text
                    Column(
                      spacing: 3,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Achieved Tasks",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          "3 Out of 6 Done",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    //analysis
                    CustTaskCompleteRate(completionRate: 80),
                  ],
                ),
              ),
              //High Tasks
              CustContainerToDo(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "High Priority Tasks",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Checkbox(
                            value: checkboxValue,
                            onChanged: (val) {
                              setState(() {
                                checkboxValue = val!;
                              });
                              print(checkboxValue);
                            },
                          ),
                          title: Text(
                            "Finish video in flutter Course",
                            style: TextStyle(
                              fontSize: 14,
                              color:
                                  checkboxValue
                                      ? Color(0xffA0A0A0)
                                      : Colors.white,
                              // fontWeight: FontWeight.bold,
                              decoration:
                                  checkboxValue
                                      ? TextDecoration.lineThrough
                                      : null,
                              decorationColor: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              //My Tasks
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "My Tasks",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              CustContainerToDo(
                child: Row(
                  spacing: 5,
                  children: [
                    Checkbox(
                      value: checkboxValue,
                      onChanged: (val) {
                        setState(() {
                          checkboxValue = val!;
                        });
                        print(checkboxValue);
                      },
                    ),
                    Text(
                      "Finish video in flutter Course",
                      style: TextStyle(
                        fontSize: 14,
                        color: checkboxValue ? Color(0xffA0A0A0) : Colors.white,
                        // fontWeight: FontWeight.bold,
                        decoration:
                            checkboxValue ? TextDecoration.lineThrough : null,
                        decorationColor: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.list),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustBottomNavigation(),
    );
  }
}
