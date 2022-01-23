import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class PetName extends StatelessWidget {
  final String name;
  const PetName(this.name);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Colors.blueAccent),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Pet App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Pet App'),
        ),
        body: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const PetName('Bird'),
              const SizedBox(height: 8.0),
              Image.network(
                'https://img.xcitefun.net/users/2014/11/367870,xcitefun-baby-birds-2.jpg',
                width: 120.0,
                height: 100.0,
              )
            ]),
            const SizedBox(width: 8.0),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const PetName('Dog'),
              const SizedBox(height: 8.0),
              Image.network(
                'https://www.dogbreedhealth.com/wp-content/uploads/2011/05/Samoyed.jpg',
                width: 120.0,
                height: 100.0,
              )
            ]),
            const SizedBox(width: 8.0),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const PetName('Cat'),
              const SizedBox(height: 8.0),
              Image.network(
                'https://www.letuspublish.com/wp-content/uploads/2017/04/kitten-wallpaper-for-android.jpg',
                width: 120.0,
                height: 100.0,
              )
            ]),
            const SizedBox(width: 8.0)
          ]),
        ),
      ),
    );
  }
}
