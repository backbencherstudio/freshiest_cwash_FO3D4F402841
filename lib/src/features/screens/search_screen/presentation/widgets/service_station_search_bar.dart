import 'package:flutter/material.dart';

class ServiceStationSearchbar extends StatelessWidget{
  const ServiceStationSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      backgroundColor: WidgetStatePropertyAll(Colors.white),
      elevation: WidgetStatePropertyAll(0),
      hintText: "Search by Location",
      hintStyle: WidgetStatePropertyAll(Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black.withValues(alpha: 0.5)),),
      leading: Icon(Icons.search),
    );
  }
}