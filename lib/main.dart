import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nike Shoes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> nikeShoes = [
    {
      'name': 'Nike ZoomX Vaporfly',
      'type': '',
      'color': '',
      'price': 28795,
    },
    {
      'name': 'Nike Air Zoom Pegasus',
      'type': 'Men\'s Road Running Shoes',
      'color': '',
      'price': 29995,
    },
    {
      'name': 'Nike ZoomX Vaporfly',
      'type': 'Men\'s Road Racing Shoe',
      'color': '',
      'price': 219695,
    },
    {
      'name': 'Nike Air Zoom Pegasus',
      'type': 'Older Kids\' Shoe',
      'color': 'White',
      'price': 26295,
    },
    {
      'name': 'Nike ZoomX Vaporfly',
      'type': 'Men\'s Shoes',
      'color': '',
      'price': 28295,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nike Shoes'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: nikeShoes.length,
        itemBuilder: (context, index) {
          final shoe = nikeShoes[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue[400],
                  child: Text('${index + 1}', style: TextStyle(color: Colors.white)),
                ),
                title: Text(
                  shoe['name'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Text(
                      shoe['type'],
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '\$${shoe['price']}',
                      style: TextStyle(
                        color: Colors.blue[400],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                trailing: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      'assets/images/${shoe['name']}.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
