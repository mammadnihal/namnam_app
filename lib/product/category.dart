import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.imageAssets,
    //required this.gidilecekSayfa
  });

  final String imageAssets;
//final Widget gidilecekSayfa;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>gidilecekSayfa));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: AssetImage(imageAssets),
                  fit: BoxFit.cover),
              color: Colors.white),
        ),
      ),
      
    );
  }
}