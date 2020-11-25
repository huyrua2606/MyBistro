import 'package:flutter_app123/class/classingredient.dart';
class Dish{
  int MenuID;
  int DishID;
  // String ImgPath;
  String Name;
  String Price;
  // Ham khoi tao
  Dish(int menuid,int dishid,String name,String price){
    this.MenuID=menuid;
    this.DishID=dishid;
    // this.ImgPath=imgpath;
    this.Name=name;
    this.Price=price;
    // this.DishIngre=dishingre ;
  }
//getter
  get getMenuID{
    return this.MenuID;
  }
  get getDishID{
    return this.DishID;
  }
  // get getImgPath{
  //   return this.ImgPath;
  // }
  // get getDishIngre{
  //   return this.DishIngre;
  // }
  get getName{
    return this.Name;
  }

  get getPrice{
    return this.Price;
  }
//setter

}