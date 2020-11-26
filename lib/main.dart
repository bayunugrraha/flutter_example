import 'package:flutter/material.dart';
import 'package:flutter_example/product_card.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: firstColor,
        ),
        body: ChangeNotifierProvider<ProductState>(
          create: (context) => ProductState(),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Align(
                alignment: Alignment.topCenter,
                child: Consumer<ProductState>(
                  builder: (context, productState, _) => ProductCard(
                    imageURL:
                        "https://lelogama.go-jek.com/cms_editor/2018/09/21/kuliner_asyik_bandung03.jpeg",
                    name: "Chesee Pizza Reguler",
                    price: "Rp15.000",
                    quantity: productState.quantity,
                    notification:
                        (productState.quantity > 5) ? "Diskon 10%" : null,
                    onAddCartTap: () {},
                    onIncTap: () {
                      productState.quantity++;
                    },
                    onDecTap: () {
                      productState.quantity--;
                    },
                  ),
                )),
          ),
        ),
      ),
    );
  }
}

class ProductState with ChangeNotifier {
  int _quantity = 0;

  int get quantity => _quantity;
  set quantity(int newValue) {
    _quantity = newValue;
    notifyListeners();
  }
}
