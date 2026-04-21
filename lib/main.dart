import 'package:flutter/material.dart';

void main() => runApp(const OnyxFlowApp());

class OnyxFlowApp extends StatelessWidget {
  const OnyxFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onyx Flow 💎',
      theme: ThemeData(
        brightness: Brightness.dark, // ثيم غامق فخم
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: const Color(0xFF121212),
      ),
      home: const OnyxListScreen(),
    );
  }
}

class OnyxListScreen extends StatelessWidget {
  const OnyxListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = ["Onyx Watch ⌚", "Tech Gear ⚙️", "Dark Blade 🗡️"];

    return Scaffold(
      appBar: AppBar(title: const Text("Onyx Vault 💎"), backgroundColor: Colors.blueGrey[900]),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey[900],
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: ListTile(
              title: Text(items[index], style: const TextStyle(color: Colors.blueGrey)),
              trailing: const Icon(Icons.code, color: Colors.blueAccent),
              onTap: () async {
                // تمرير البيانات
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnyxDetailScreen(itemName: items[index])),
                );
                // استقبال البيانات
                if (result != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(result), backgroundColor: Colors.blueAccent),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}

class OnyxDetailScreen extends StatelessWidget {
  final String itemName;
  const OnyxDetailScreen({super.key, required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Item Specs"), backgroundColor: Colors.black),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.layers, size: 80, color: Colors.blueAccent),
            Text("Selected: $itemName", style: const TextStyle(fontSize: 22, color: Colors.blueGrey)),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
              onPressed: () => Navigator.pop(context, "Added to Onyx Inventory! 🛠️"),
              child: const Text("Confirm Selection", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}