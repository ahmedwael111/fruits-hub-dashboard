import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/utils/coustm_bottom.dart';
import 'package:fruits_hub_dashboard/core/utils/coutom_form_textfield.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/domin/entities/add_product_entity.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/presentation/views/widgets/image_field.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/presentation/views/widgets/is_item_featured_widget.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/presentation/views/widgets/is_organic_box.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

late String name, code, description;
late num price ;
late int unitAmount, expirationMonth, numberOfCalorys;
File? imageFile;
bool isFeatured = false , isOrganic = false;

class _AddProductViewBodyState extends State<AddProductViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Form(
          autovalidateMode: autovalidateMode,
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 12),
              CoustomFormTextfield(
                onSaved: (newValue) {
                  name = newValue!;
                },
                hintText: 'Product Name',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 12),
              CoustomFormTextfield(
                hintText: 'Product Price',
                keyboardType: TextInputType.number,
                onSaved: (newValue) {
                  price = num.parse(newValue!);
                },
              ),

              SizedBox(height: 12),
              CoustomFormTextfield(
                hintText: 'Product code',
                keyboardType: TextInputType.text,
                onSaved: (newValue) {
                  code = newValue!.toLowerCase();
                },
              ),
              SizedBox(height: 12),
              CoustomFormTextfield(
                hintText: 'number Of Calorys',
                keyboardType: TextInputType.text,
                onSaved: (newValue) {
                  numberOfCalorys = int.parse(newValue!);
                },
              ),
              SizedBox(height: 12),
              CoustomFormTextfield(
                hintText: 'Expiration Month',
                keyboardType: TextInputType.text,
                onSaved: (newValue) {
                  expirationMonth = int.parse(newValue!);
                },
              ),
              SizedBox(height: 12),
              CoustomFormTextfield(
                hintText: 'unit count',
                keyboardType: TextInputType.text,
                onSaved: (newValue) {
                  unitAmount = int.parse(newValue!);
                },
              ),
              SizedBox(height: 12),
              CoustomFormTextfield(
                hintText: 'Product Description',
                maxLines: 4,
                keyboardType: TextInputType.text,
                onSaved: (newValue) {
                  description = newValue!;
                },
              ),
              SizedBox(height: 12),
              IsOrganicBoxWidget(
                onChanged: (isChecked) {
                  isOrganic = isChecked;
                },
              ),
              SizedBox(height: 12),
              IsItemFeaturedWidget(
                onChanged: (isChecked) {
                  isFeatured = isChecked;
                },
              ),
              SizedBox(height: 12),
              ImageField(
                onImageSelected: (file) {
                  imageFile = file;
                },
              ),
              SizedBox(height: 24),
              CoustomBottom(
                onPressed: () {
                  if (imageFile != null) {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      showSnakeBar(context, 'adding Data');
                      // logic to add product
                      AddProductEntity addProductEntity = AddProductEntity(
                        name: name,
                        description: description,
                        price: price,
                        code: code,
                        isFeatured: isFeatured,
                        isOrganic: isOrganic ,
                        imageFile: imageFile!, expirationMonth: expirationMonth, numberOfCalorys: numberOfCalorys, unitAmount: unitAmount,
                      );
                      
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  } else {
                    showSnakeBar(context, 'Please select an image');
                    return;
                  }
                },
                text: 'Add Product',
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  void showSnakeBar(BuildContext context, String s) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(s)));
  }
}
