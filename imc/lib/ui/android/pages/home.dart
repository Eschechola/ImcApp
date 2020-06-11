import 'package:flutter/material.dart';
import 'package:imc/blocs/imc.bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //instância do Bloc
  var imcBloc = new ImcBloc();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cálculo de IMC"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Altura (CM)"
              ),
              keyboardType: TextInputType.number,
              controller: imcBloc.heightCtrl,
            )
          ),

           Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Peso (KG)"
              ),
              keyboardType: TextInputType.number,
              controller: imcBloc.weightCtrl,
            )
          ),

          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              imcBloc.result,
              textAlign: TextAlign.center,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(20),
            child: FlatButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                "Calcular",
                style: TextStyle(
                  color: Colors.white
                ),
              ),

              onPressed: (){
                setState(() {
                  imcBloc.calculate();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}