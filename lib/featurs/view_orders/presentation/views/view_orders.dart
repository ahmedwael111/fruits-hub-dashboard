import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/featurs/view_orders/presentation/views/widgets/view_order_body.dart';

class ViewOrders extends StatelessWidget {
  const ViewOrders({super.key});
  static const routeName = '/viewOrders';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Orders'),
        automaticallyImplyLeading: true,
        centerTitle: true,
      ),
      body: ViewOrderBody(),
    );
  }
}
