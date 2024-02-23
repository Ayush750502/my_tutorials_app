import "package:flutter/material.dart";

class TestActivity extends StatefulWidget {
  const TestActivity({super.key});

  @override
  State<TestActivity> createState() => _TestActivityState();
}

class _TestActivityState extends State<TestActivity> {
  String val = " ";

  void changeString(inputText) {
    setState(() {
      val = inputText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Please Enter some value"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              "'$val'",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Please enter something here",
                    hintText: "ABC123ghi",
                  ),
                  onChanged: changeString,
                )),
          ],
        ),
      ),
    );
  }
}
