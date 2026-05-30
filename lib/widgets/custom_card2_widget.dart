import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {

  final String? title;
  final String url;

  const CustomCard2({
    this.title, 
    required this.url,
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(url),
            height: 270,
            fit: BoxFit.cover,
          ),
          title == '' ? Container() :
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                const Text('Cillum adipisicing deserunt ex nostrud laborum esse.'),
              ],
            ),
          )
        ],
      ),
    );
  }
}