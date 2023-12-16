class Beer {
  int idB;
  String name,tagline;
  String description;
  String beerUrl;

   Beer (this.idB, this.name,this.tagline,this.beerUrl,this.description);
   Beer.fromJson(Map<String, dynamic> json)
      : name = json["name"] ?? "No name",
        tagline = json["tagline"] ?? "No tag",
        description = json["description"] ?? "No description",
        beerUrl = json["image_url"] ?? "No format",
        idB = json["id"] ?? 0;
        
}