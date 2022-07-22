import 'package:flutter/material.dart';

class SpoonShop extends StatelessWidget {
  const SpoonShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'SPOON SHOP',
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _PayColumn(),
              const SizedBox(
                height: 20.0,
              ),
              _PayColumn(),
              const SizedBox(
                height: 20.0,
              ),
              _PayColumn(),
              const SizedBox(
                height: 20.0,
              ),
              _PayColumn(),
            ],
          ),
        ));
  }
}

class _PayColumn extends StatelessWidget {
  const _PayColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '107',
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  TextSpan(
                      text: ' SPOON',
                      style: TextStyle(
                        color: Colors.black,
                      )
                      // style: TextStyle(fontWeight: )
                      ),
                ],
              ),
            ),
            Text(
              '94스푼 + 보너스 13',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '33,000원',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(
                      80.0,
                      30.0,
                    ),
                    //side: BorderSide(),
                  ),
                  onPressed: () {},
                  child: Text('구매'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
