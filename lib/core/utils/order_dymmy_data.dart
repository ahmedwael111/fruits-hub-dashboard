import 'package:fruits_hub_dashboard/featurs/view_orders/data/models/order_model.dart';
import 'package:fruits_hub_dashboard/featurs/view_orders/data/models/order_product_model.dart';
import 'package:fruits_hub_dashboard/featurs/view_orders/data/models/shipping_address_model.dart';

OrderModel getDummyOrder() {
  return OrderModel(
    uId: "ORDER_123456",
    totalPrice: 249.99,
    paymentMethod: "Cash",
    shippingAddressModel: ShippingAddressModel(
      name: "Ahmed Hassan",
      email: "ahmed@example.com",
      address: "Street 12",
      city: "Cairo",
      phoneNumber: "01012345678",
      addressDeitails: "Apartment 10, 2nd Floor",
    ),
    orderProductModelList: [
      OrderProductModel(
        code: "IPHONE_13_PRO_MAX",
        title: "iPhone 13 Pro Max",
        quantity: 1,
        price: 199.99,
        image:
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-13-pro-max.jpg",
      ),
      OrderProductModel(
        code: "FAST_CHARGING_ADAPTER",
        title: "Fast Charging Adapter",
        quantity: 1,
        price: 50.00,
        image:
            "https://m.media-amazon.com/images/I/61cYQvY1NML._AC_UF894,1000_QL80_.jpg",
      ),
    ],
  );
}
