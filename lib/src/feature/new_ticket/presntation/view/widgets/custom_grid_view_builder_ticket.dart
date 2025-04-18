import 'package:doorak/src/core/style/icon/icon_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/feature/new_ticket/domain/model/home_model.dart';
import 'package:doorak/src/feature/new_ticket/presntation/view/widgets/custom_new_ticket_design.dart';
import 'package:flutter/material.dart';

class CustomGridViewBuilderTicket extends StatefulWidget {
  const CustomGridViewBuilderTicket({super.key});

  @override
  State<CustomGridViewBuilderTicket> createState() =>
      _CustomGridViewBuilderTicketState();
}

class _CustomGridViewBuilderTicketState
    extends State<CustomGridViewBuilderTicket> {
  List<HomeModel> list = [
    HomeModel(image: IconApp.hospital, text: AppText.hospitalsEN),
    HomeModel(image: IconApp.group, text: AppText.govDepartmentsEN),
    HomeModel(image: IconApp.certificate, text: AppText.licensingEN),
    HomeModel(image: IconApp.university, text: AppText.universitiesEN),
    HomeModel(image: IconApp.airport, text: AppText.airportsEN),
    HomeModel(image: IconApp.embassy, text: AppText.embassiesEN),
    HomeModel(image: IconApp.certificate, text: AppText.unionsEN),
    HomeModel(image: IconApp.physical, text: AppText.museumsEN),
    HomeModel(image: IconApp.hotel, text: AppText.hotelsEN),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 27.0), // المسافة من الأطراف
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // عدد الأعمدة
            crossAxisSpacing: 11.0, // المسافة بين الأعمدة
            mainAxisSpacing: 11.0, // المسافة بين الصفوف
            childAspectRatio: 106 / 110, // النسبة بين العرض والطول
          ),
          itemCount: list.length,
          key: const PageStorageKey('grid_key'),
          itemBuilder: (context, index) {
            return CustomNewTicketDesign(
              homeModel: list[index],
            );
          },
        ),
      ),
    );
  }
}
