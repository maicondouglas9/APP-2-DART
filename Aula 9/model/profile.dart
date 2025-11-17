class Profile {
  
  String? name;
  String? image;
  bool? like;

  Profile({this.name, this.image, this.like});

  @override
  String toString(){
    return "Name: $name / Imagem: $image / Like: $like \n";
  }
}