import 'package:flutter/material.dart';
import 'package:mentalhealthapp/utilities/emojis_face.dart';
import 'package:mentalhealthapp/utilities/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade800,
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ]),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    //GREETINGS
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Hi CoConut
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi CoConut!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '21 Feb, 2023',
                              style: TextStyle(color: Colors.blue.shade200),
                            )
                          ],
                        ),

                        //Notification
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue.shade600,
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 25),

                    //SEARCH BAR
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade600,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.white),
                          SizedBox(width: 5.0),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 25),

                    //HOW DO YOU FEEL

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'How do tou feel?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 25),

                    // 4 DIFFERENT EMOJIS

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //BAD
                        Column(
                          children: [
                            EmojiFace(
                              emojiFace: '😔',
                            ),
                            SizedBox(height: 8, width: 8),
                            Text(
                              'Bad',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),

                        //FINE
                        Column(
                          children: [
                            EmojiFace(
                              emojiFace: '😊',
                            ),
                            SizedBox(height: 8, width: 4),
                            Text(
                              'Fine',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),

                        //WELL
                        Column(
                          children: [
                            EmojiFace(
                              emojiFace: '🤩',
                            ),
                            SizedBox(height: 8, width: 4),
                            Text(
                              'Well',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),

                        //EXCELLENT
                        Column(
                          children: [
                            EmojiFace(
                              emojiFace: '😍',
                            ),
                            SizedBox(height: 8, width: 4),
                            Text(
                              'Excellent',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(25.0),
                  color: Colors.grey.shade100,
                  child: Center(
                    child: Column(
                      children: [
                        //exercise heading
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Exercises',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                        SizedBox(height: 20),

                        //list  of exercise
                        Expanded(
                          child: ListView(
                            children: [
                              ExerciseTile(
                                icon: Icons.favorite,
                                exerciseName: 'Speaking Skills',
                                numberOfExercise: 16,
                                color: Colors.orange,
                              ),
                              ExerciseTile(
                                icon: Icons.person,
                                exerciseName: 'Reading Skills',
                                numberOfExercise: 10,
                                color: Colors.pink.shade400,
                              ),
                              ExerciseTile(
                                icon: Icons.star,
                                exerciseName: 'Writing Skills',
                                numberOfExercise: 13,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
