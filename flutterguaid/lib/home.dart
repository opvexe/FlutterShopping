import 'package:flutter/material.dart';
import './productModel.dart';
import './bloc.dart';

class homeController extends StatefulWidget {
  @override
  _homeControllerState createState() => _homeControllerState();
}

class _homeControllerState extends State<homeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Text("商城"),
        centerTitle:false,
        actions: <Widget>[
          SizedBox(width: 5.0,),
          IconButton(
            icon:Icon(Icons.shopping_cart),
            onPressed: (){
              print("shopping");
            },),
            IconButton(
            onPressed: () {
              print("more ");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: productWidget(),
    );
  }
}
class productWidget extends StatelessWidget {
  ProductBloc productBloc = ProductBloc();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ProductModel>>(  //当stream 有新数据时，itemBuilder就会自动rebuild
      stream: productBloc.productItems,
      builder: (context,dataSouce){
        return dataSouce.hasData?_collectionWidget(dataSouce.data):Center(child: CircularProgressIndicator(),);  //如果有值，加载数值， 
      }
    );
  }

  Widget _collectionWidget(List<ProductModel>productModel){
    return GridView.count(
      crossAxisCount: 2,  //2行
      shrinkWrap: true,
      children: productModel.map((model)=>Padding(
        padding: EdgeInsets.all(8.0),
        child: InkWell(  //点击无水纹
          splashColor: Colors.yellow,
          child: Material(
            clipBehavior: Clip.antiAlias,
            elevation: 2.0,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.network(
                  model.image,
                  fit: BoxFit.cover,
                ),
                _desWiget(
                  model: model,
                ),
                _rateWidget(
                  model: model,
                ),
              ],
            ),
          ),
        ),
      ),  
      ).toList(),
    );
  }
}

class _rateWidget extends StatelessWidget {
  final ProductModel model;
  _rateWidget({this.model});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.0,
      left: 0.0,
      child: Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.9),
          borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
        ),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.star,
              size: 10.0,
              color: Colors.cyanAccent,
            ),
            SizedBox(width: 2.0,),
            Text(
              model.toString(),
              style: TextStyle(color: Colors.white, fontSize: 10.0),
            ),
          ],
        ),
      ),
    );
  }
}
//描述
class _desWiget extends StatelessWidget {
  final ProductModel model;
  _desWiget({this.model});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Text(
                  model.name,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

