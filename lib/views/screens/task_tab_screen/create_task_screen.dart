import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';
import 'package:list_project/views/customs/appbar/custom_appbar.dart';
import 'package:list_project/views/customs/bottomsheets/custom_show_Modal_bottom.dart';
import 'package:list_project/views/customs/bottomsheets/show_confirm_create_task.dart';
import 'package:list_project/views/customs/buttons/custom_drop_down_button.dart';
import 'package:list_project/views/customs/buttons/custom_flexible_button.dart';
import 'package:list_project/views/customs/custom_widgets/custom_text_field_widget.dart';
import 'package:list_project/views/customs/custom_widgets/upload_file_widget.dart';

class CreateTaskScreen extends StatefulWidget {
  const CreateTaskScreen({super.key});

  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  String? selectedMember;
  String? selectedPriority;
  String? selectedDifficulty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        // child: CustomAppBar(title: 'Create New Task'),
        child: CustomAppBar(
          titleColor: AppColors.blackTextColor,
          centerTitle: true,
          title: 'Create New Task',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.only(
            top: 15,
            left: 10,
            right: 10,
            bottom: 10,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Attachment',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: AppColors.blackTextColor,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Format should be in .pdf .jpeg .png less than 5MB',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: AppColors.lightGreyTextColor,
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.14,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder:
                        (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: const UploadFileWidget(),
                        ),
                  ),
                ),
                // UploadFileWidget(),
                SizedBox(height: 20),
                Text(
                  'Task Title',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: AppColors.blackTextColor,
                  ),
                ),
                SizedBox(height: 10),
                CustomTextFieldWidget(
                  minLines: 1,
                  maxLines: 1,
                  text: 'Enter Task Title',
                  image: Icon(
                    Icons.upload_file_rounded,
                    color: AppColors.secondaryColor,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Task Description',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: AppColors.blackTextColor,
                  ),
                ),
                SizedBox(height: 10),
                CustomTextFieldWidget(
                  minLines: 5,
                  maxLines: 5,
                  text: 'Enter Task Description',
                ),
                SizedBox(height: 10),
                Text(
                  'Assign To',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: AppColors.blackTextColor,
                  ),
                ),
                SizedBox(height: 6),

                CustomDropDownWidget(
                  text: selectedMember ?? 'Select Member',
                  prefixIcon: Icon(
                    Icons.account_circle_sharp,
                    color: AppColors.primaryColor,
                  ),
                  suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),
                  onTap: () {
                    customShowModalBottomSheet(
                      context: context,
                      title: 'Assign To',
                      subtitle: 'Who will finish this task',
                      options: [
                        'Ivankov - Sr Front End Developer',
                        'Brahm - Mid Front End Developer',
                        'Alice - Sr Front End Developer',
                        'Jeane - Jr Front End Developer',
                        'Claudia - Jr Front End Developer',
                      ],
                      onSelected: (value) {
                        setState(() {
                          selectedMember = value;
                        });
                      },
                    );
                  },
                ),
                SizedBox(height: 10),
                Text(
                  'Priority',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: AppColors.blackTextColor,
                  ),
                ),
                SizedBox(height: 6),

                CustomDropDownWidget(
                  text: selectedPriority ?? 'Select Priority',
                  prefixIcon: Icon(
                    Icons.account_circle_sharp,
                    color: AppColors.primaryColor,
                  ),
                  suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),

                  onTap: () {
                    customShowModalBottomSheet(
                      context: context,
                      title: 'Priority',
                      subtitle: 'Select the priority',
                      options: ['Low', 'Medium', 'High'],
                      onSelected: (value) {
                        setState(() {
                          selectedPriority = value;
                        });
                      },
                    );
                  },
                ),

                SizedBox(height: 10),
                Text(
                  'Difficulty',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: AppColors.blackTextColor,
                  ),
                ),
                SizedBox(height: 6),
                CustomDropDownWidget(
                  text: selectedDifficulty ?? 'Select Difficulty',
                  prefixIcon: Icon(
                    Icons.account_circle_sharp,
                    color: AppColors.primaryColor,
                  ),
                  suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),

                  onTap: () {
                    customShowModalBottomSheet(
                      context: context,
                      title: 'Difficulty',
                      subtitle: 'Select the Difficulty',
                      options: [
                        'Very Easy (Less Than a Day)',
                        'Easy (A Day)',
                        'Moderate (3 Days)',
                        'Intermediate (5 Days)',
                        'Advanced (1 Week)',
                      ],
                      onSelected: (value) {
                        setState(() {
                          selectedDifficulty = value;
                        });
                      },
                    );
                  },
                ),

                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        color: Colors.white,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.12,

        // child: CustomButton(
        //   text: 'Create Task',
        //   onPressed: () {
        //     showConfirmationBottomSheet(
        //       context: context,
        //       title: 'Create New Task',
        //       description:
        //           'Double-check your task details to ensure everything is correct. Do you want to proceed?',
        //       filledButton: 'Yes, Proceed Now',
        //       outlinedButton: 'No, Let me check',
        //       onConfirm: () {
        //         showConfirmationBottomSheet(
        //           context: context,
        //           title: 'Task Has Been Created!',
        //           description:
        //               'Congratulations! Task has been created! view your task in the task management',
        //           filledButton: 'View Task Management',
        //           // outlinedButton: 'Cancel',
        //           onConfirm: () {},
        //           onCancel: () {},
        //         );
        //       },
        //       onCancel: () {},
        //     );
        //   },
        // ),
        child: CustomFlexibleButton(
          onPressed: () {
            print('object');
            showConfirmationBottomSheet(
              context: context,
              title: 'Create New Task',
              description:
                  'Double-check your task details to ensure everything is correct. Do you want to proceed?',
              filledButton: 'Yes, Proceed Now',
              outlinedButton: 'No, Let me check',
              onConfirm: () {
                showConfirmationBottomSheet(
                  context: context,
                  title: 'Task Has Been Created!',
                  description:
                      'Congratulations! Task has been created! view your task in the task management',
                  filledButton: 'View Task Management',
                  // outlinedButton: 'Cancel',
                  onConfirm: () {},
                  onCancel: () {},
                );
              },
              onCancel: () {},
            );
          },

          text: 'Create Task',
          isOutlined: false,
        ),
      ),
    );
  }
}
