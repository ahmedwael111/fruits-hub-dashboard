import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ImageField extends StatefulWidget {
  const ImageField({super.key, this.onImageSelected});
  final ValueChanged<File?>? onImageSelected;
  @override
  State<ImageField> createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  bool isLoading = false;
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: GestureDetector(
        onTap: () async {
          setState(() {
            isLoading = true;
          });
          try {
            await imagePickerMethod();
          } on Exception catch (e) {
            setState(() {
              isLoading = false;
            });
          }
          setState(() {
            isLoading = false;
          });
        },
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF9FAFA),
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Color(0xFFE6E9E9), width: 1),
              ),
              child:
                  imageFile != null
                      ? ClipRRect(
                        borderRadius: BorderRadius.circular(12),

                        child: Image.file(imageFile!),
                      )
                      : Icon(
                        Icons.image_outlined,
                        size: 150,
                        color: Colors.grey,
                      ),
            ),
            Visibility(
              visible: imageFile != null,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    imageFile = null;
                  });
                  widget.onImageSelected?.call(null);
                },
                icon: Icon(Icons.delete, color: Colors.red, size: 28),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> imagePickerMethod() async {
    final ImagePicker picker = ImagePicker();
    // Pick an image.
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    imageFile = File(image!.path);
    widget.onImageSelected?.call(imageFile);
  }
}
