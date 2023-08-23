import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  late int followers = 0;
  late int posts = 0;
  late String name = 'chinguun';

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Text(
            'iCodegram',
            style: TextStyle(fontFamily: 'Lobster', fontSize: 26),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                maxRadius: 45,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Text(name),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text('$followers followers'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 7),
                    child: Text('$posts posts'),
                  )
                ],
              )
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          SizedBox(
            height: 35,
            width: 343,
            child: OutlinedButton(onPressed: () {}, child: const Text('Edit Profile', style: TextStyle(color: Colors.white))),
          ),
          const SizedBox(
            height: 34,
          ),
          Container(
            width: 450,
            height: 37,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1
                ),
                top: BorderSide(
                  color: Colors.grey,
                  width: 1
                )
              )
            ),
            child: const Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 15)),
                Icon(Icons.grid_on_sharp),
                Padding(padding: EdgeInsets.only(left: 20)),
                Text('Posts', style: TextStyle(fontFamily: 'Rubik', fontWeight: FontWeight.bold, fontSize: 15),)
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 549,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.image_search_rounded, size: 40, color: Colors.grey,),
                Text('You don\'t have any post yet')
              ],
            ),
          )
        ],
      )),
    );
  }
}
