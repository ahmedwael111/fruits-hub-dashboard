import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/utils/order_dymmy_data.dart';
import 'package:fruits_hub_dashboard/featurs/view_orders/presentation/views/widgets/filter_section.dart';
import 'package:fruits_hub_dashboard/featurs/view_orders/presentation/views/widgets/list_of_order_item.dart';
import 'package:fruits_hub_dashboard/featurs/view_orders/presentation/views/widgets/order_item.dart';

class ViewOrderBody extends StatelessWidget {
  const ViewOrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 20),
          FilterSection(),
          SizedBox(height: 20),
          Expanded(
            child: ListOfOrderItem(
              orders: [
                getDummyOrder(),
                getDummyOrder(),
                getDummyOrder(),
                getDummyOrder(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
