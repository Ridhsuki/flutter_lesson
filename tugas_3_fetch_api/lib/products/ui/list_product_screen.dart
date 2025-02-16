import 'package:flutter/material.dart';

class ListProductScreen extends StatefulWidget {
  const ListProductScreen({super.key});

  @override
  State<ListProductScreen> createState() => _ListProductScreenState();
}

class _ListProductScreenState extends State<ListProductScreen> {
  List dummy = ['one', 'two', 'three'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            )),
        title: Text(
          'List of Product',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                // padding: EdgeInsets.only(top: 68.19, left: 5, bottom: 5),
                itemCount: dummy.length,
                itemBuilder: (context, dummy) {
                  return ListTile(
                    contentPadding: EdgeInsets.all(10),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: Image.network(
                        'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg',
                      ),
                    ),
                    title: Text('Product'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Lorem ipsum dolor sit amet'),
                        Text('Price'),
                      ],
                    ),
                    
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/detail-product');
                        },
                        icon: Icon(Icons.arrow_forward_ios_rounded)),
                  );
                }),
          )
        ],
      ),
    );
  }
}
