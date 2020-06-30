



class NGO{
  int pos;
  String name;
  String headQuarters;
  String logoImage;
  String description;
  List<String> images;



  NGO({this.pos,this.name, this.headQuarters, this.logoImage, this.images, this.description});
}


List<NGO>ngos=[
  NGO(pos: 1, name:'Brac', headQuarters: 'Bangladesh', description:'',logoImage: '',
  images: [],),
  NGO(pos: 2, name:'Akshaya Patra', headQuarters:'Bengaluru, India', logoImage: '' ,description: '',
      images: [], ),
  NGO(pos: 3, name:' Green Shoots Foundation', headQuarters: 'London, United Kingdom', description: '', logoImage: '',
  images: [],),
  NGO(pos: 4, name: '')


];