import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomContentWidget(),
              CustomContentWidget(),
              CustomContentWidget(),
              CustomContentWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContentWidget extends StatelessWidget {
  const CustomContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: 400,
      height: 350,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 360,
            child: Image.network(
              "https://picsum.photos/id/1/300/200",
              fit: BoxFit.fitWidth,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Image 1"),
              CupertinoButton.filled(
                child: Text("open"),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
