
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bait_watan/vew/helpers/application_colors.dart';
import 'package:bait_watan/vew/helpers/size_config.dart';

class CommonTextControllers {
  static Widget customTextField(
      {TextEditingController controller,
         Function validator,
        String labelText,
        Widget suffix,
        Widget prefix,
        bool isObscureText,
        double height,
        double width,
        BorderRadius borderRadius,
        double fontSize,
        Color textFieldColor,
        Color fontColor,
        Color borderColor,
        Color fillColor,
        int maxLines,
        Function onChanged,
        VoidCallback onPrefixPressVCL,
        VoidCallback onSuffixPressVCL,
        TextInputType keyboardType,
        FontWeight fontWeight,
        TextStyle hintStyle,
        EdgeInsets containerPadding,
        enabledBorder,
        focusedBorder,
        GlobalKey<FormFieldState> formKey,
        FocusNode focusNode,
        Function onSubmitted,
       String language,
        bool inHome=false,
        bool inTam=false,
        List<TextInputFormatter> inputFormatter}) {
    return Container(
      width: width ?? SizeConfig().safeBlockHorizontal * .2,
      height: height?? SizeConfig().safeBlockHorizontal * 8,
      alignment: Alignment.center,

      margin: containerPadding ??
          EdgeInsets.symmetric(horizontal: SizeConfig().safeBlockHorizontal * 2),
      child: TextFormField(

        key: formKey,
        validator: validator,
        keyboardType: keyboardType ?? TextInputType.text,
        obscureText: isObscureText ?? true,
        controller: controller,
        maxLines: maxLines ?? 1,
        textInputAction: TextInputAction.next,
//language=='ar'? TextAlign.end:TextAlign.start
        textAlign:  TextAlign.right,
        style:  TextStyle(
            //color: AppColors.
        ),
        onChanged: onChanged,
        focusNode: focusNode,
        cursorColor: ApplicationColors().textColor,
        onFieldSubmitted: onSubmitted,
          decoration:inTam?InputDecoration(

            contentPadding: EdgeInsets.all(SizeConfig().safeBlockHorizontal * 1),
            labelText: labelText ?? '',
            labelStyle:TextStyle(
              color: ApplicationColors().gray,
              // fontWeight: FontWeight.bold,
              fontSize: SizeConfig().fontSize15,
            ),
            suffixIcon: suffix != null
                ? GestureDetector(
                onTap: onSuffixPressVCL,
                child: Padding(
                  padding: EdgeInsets.all(SizeConfig().safeBlockHorizontal * 0),
                  child: suffix,
                ))
                : Container(
              width: 0,
              height: 0,
            ),
            prefixIcon: prefix != null
                ? GestureDetector(onTap: onPrefixPressVCL, child: prefix)
                : Container(
              width: 0,
              height: 0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              borderSide: BorderSide(color: ApplicationColors().textColor),
            ),
            enabledBorder: enabledBorder ??
                OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: ApplicationColors().textColor),
                ),
            focusedBorder: focusedBorder ??
                OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: ApplicationColors().textColor),
                ),

            errorMaxLines: 2,
            errorStyle:
            TextStyle(color: Colors.red, fontSize: SizeConfig().fontSize12),
            errorBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2.0)),
                borderSide: BorderSide(
                  color: Colors.teal,
                )),
          ):inHome?InputDecoration(

            contentPadding: EdgeInsets.all(SizeConfig().safeBlockHorizontal * 1),
            labelText: labelText ?? '',
            labelStyle:TextStyle(
              color: ApplicationColors().gray,
              // fontWeight: FontWeight.bold,
              fontSize: SizeConfig().fontSize15,
            ),
            suffixIcon: suffix != null
                ? GestureDetector(
                onTap: onSuffixPressVCL,
                child: Padding(
                  padding: EdgeInsets.all(SizeConfig().safeBlockHorizontal * 0),
                  child: suffix,
                ))
                : Container(
              width: 0,
              height: 0,
            ),
            prefixIcon: prefix != null
                ? GestureDetector(onTap: onPrefixPressVCL, child: prefix)
                : Container(
              width: 0,
              height: 0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              borderSide: BorderSide(color: ApplicationColors().textColor),
            ),
            enabledBorder: enabledBorder ??
                OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(color: ApplicationColors().textColor),
                ),
            focusedBorder: focusedBorder ??
                OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(color: ApplicationColors().textColor),
                ),

            errorMaxLines: 2,
            errorStyle:
            TextStyle(color: Colors.red, fontSize: SizeConfig().fontSize12),
            errorBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2.0)),
                borderSide: BorderSide(
                  color: Colors.teal,
                )),
          ): InputDecoration(
          contentPadding: EdgeInsets.all(SizeConfig().safeBlockHorizontal * 1),
          labelText: labelText ?? '',
              labelStyle:TextStyle(

                color:ApplicationColors().gray,
               // fontWeight: FontWeight.bold,

                fontSize: SizeConfig().fontSize15,
              ),
          suffixIcon: suffix != null
              ? GestureDetector(
              onTap: onSuffixPressVCL,
              child: Padding(
                padding: EdgeInsets.all(SizeConfig().safeBlockHorizontal * 0),
                child: suffix,
              ))
              : Container(
            width: 0,
            height: 0,
          ),
          prefixIcon: prefix != null
              ? GestureDetector(onTap: onPrefixPressVCL, child: prefix)
              : Container(
            width: 0,
            height: 0,
          ),

              border: new UnderlineInputBorder(
                  borderSide:  BorderSide(
                      color: Colors.brown
                  )
              ),


          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: ApplicationColors().textColor),
              ),
          hintStyle: hintStyle ??
              TextStyle(

                color: fontColor ?? ApplicationColors().gray,
                fontSize: fontSize ?? SizeConfig().fontSize20,
                fontWeight: fontWeight ?? FontWeight.w400,
              ),
          errorMaxLines: 2,
          errorStyle:

              TextStyle(color: Colors.red, fontSize: SizeConfig().fontSize12),
        errorBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
            borderSide: BorderSide(
              color: Colors.teal,
            )),
        ),
      ),
    );
  }
}