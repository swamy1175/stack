import 'package:flutter/material.dart';
import 'package:stack/form_model.dart';

class DropDownWidget extends StatefulWidget {
  /// [DropDownWidget] constructor
  const DropDownWidget({
    Key? key,
    required this.dropdownList,
    required this.onValueChanged,
    this.enabled = true,
    this.previousValue,
  }) : super(key: key);

  /// [dropdownList] List of dropdown items
  final List<FormModel> dropdownList;

  /// [enabled] Dropdown enabled
  final bool enabled;

  /// [onValueChanged] Dropdown value changed
  final Function onValueChanged;

  /// [previousValue] previously selected value
  final String? previousValue;

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<FormModel>(
      key: const Key('dropdown_button'),
      //value: widget.value,
      isExpanded: true,
      isDense: true,
      onTap: () {
        if (widget.enabled) {
          FocusScope.of(context).requestFocus(FocusNode());
        }
      },
      validator: (value) {
        if (value!.key == -1) {
          return 'This field is required!';
        }
        return null;
      },
      decoration:const InputDecoration(
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
        // isDense: true,
        border:  OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
      ),
      style: const TextStyle(
        color: Colors.black,
        fontStyle: FontStyle.normal,
      ),
      hint: Text(widget.previousValue ?? 'select value',style: TextStyle(color: Colors.black),),
      items: widget.dropdownList.map((FormModel dropdownModel) {
        return DropdownMenuItem<FormModel>(
          value: dropdownModel,
          child: Text(
            dropdownModel.value,
          ),
        );
      }).toList(),
      onChanged: widget.enabled
          ? (value) {
        widget.onValueChanged(value);
        setState(() {
        });
      }
          : null,
    );
  }
}