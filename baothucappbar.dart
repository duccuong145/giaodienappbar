import 'package:flutter/material.dart';

class Baothucappbar extends StatelessWidget {
  const Baothucappbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Text(
                      'ZendVN',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: AspectRatio(
              aspectRatio: 2 / 0.5,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  10,
                  (index) => AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.blue.shade700,
                            Colors.blue.shade500,
                            Colors.blue.shade400,
                            Colors.blue.shade200,
                            Colors.blue.shade100,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'List Of Article',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Baothuc(),
                Baothuc(),
                Baothuc(),
                Baothuc(),
                Baothuc(),
                Baothuc(),
                Baothuc(),
                Baothuc(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Baothuc extends StatelessWidget {
  const Baothuc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '08:AM',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          height: 40,
          width: 250,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue.shade500,
              Colors.blue.shade400,
              Colors.blue.shade200,
              Colors.blue.shade100,
            ],
          )),
        )
      ],
    );
  }
}
