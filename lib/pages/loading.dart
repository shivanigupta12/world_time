import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime instance =
        WorldTime(location: 'india', flag: 'image.png', url: 'Asia/Kolkata');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {

    'location': instance.location,
    'flag': instance.flag,
    'time': instance.time,
    // 'isDaytime': instance.isDaytime,
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
        body: Center(
          child: SpinKitSpinningLines(
           color: Colors.white,
            size: 80.0,
),
        )
    );
  }

  void get(String s) {}
}

// @override
// Widget build(BuildContext context) {
//   // TODO: implement build
//   return Scaffold(
//     ),
//   );
// }

class Response {
  Object? get body => null;
}
