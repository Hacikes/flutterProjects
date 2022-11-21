import 'package:flutter/material.dart';
import 'quote.dart';

void main()  => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  //Формируем список в соотвествии с параметрами класса quote.dart
  List<Quote> quotes = [
    Quote(text: 'Who understood that understood', author: 'TGQA'),
    Quote(text: 'Who understood that understood', author: 'TGQA'),
    Quote(text: 'Who understood that understood', author: 'TGQA')
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // Берем цитату и выводим её, в конце превращая её в список
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),

      ),
    );
  }
}

