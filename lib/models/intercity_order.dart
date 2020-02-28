class InterCityOrder {
  final int id;
  final DateTime when;
  final String fromCity;
  final String fromStreet;
  final String fromBuild;
  final String fromPorch;
  final String toCity;
  final String toStreet;
  final String toBuild;
  final String comment;
  final double sum;
  final String phone;

  InterCityOrder(this.id, this.phone, this.fromCity, this.fromStreet, this.fromBuild, this.fromPorch, this.toCity, this.toStreet,
      this.toBuild, this.comment, this.sum, this.when);
}