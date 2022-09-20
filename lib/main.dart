import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Construindo layouts"),
          ),
          body: corpo()),
    );
  }
}

Widget corpo() {
  return Column(
    children: [
      Expanded(flex: 1, child: icones()),
      Expanded(flex: 5, child: imagem()),
      Expanded(flex: 4, child: caixa())
    ],
  );
}

Widget icones() {
  return Row(
    children: const <Widget>[
      Expanded(child: Icon(Icons.home)),
      Expanded(child: Icon(Icons.access_time)),
      Expanded(child: Icon(Icons.account_balance)),
      Expanded(child: Icon(Icons.add_a_photo)),
    ],
  );
}

Widget imagem() {
  //para exibir uma imagem da internet
  return Image.network(
    'https://www.unifacef.com.br/wp-content/uploads/2016/02/logo-300x70.png',
  );
}

Widget caixa() {
  return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(10.0),
      alignment: Alignment.topCenter,
      width: 400,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xffa3ba78),
      ),
      child: text());
}

Widget text() {
  return Column(
    children: [
      Expanded(
        flex: 16,
        child: const Text("Exemplo de layout Flutter",
            style: TextStyle(fontSize: 25)),
      ),
      Expanded(
        flex: 2,
        child: textvazio(),
      )
    ],
  );
}

Widget textvazio() {
  return Row(
    children: [
      Expanded(
        flex: 10,
        child: const Text(""),
      ),
      Expanded(
        flex: 0,
        child: const Text("Desenvolvido por Maria F. M. Reis",
            style: TextStyle(
                fontSize: 16,
                color: Color(0xff0940a8),
                fontWeight: FontWeight.bold)),
      )
    ],
  );
}
