import 'package:delivery_app_ui/screens/main_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.indigo[200]!.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'drone.png',
                width: size.width * 0.4,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "All your parcels, available in one place",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MainScreen()));
              },
              child: Container(
                width: size.width * 0.8,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: size.width * 0.8,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.indigo[100],
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Center(
                child: Text(
                  "Sign up with email",
                  style: TextStyle(
                    color: Colors.indigo,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "By signing up, you agree to our",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Terms & Privacy policy",
              style: TextStyle(
                color: Colors.indigo,
              ),
            )
          ],
        ),
      ),
    );
  }
}
