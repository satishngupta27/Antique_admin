import 'package:flutter/material.dart';
class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  Color white = Colors.white;
  Color grey = Colors.grey;
  Color black = Colors.black;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController productNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: Icon(Icons.close,color: black,),
        title: Text("Add Product",style: TextStyle(color: black),),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(padding: EdgeInsets.all(8),
                  child: OutlineButton(onPressed: (){},borderSide: BorderSide(color: grey.withOpacity(0.8)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.add,color: grey,),
                  ),),),
                ),
                Expanded(
                  child: Padding(padding: EdgeInsets.all(8),
                    child: OutlineButton(onPressed: (){},borderSide: BorderSide(color: grey.withOpacity(0.8)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(Icons.add,color: grey,),
                      ),),),
                ),
                Expanded(
                  child: Padding(padding: EdgeInsets.all(8),
                    child: OutlineButton(onPressed: (){},borderSide: BorderSide(color: grey.withOpacity(0.8)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(Icons.add,color: grey,),
                      ),),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Enter product name with not more than 10 characters.",textAlign: TextAlign.center,style: TextStyle(color: Colors.red),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: productNameController,
                decoration: InputDecoration(
                  hintText: 'Product name'
                ),
                validator: (value){
                  if(value.isEmpty){
                    return "product name can not be empty";
                  }else if(value.length>10){
                    return "product name cannot be more than 10 characters";
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
