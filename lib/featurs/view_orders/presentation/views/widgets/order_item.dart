import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/featurs/view_orders/data/models/order_model.dart';

import 'package:flutter/material.dart';

class OrderItemWidget extends StatelessWidget {
  final OrderModel order;

  const OrderItemWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Order Header
            Text(
              'Order ID: ${order.uId}',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),

            const SizedBox(height: 12),

            Text("Payment: ${order.paymentMethod}"),
            Text("Total: \$${order.totalPrice.toStringAsFixed(2)}"),

            const SizedBox(height: 12),

            /// Shipping Address
            const Text(
              "Shipping Address:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Name: ${order.shippingAddressModel.name}"),
            Text("Phone: ${order.shippingAddressModel.phoneNumber}"),
            Text("Address: ${order.shippingAddressModel}"),

            const SizedBox(height: 12),

            /// Product List
            const Text(
              "Products:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),

            Column(
              children:
                  order.orderProductModelList.map((product) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade100,
                      ),
                      child: Row(
                        children: [
                          /// Product Image
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              product.image,
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                              errorBuilder:
                                  (_, __, ___) =>
                                      const Icon(Icons.image_not_supported),
                            ),
                          ),

                          const SizedBox(width: 10),

                          /// Product Info
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Qty: ${product.quantity}"),
                                Text(
                                  "Price: \$${product.price.toStringAsFixed(2)}",
                                ),
                              ],
                            ),
                          ),

                          /// Total For This Product
                          Text(
                            "\$${(product.price * product.quantity).toStringAsFixed(2)}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
