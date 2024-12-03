import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/product_model.dart';
import '../services/product_service.dart';
import '../widgets/custom_stack.dart';

class HomePage extends StatefulWidget {
  static String id = "HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic future;

  @override
  void initState() {
    print("ppppppppppppppppppppppppppppppppppppppppppp$future");

    future= ProductService().get_product();
    print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm$future");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text("New Trend"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 70,left: 16,right: 16),
        child: FutureBuilder<List<ProductModel>>(
          future: future,
          builder: (context, snapshot) {
            if(snapshot.hasData){
              print("0000000000000000000000000000000000000000000"+snapshot.data.toString());
              return Center(
                child: GridView.builder(
                  itemCount:snapshot.data?.length,
                  clipBehavior: Clip.none,
                  //ratio of width to height
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 4 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 70
                  ),
                  itemBuilder: (context, index) => CustomStack(products:snapshot.data![index]),
                ),
              );
            }else{
              print(".................................."+snapshot.data.toString());
              return Center(
                child: CircularProgressIndicator(),
              );
            }

          }

        ),
      ),
    );
  }
}
