import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../scteens/updateprodyct_page.dart';
class CustomStack extends StatelessWidget {
  ProductModel products;
  CustomStack({required this.products});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context,UpdateprodyctPage.id);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(

            decoration: BoxDecoration(
              //color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                      blurRadius: 40,
                      spreadRadius: 0,
                      offset: Offset(10, 10))
                ]),
            child: Card(
              color: Colors.white,
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      products.title,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r"$"+products.price.toString(),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom:65,
            left: 100,
            child: Image.network(
              products.image,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}
