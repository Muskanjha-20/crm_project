import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';

class RadioFieldSelector extends StatefulWidget {
  final List<String> options;
  final String? initialValue;
  final ValueChanged<String> onSelected;

  const RadioFieldSelector({
    super.key,
    required this.options,
    required this.onSelected,
    this.initialValue,
  });

  @override
  State<RadioFieldSelector> createState() => _RadioFieldSelectorState();
}

class _RadioFieldSelectorState extends State<RadioFieldSelector> {
  String? _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          widget.options.map((option) {
            final isSelected = _selectedOption == option;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedOption = option;
                  widget.onSelected(option);
                });
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 8),
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.backgroundColor : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color:
                        isSelected
                            ? AppColors.orangeTextColor
                            : Colors.grey.shade300,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        option,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackTextColor,
                        ),
                      ),
                    ),
                    Radio<String>(
                      value: option,
                      groupValue: _selectedOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value;
                          widget.onSelected(value!);
                        });
                      },
                      activeColor: AppColors.orangeTextColor,
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
    );
  }
}
