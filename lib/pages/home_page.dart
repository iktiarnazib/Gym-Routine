import 'package:flutter/material.dart';
import 'package:newgen/pages/all_workout.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 1;

  @override
  void initState() {
    loadNumber();
    super.initState();
  }

  //load number
  Future loadNumber() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      number = prefs.getInt('counter') ?? 1;
    });
  }

  //save number
  Future saveNumber() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', number);
  }

  Future decrement() async {
    if (number <= 7) {
      setState(() {
        number--;
        if (number == 0) {
          number = 7;
        }
      });
    }
    saveNumber();
  }

  Future increment() async {
    if (number <= 7) {
      setState(() {
        number++;
        if (number == 8) {
          number = 1;
        }
      });
      saveNumber();
    }
  }

  List<String> gymlist = [
    "🔥Day 1 — Upper (Chest Focus)\n1.	Bench Press – 3×5–8\n2.	Incline Dumbbell Press – 4×8–12\n3.	Flat Dumbbell Press – 3×8–12\n4.	Dumbbell Chest Fly – 3×12–15\n5.	Lat Pulldown – 3×8–12\n6.	Seated Cable Row – 3×8–12\n7.	Lateral Raises – 4×12–15\n8. Bicep Curls – 3×10–12\n9.	Tricep Pushdowns – 3×10–12\n10.	Hanging Leg Raises – 3×12–15",
    "🦵Day 2 — Lower Body\n1.\tSquats – 4×6–10\n2.\tRomanian Deadlift – 3×8–10\n3.\tLeg Press – 3×10–12\n4.\tLeg Extension – 3×12–15 ⭐ (NEW – quad detail)\n5.\tStanding Calf Raises – 4×12–15\n6.\tPlank – 3×45 sec",
    "😌Day 3 — Rest\nWalk, stretch, chill.",
    "🔥Day 4 — Upper (Back + Shoulder Focus)\n1.\tPull-ups / Lat Pulldown – 4×8–12\n2.\tBarbell Row – 4×8–12\n3.\tDumbbell Shoulder Press – 4×8–12 - 7.5 kg\n4.\tLateral Raises – 4×12–15 - 5kg\n5.\tFace Pulls – 3×12–15\n6.\tHammer Curls – 3×10–12\n7.\tOverhead Tricep Extension – 3×10–12",
    "🦵Day 5 — Lower (Light + Core)\n1.\tBulgarian Split Squats – 3×8–10\n2.\tLeg Curl – 3×10–12\n3.\tCalf Raises – 4×12–15\n4.\tHanging Leg Raises – 3×12–15\n5.\tCable Crunch – 3×15",
    "😴 Day 6 — Rest",
    "😴 Day 7 — Rest",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gym Routine', style: TextStyle(color: Colors.white)),
        centerTitle: false,
        backgroundColor: Colors.blue[900],
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AllWorkout();
                      },
                    ),
                  );
                },
                icon: Icon(Icons.archive, color: Colors.white),
              ),
              SizedBox(width: 15),
            ],
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Gym Routine 💪',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            if (number == 1)
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 400,
                width: 350,
                padding: EdgeInsets.all(20),
                child: Text(gymlist.elementAt(0)),
              ),
            if (number == 2)
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 400,
                width: 350,
                padding: EdgeInsets.all(20),
                child: Text(gymlist.elementAt(1)),
              ),
            if (number == 3)
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 400,
                width: 350,
                padding: EdgeInsets.all(20),
                child: Text(gymlist.elementAt(2)),
              ),
            if (number == 4)
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 400,
                width: 350,
                padding: EdgeInsets.all(20),
                child: Text(gymlist.elementAt(3)),
              ),
            if (number == 5)
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 400,
                width: 350,
                padding: EdgeInsets.all(20),
                child: Text(gymlist.elementAt(4)),
              ),
            if (number == 6)
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 400,
                width: 350,
                padding: EdgeInsets.all(20),
                child: Text(gymlist.elementAt(5)),
              ),
            if (number == 7)
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 400,
                width: 350,
                padding: EdgeInsets.all(20),
                child: Text(gymlist.elementAt(6)),
              ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                increment();
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(100, 60),
                backgroundColor: Colors.blue[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                '+',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  child: Text('Gym Day:', style: TextStyle(fontSize: 22)),
                ),
                Text(
                  ' $number',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(' 🔥', style: TextStyle(fontSize: 20)),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                decrement();
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(100, 60),
                backgroundColor: Colors.blue[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                '-',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
