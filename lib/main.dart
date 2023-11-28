import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Access Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              const Center(
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.account_circle,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Greetings!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              SizedBox(height: 30),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              SizedBox(height: 35),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResultPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  child: Text('Access'),
                ),
              ),
              SizedBox(height: 35),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ),
              SizedBox(height: 200),
              Text('No account yet?'),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text('Create'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Package'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Hello Sir!',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Bus',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.place, color: Colors.green),
                            SizedBox(width: 8),
                            Text('Location 1'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.directions_bus, color: Colors.orange),
                            SizedBox(width: 8),
                            Text('Location 2'),
                          ],
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          child: Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              ),
              child: Text(
                'Search',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TICKET PRICE'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Payment Option'),
                ],
              ),
              SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.place, color: Colors.green),
                              SizedBox(width: 8),
                              Text('Location 1'),
                            ],
                          ),
                          Text(
                            '\$10',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.directions_bus, color: Colors.orange),
                              SizedBox(width: 8),
                              Text('Location 2'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Purchase Ticket'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
