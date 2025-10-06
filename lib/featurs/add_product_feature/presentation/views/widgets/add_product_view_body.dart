import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/utils/coutom_form_textfield.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/presentation/views/widgets/image_field.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

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
                hintText: 'Product Name',
                keyboardType: TextInputType.text,
                onSaved: (newValue) {},
              ),
              SizedBox(height: 12),
              CoustomFormTextfield(
                hintText: 'Product Price',
                keyboardType: TextInputType.number,
                onSaved: (newValue) {},
              ),

              SizedBox(height: 12),
              CoustomFormTextfield(
                hintText: 'Product code',
                keyboardType: TextInputType.text,
                onSaved: (newValue) {},
              ),
              SizedBox(height: 12),
              CoustomFormTextfield(
                hintText: 'Product Description',
                maxLines: 4,
                keyboardType: TextInputType.text,
                onSaved: (newValue) {},
              ),
              SizedBox(height: 12),
              ImageField(
                onImageSelected: (file) {
                  // Handle the selected image file
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
