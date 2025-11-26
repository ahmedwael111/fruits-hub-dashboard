import 'package:flutter/widgets.dart';
import 'package:fruits_hub_dashboard/featurs/view_orders/data/models/order_model.dart';
import 'package:fruits_hub_dashboard/featurs/view_orders/presentation/views/widgets/order_item.dart';

class ListOfOrderItem extends StatelessWidget {
  const ListOfOrderItem({super.key, required this.orders});
  final List<OrderModel> orders;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) => OrderItemWidget( order: orders[index],),
    );
  }
}
