class Consultation {
  late String imgUrl, name;
  late String date; //in real app this will be DateTime instead of String
  
  Consultation(this.name, this.imgUrl, this.date);


  Consultation.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    imgUrl = json['imgUrl'];
    date = json['date'];
  }
}
