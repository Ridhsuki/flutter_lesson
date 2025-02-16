import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
          color: Colors.white,
        ),
        title: Text(
          'Product Detail',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.network(
                  'https://i.etsystatic.com/41037372/r/il/8f320a/6115166170/il_570xN.6115166170_38jh.jpg',
                  width: 311,
                  height: 329,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   'A3D80D',
                    //   style: TextStyle(
                    //       color: Color(0xffA3D80D),
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 20),
                    //   textAlign: TextAlign.left,
                    // ),
                    Text(
                      'Hypebest Apes B',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Color(0xff0C0A19), fontSize: 20),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text('125 Sold'),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.watch_later_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text('1h 23m 32s')
                      ],
                    )
                  ],
                ),
                Icon(
                  Icons.analytics,
                  color: Color(0xff0C0A19),
                  size: 24,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black,
              )),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Each Apes NFT is a unique masterpiece, and crafted by artists around the globe.',
              style: TextStyle(),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Price',
                      style: TextStyle(),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      '2.23 ETH',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.shopping_bag, color: Colors.white, size: 20),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Add to cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
