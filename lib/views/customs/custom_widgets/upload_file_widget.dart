import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:list_project/views/customs/custom_widgets/dashed_border_container.dart';
import 'package:list_project/views/constants/colors.dart';

class UploadFileWidget extends StatefulWidget {
  const UploadFileWidget({super.key});

  @override
  State<UploadFileWidget> createState() => _UploadFileWidgetState();
}

class _UploadFileWidgetState extends State<UploadFileWidget> {
  bool isLoading = false;
  File? selectedImage;

  Future<void> _pickImage() async {
    setState(() => isLoading = true);

    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      setState(() {
        selectedImage = File(pickedFile.path);
      });
    }

    setState(() => isLoading = false);
  }

  void removeImage() {
    setState(() => selectedImage = null);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: selectedImage == null ? _pickImage : null,
      child: Container(
        height: 70,
        width: 90,
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: DashedBorderContainer(
          // color: AppColors.secondaryColor,
          strokeWidth: 1.0,
          child: Center(
            child:
                isLoading
                    ? const CircularProgressIndicator(strokeWidth: 2)
                    : selectedImage != null
                    ? Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          child: Image.file(selectedImage!, fit: BoxFit.cover),
                        ),
                        Positioned(
                          top: 2,
                          right: 2,
                          child: GestureDetector(
                            onTap: removeImage,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(2),
                              child: const Icon(
                                Icons.close,
                                size: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                    : Icon(
                      Icons.file_upload_outlined,
                      size: 20,
                      color: AppColors.primaryColor,
                    ),
          ),
        ),
      ),
    );
  }
}
