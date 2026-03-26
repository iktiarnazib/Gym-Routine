import 'package:flutter/material.dart';

class AllWorkout extends StatelessWidget {
  AllWorkout({super.key});

  String workouts =
      "Day 1 — Upper (Chest Focus)\n1. Bench Press – 3×5–8 ⭐ (NEW – strength builder)\n2. Incline Dumbbell Press – 4×8–12\n3. Flat Dumbbell Press – 3×8–12\n4. Dumbbell Chest Fly – 3×12–15\n5. Lat Pulldown – 3×8–12\n6. Seated Cable Row – 3×8–12 ⭐ (NEW – back thickness)\n7. Lateral Raises – 4×12–15\n8. Bicep Curls – 3×10–12\n9. Tricep Pushdowns – 3×10–12\n10. Hanging Leg Raises – 3×12–15\n\n⸻\n\nDay 2 — Lower Body\n1. Squats – 4×6–10\n2. Romanian Deadlift – 3×8–10\n3. Leg Press – 3×10–12\n4. Leg Extension – 3×12–15 ⭐ (NEW – quad detail)\n5. Standing Calf Raises – 4×12–15\n6. Plank – 3×45 sec\n\n⸻\n\nDay 3 — Rest\nWalk, stretch, chill.\n\n⸻\n\nDay 4 — Upper (Back + Shoulder Focus)\n1. Pull-ups / Lat Pulldown – 4×8–12\n2. Barbell Row – 4×8–12\n3. Dumbbell Shoulder Press – 4×8–12 - 7.5 kg\n4. Lateral Raises – 4×12–15 - 5kg\n5. Face Pulls – 3×12–15\n6. Hammer Curls – 3×10–12\n7. Overhead Tricep Extension – 3×10–12\n\n⸻\n\nDay 5 — Lower (Light + Core)\n1. Bulgarian Split Squats – 3×8–10\n2. Leg Curl – 3×10–12\n3. Calf Raises – 4×12–15\n4. Hanging Leg Raises – 3×12–15\n5. Cable Crunch – 3×15\n\n⸻\n\nDay 6 — Rest\n\nDay 7 — Rest\n```";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All workouts', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade900,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(workouts),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
