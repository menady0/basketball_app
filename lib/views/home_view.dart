import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int teamA = 0, teamB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Points Counter",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "Team A",
                    style: Theme.of(
                      context,
                    ).textTheme.headlineLarge,
                  ),
                  Text(
                    "$teamA",
                    style: TextStyle(fontSize: 150),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(
                          vertical: 6,
                        ),
                    child: ElevatedButton(
                      onPressed: () =>
                          setState(() => teamA++),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.black,
                      ),
                      child: Text("Add 1 point"),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(
                          vertical: 6,
                        ),
                    child: ElevatedButton(
                      onPressed: () =>
                          setState(() => teamA += 2),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.black,
                      ),
                      child: Text("Add 2 point"),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(
                          vertical: 6,
                        ),
                    child: ElevatedButton(
                      onPressed: () =>
                          setState(() => teamA += 3),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.black,
                      ),
                      child: Text("Add 3 point"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 350,
                child: VerticalDivider(thickness: 1),
              ),
              Column(
                children: [
                  Text(
                    "Team B",
                    style: Theme.of(
                      context,
                    ).textTheme.headlineLarge,
                  ),
                  Text(
                    "$teamB",
                    style: TextStyle(fontSize: 150),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(
                          vertical: 6,
                        ),
                    child: ElevatedButton(
                      onPressed: () =>
                          setState(() => teamB++),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.black,
                      ),
                      child: Text("Add 1 point"),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(
                          vertical: 6,
                        ),
                    child: ElevatedButton(
                      onPressed: () =>
                          setState(() => teamB += 2),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.black,
                      ),
                      child: Text("Add 2 point"),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        setState(() => teamB += 3),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.black,
                    ),
                    child: Text("Add 3 point"),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 75),
          ElevatedButton(
            onPressed: () => setState(() {
              teamA = 0;
              teamB = 0;
            }),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.black,
              minimumSize: Size(140, 50),
            ),
            child: Text("Reset"),
          ),
        ],
      ),
    );
  }
}
