import 'package:flutter/material.dart';
import 'dart:async';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  int seconds = 0;
  late Timer timer;
  bool _isTicking = true;

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void _onTick(Timer timer){
    setState(() {
      seconds++;
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   timer = Timer.periodic(const Duration(seconds: 1), _onTick);
  // }

  void _startTimer(){
    timer = Timer.periodic(const Duration(seconds: 1), _onTick);
    setState(() {
      _isTicking = false;
    });
  }

  void _stopTimer(){
    timer.cancel();
    setState(() {
      _isTicking = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stop Watch'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$seconds seconds',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _isTicking ? _startTimer : null,
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text('Start'),
                ),
                const Padding(padding: EdgeInsets.only(right: 20)),
                ElevatedButton(
                  onPressed: _isTicking ? null : _stopTimer,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text('Stop'),
                ),
              ],
            )
          ],
        )));
  }
}
