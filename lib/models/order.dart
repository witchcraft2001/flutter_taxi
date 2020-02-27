class Order {
  final int id;
  final DateTime when;
  final String fromStreet;
  final String fromBuild;
  final String fromPorch;
  final String toStreet;
  final String toBuild;
  final String comment;
  final double sum;
  final String phone;

  Order(this.id, this.phone, this.fromStreet, this.fromBuild, this.fromPorch, this.toStreet,
      this.toBuild, this.comment, this.sum, this.when);
}