import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    Key? key,
    required this.quote,
    required this.delete,
  }) : super(key: key);

  final Quote quote;

  final Function delete;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Wrap(
              direction: Axis.vertical,
              spacing: 6,
              children: [
                Text(quote.text,
                    style: TextStyle(fontSize: 18, color: Colors.grey[600])),
                Text(quote.author,
                    style: TextStyle(fontSize: 14, color: Colors.grey[800])),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            TextButton.icon(
                onPressed: () {
                  delete();
                },
                icon: const Icon(Icons.delete),
                label: const Text('Delete quote')),
          ],
        ),
      ),
    );
  }
}
