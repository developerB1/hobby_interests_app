import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart'; // Importiere das intl-Paket für die Datumskonvertierung

class EventListScreen extends StatelessWidget {
  const EventListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final firestore = FirebaseFirestore.instance;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Events'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestore.collection('events').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final events = snapshot.data!.docs;

          return ListView.builder(
            itemCount: events.length,
            itemBuilder: (context, index) {
              final event = events[index];
              final eventName = event['title'];
              final eventDescription = event['description'];
              final eventDateTimestamp = event['date'] as Timestamp;
              final eventDate = eventDateTimestamp
                  .toDate(); // Konvertiere Timestamp zu DateTime
              final formattedDate = DateFormat.yMMMd()
                  .add_Hm()
                  .format(eventDate); // Formatierung des Datums

              return Card(
                child: ListTile(
                  title: Text(eventName),
                  subtitle: Text('$eventDescription\n$formattedDate'),
                  onTap: () {
                    // Hier kannst du den Event-Detailbildschirm oder andere Aktionen hinzufügen
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Hier kannst du den Event-Erstellbildschirm oder andere Aktionen hinzufügen
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
