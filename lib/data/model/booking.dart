class BookingModel {
  final String name;
  final String address1;
  final String address2;
  final String image;

  BookingModel(Type buildContext, context, {
    required this.name,
    required this.address1,
    required this.address2,
    required this.image,
  });
}

List<BookingModel> bookingList = [];
