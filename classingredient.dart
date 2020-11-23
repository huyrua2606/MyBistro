class IngredientClass{
  int InID;
  String CalUnit;
  // String ImgPath;
  String Name;

  int MinQuantity;
  // Ham khoi tao
IngredientClass(int Inid,String calcunit,String name,int Minquantity){
  this.InID=Inid;
  // this.ImgPath=imgpath;
  this.CalUnit=calcunit;
  this.Name=name;
  this.MinQuantity=Minquantity;
}
//getter
get getInID{
  return this.InID;
}
  get getCalunit{
    return this.CalUnit;
  }
  // get getImgPath{
  //   return this.ImgPath;
  // }
  get getName{
    return this.Name;
  }

  get getMinQuantity{
    return this.MinQuantity;
  }


//setter
  void set setInID1(int inid){
    this.InID=inid;
  }
  // void set setCalUnit(String imgpath){
  //   this.CalUnit=imgpath;
  // }
  void set setName1(String name){
    this.Name=name;
  }
  void set setCalcunit(String calcunit){
    this.CalUnit=calcunit ;
  }
  void set setMinQuantity1(int minquantity){
    this.MinQuantity=minquantity;
  }

  void setName(String value) {
    this.Name=value;
  }

  void setCalUnit(String default_choice) {
    this.CalUnit=default_choice;
  }

  void setMinQuantity(String value) {
    this.MinQuantity=value as int;
  }

  void setInID(int i) {
    this.InID=i;
  }





}