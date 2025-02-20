import 'package:flutter/material.dart';

class ListsPage extends StatefulWidget {
  const ListsPage({super.key});

  @override
  State<ListsPage> createState() => _ListsPageState();
}

class _ListsPageState extends State<ListsPage> {
  final listController = TextEditingController();
  final data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Lists Page',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: Row(children: [
                Expanded(
                  child: TextField(
                    controller: listController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), label: Text('Add List')),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 21),
                      backgroundColor: Colors.green),
                  onPressed: () {
                    if (listController.text == '') {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.red,
                          behavior: SnackBarBehavior.floating,
                          content: Text(
                            'Textfield harus di isi',
                            style: TextStyle(color: Colors.white),
                          )));
                    } else {
                      setState(() {
                        data.add(listController.text);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.green,
                            behavior: SnackBarBehavior.floating,
                            content: Text(
                              data.last + ' berhasil di tambahkan',
                              style: TextStyle(color: Colors.white),
                            )));
                      });
                      listController.clear();
                    }
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    trailing: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              data.remove(data[index]);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.red,
                                  behavior: SnackBarBehavior.floating,
                                  content: Text(
                                    'berhasil di di hapus',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        icon: Icon(
                          Icons.delete_rounded,
                          color: Colors.red,
                          size: 30.0,
                        )),
                    leading: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/list-detail');
                      },
                      icon: Icon(
                        Icons.arrow_right_alt_outlined,
                        color: Colors.blueAccent,
                        size: 30,
                      ),
                    ),
                    title: Text(
                      data[index],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    subtitle: Text('Descriptions'),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
