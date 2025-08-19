import 'package:booking_restaurant/data/model/booking.dart';
import 'package:flutter/material.dart';

class BookingFood extends StatelessWidget {
  const BookingFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Bookings")),
      body: bookingList.isEmpty
          ? Center(child: Text("No bookings yet"))
          : ListView.builder(
              itemCount: bookingList.length,
              itemBuilder: (context, index) {
                final item = bookingList[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Image.asset(item.image, width: 50, height: 50),
                    title: Text(item.name),
                    subtitle: Text("${item.address1}, ${item.address2}"),
                  ),
                );
              },
            ),
    );
  }
}
