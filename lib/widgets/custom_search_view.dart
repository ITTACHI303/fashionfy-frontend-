import 'dart:async';

import 'package:flutter/material.dart';

import '../core/app_export.dart';

class CustomSearchView extends StatefulWidget {
  CustomSearchView(
      {Key? key,
      this.alignment,
      this.width,
      this.boxDecoration,
      this.scrollPadding,
      this.controller,
      this.focusNode,
      this.autofocus = false,
      this.textStyle,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.hintStyle,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.contentPadding,
      this.borderDecoration,
      this.fillColor,
      this.filled = true,
      this.validator,
      this.onSearch})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final BoxDecoration? boxDecoration;

  final TextEditingController? scrollPadding;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  final Function(String)? onSearch;

  @override
  State<CustomSearchView> createState() => _CustomSearchViewState();
}

class _CustomSearchViewState extends State<CustomSearchView> {
  Timer? _debounce;

  void _onTextChanged(String text) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (widget.onSearch != null) {
        widget.onSearch!(text);
      }
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: searchViewWidget(context))
        : searchViewWidget(context);
  }

  Widget searchViewWidget(BuildContext context) => Container(
        width: widget.width ?? double.maxFinite,
        decoration: widget.boxDecoration,
        child: TextFormField(
          scrollPadding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          controller: widget.controller,
          focusNode: widget.focusNode,
          onTapOutside: (event) {
            if (widget.focusNode != null) {
              widget.focusNode?.unfocus();
            } else {
              FocusManager.instance.primaryFocus?.unfocus();
            }
          },
          autofocus: widget.autofocus!,
          style: widget.textStyle ?? CustomTextStyles.labelLargeBlack900,
          keyboardType: widget.textInputType,
          maxLines: widget.maxLines ?? 1,
          decoration: decoration,
          validator: widget.validator,
          onChanged: _onTextChanged,
        ),
      );

  InputDecoration get decoration => InputDecoration(
        hintText: widget.hintText ?? "",
        hintStyle: widget.hintStyle ?? CustomTextStyles.labelLargeBlack900,
        prefixIcon: widget.prefix ??
            Container(
              margin: EdgeInsets.fromLTRB(10.h, 8.h, 8.h, 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgSearch,
                height: 16.h,
                width: 12.h,
              ),
            ),
        prefixIconConstraints: widget.prefixConstraints ??
            BoxConstraints(
              maxHeight: 34.h,
            ),
        suffixIcon: widget.suffix ??
            Container(
              margin: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgImage15,
                height: 22.h,
                width: 22.h,
              ),
            ),
        suffixIconConstraints: widget.suffixConstraints ??
            BoxConstraints(
              maxHeight: 34.h,
            ),
        isDense: true,
        contentPadding: widget.contentPadding ?? EdgeInsets.all(8.h),
        fillColor: widget.fillColor ?? appTheme.whiteA700,
        filled: widget.filled,
        border: widget.borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.h),
              borderSide: BorderSide(
                color: appTheme.black900,
                width: 1,
              ),
            ),
        enabledBorder: widget.borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.h),
              borderSide: BorderSide(
                color: appTheme.black900,
                width: 1,
              ),
            ),
        focusedBorder: (widget.borderDecoration ??
                OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.h),
                ))
            .copyWith(
          borderSide: BorderSide(
            color: theme.colorScheme.primary,
            width: 1,
          ),
        ),
      );
}
