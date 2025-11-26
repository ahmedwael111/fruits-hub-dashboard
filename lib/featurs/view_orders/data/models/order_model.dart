import 'package:fruits_hub_dashboard/featurs/view_orders/data/models/order_product_model.dart';
import 'package:fruits_hub_dashboard/featurs/view_orders/data/models/shipping_address_model.dart';

class OrderModel {
  // this is the model that will be sent to the server
  final String uId;
  final double totalPrice;
  final ShippingAddressModel shippingAddressModel;
  final List<OrderProductModel> orderProductModelList;
  final String paymentMethod;

  OrderModel({
    required this.uId,
    required this.totalPrice,
    required this.shippingAddressModel,
    required this.orderProductModelList,
    required this.paymentMethod,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
    uId: json['uId'],
    totalPrice: json['totalPrice'],
    shippingAddressModel: ShippingAddressModel.fromJson(
      json['shippingAddressModel'],
    ),
    orderProductModelList: List<OrderProductModel>.from(
      json['orderProductModelList'].map((x) => OrderProductModel.fromJson(x)),
    ),
    paymentMethod: json['paymentMethod'],
  );
  toJson() => {
    'uId': uId,
    'state': 'Pending',
    'date': DateTime.now().toString(),

    'totalPrice': totalPrice,
    'shippingAddressModel': shippingAddressModel.toJson(),
    'orderProductModelList':
        orderProductModelList.map((e) => e.toJson()).toList(),
    'paymentMethod': paymentMethod,
  };
}
