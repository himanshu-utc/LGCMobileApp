import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:utc_logistics/src/resources/image_assets.dart';
import 'package:utc_logistics/src/resources/colors.dart';
import 'package:utc_logistics/src/utils/buttons/button.dart';

callUnfocus({required BuildContext context}) =>
    FocusScope.of(context).requestFocus(new FocusNode());

Widget loginUserLogo() => Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: Colors.transparent
          // ColorsHelper.greyColor()
          ),
      // height: 100,
      // width: 100,
      padding: EdgeInsets.only(bottom: 5),
      child: assetImageHelper(
        image: ImageAssets.logo,
      ),
    );

Widget textHelper(
        {String? title,
        Color textColor = Colors.black,
        double? fontSize,
        bool isItalic = false,
        FontWeight fontWeight = FontWeight.normal,
        TextAlign textAlign = TextAlign.center}) =>
    Text(
      title ?? "",
      style: TextStyle(
          fontSize: fontSize,
          color: textColor,
          fontWeight: fontWeight,
          fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
      ),
      textAlign: textAlign,
    );

Widget textHelperOverLop(
        {String? title,
        Color textColor = Colors.black,
        double? fontSize,
        bool isItalic = false,
        FontWeight fontWeight = FontWeight.normal,
        TextAlign textAlign = TextAlign.center}) =>
    Text(
      title ?? "",
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: fontSize,
          color: textColor,
          fontWeight: fontWeight,
          fontStyle: isItalic ? FontStyle.italic : FontStyle.normal),
      textAlign: textAlign,
    );

Widget assetImageHelper({String? image, double? height, double? width}) =>
    Container(
      height: height,
      width: width,
      child:
      Image.asset(
        image!,
        fit: BoxFit.fill,
      ),
    );


Widget textBoxContainer({Widget? child, double vertical = 0}) => Container(
  height: 50,
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: vertical),
    decoration: BoxDecoration(
          color:  ColorsHelper.grey_edittext(),
          border: Border.all(width: 1, color: ColorsHelper.grey_edittext()
          ),
        borderRadius: BorderRadius.circular(10),
    ),
    child: child);

Widget bodyContainer({Widget? child, double vertical = 0}) => Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: vertical),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorsHelper.cardLightWhite2()),
    child: child);

//"[0-9a-zA-Z]"
Widget formTextFeild(
    {String? hintText,
      String validation(String val)?,
      String save(String val)?,
      TextEditingController? controller,
      FocusNode? focusNode,
      FocusNode? nextFocusNode,
      textInputType = TextInputType.text,
      textCapitalization = TextCapitalization.sentences,
      TextInputAction? textInputAction,
      int maxLine = 1,
      int maxLength = 100,
      bool obscureText = false,
      bool suffixIcon = false,
      bool isValidateForm = false,
      String formates = "[0-9a-zA-Z]",
      Function? suffixFuncton,
      required BuildContext context}) =>
    TextFormField(
      scrollPadding: EdgeInsets.all(0),
      maxLines: maxLine,
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxLength),
        if (isValidateForm) FilteringTextInputFormatter.allow(RegExp(formates)),
      ],
      ///validator: validation,
     // onSaved: save,
      obscureText: obscureText,
      controller: controller,
      focusNode: focusNode,

      keyboardType: textInputType,
      textInputAction: textInputAction,
      onFieldSubmitted: (str) => {
        nextFocusNode != null
            ? FocusScope.of(context).requestFocus(nextFocusNode)
            : FocusScope.of(context).requestFocus(new FocusNode()),
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14,color: ColorsHelper.grey_edittext_text()),
        contentPadding: EdgeInsets.all(15.0),
        border: InputBorder.none,
        prefixIcon:Container(
          height: 30,
          margin: EdgeInsets.only(right: 8,top: 6,bottom: 6),
          decoration: BoxDecoration(
            border: Border(right: BorderSide(color: ColorsHelper.grey_edittext_text())),
          ),
          child:
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child:
            IconButton(
              icon: assetImageHelper(
                  image: ImageAssets.phone,height: 14,width: 14), onPressed: () {  },
            ),
          ),
        ),
        suffixIcon: suffixIcon
            ? Container(
          child: Transform.scale(
            scale: 0.65,
            child: IconButton(
             // onPressed: suffixFuncton,
              icon: assetImageHelper(
                  image: obscureText
                      ? ImageAssets.eye_show
                      : ImageAssets.eye_hide), onPressed: () {  },
            ),
          ),
        )
            : null,
      ),
    );





//"[0-9a-zA-Z]"
Widget PassformTextFeild(
    {String? hintText,
      String validation(String val)?,
      String save(String val)?,
      TextEditingController? controller,
      FocusNode? focusNode,
      FocusNode? nextFocusNode,
      textInputType = TextInputType.text,
      textCapitalization = TextCapitalization.sentences,
      TextInputAction? textInputAction,
      int maxLine = 1,
      int maxLength = 100,
      bool obscureText = false,
      bool suffixIcon = false,
      bool isValidateForm = false,
      String formates = "[0-9a-zA-Z]",
      Function? suffixFuncton,
      required BuildContext context}) =>
    TextFormField(
      scrollPadding: EdgeInsets.all(0),
      maxLines: maxLine,
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxLength),
        if (isValidateForm) FilteringTextInputFormatter.allow(RegExp(formates)),
      ],
      ///validator: validation,
      // onSaved: save,
      obscureText: obscureText,
      controller: controller,
      focusNode: focusNode,

      keyboardType: textInputType,
      textInputAction: textInputAction,
      onFieldSubmitted: (str) => {
        nextFocusNode != null
            ? FocusScope.of(context).requestFocus(nextFocusNode)
            : FocusScope.of(context).requestFocus(new FocusNode()),
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14,color: ColorsHelper.grey_edittext_text()),
        contentPadding: EdgeInsets.all(15.0),
        border: InputBorder.none,
        prefixIcon:Container(
          height: 30,
          margin: EdgeInsets.only(right: 8,top: 6,bottom: 6),
          decoration: BoxDecoration(
            border: Border(right: BorderSide(color: ColorsHelper.grey_edittext_text())),
          ),
          child:
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child:
            IconButton(
              icon: assetImageHelper(
                  image: ImageAssets.lock,height: 14,width: 12), onPressed: () {  },
            ),
          ),

        ),
        suffixIcon: suffixIcon
            ? Container(
          child: Transform.scale(
            scale: 0.65,
            child: IconButton(
              // onPressed: suffixFuncton,
              icon: assetImageHelper(
                height: 20,width: 26,
                  image: obscureText
                      ? ImageAssets.eye_show
                      : ImageAssets.eye_hide), onPressed: () {  },
            ),
          ),
        )
            : null,
      ),
    );


Widget submitButton({String? title,   required Function() onPressed}) => ButtonColor(
    color: ColorsHelper.btn_blue(),
    radius: 8,
    width: double.infinity,

   // onPressed: onPressed,
    onPressed: onPressed,
    child: Text(
      title ?? "",
      style: TextStyle(
          color: ColorsHelper.whiteColor(),
          fontSize: 20,
          fontWeight: FontWeight.w600),
    ));


Widget submitSignupButton({String? title,   required Function() onPressed}) => ButtonColor(
    color: ColorsHelper.green(),
    radius: 8,
    width: double.infinity,
    // onPressed: onPressed,
    onPressed: onPressed,
    child: Text(
      title ?? "",
      style: TextStyle(
          color: ColorsHelper.whiteColor(),
          fontSize: 20,
          fontWeight: FontWeight.w600),
    ));




//"[0-9a-zA-Z]"
Widget signupformTextFeild(
    {String? hintText,
      String validation(String val)?,
      String save(String val)?,
      TextEditingController? controller,
      FocusNode? focusNode,
      FocusNode? nextFocusNode,
      textInputType = TextInputType.text,
      textCapitalization = TextCapitalization.sentences,
      TextInputAction? textInputAction,
      int maxLine = 1,
      int maxLength = 100,
      bool obscureText = false,
      bool isValidateForm = false,
      String formates = "[0-9a-zA-Z]",
      required BuildContext context}) =>
    TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,

      ),
      scrollPadding: EdgeInsets.all(15),
      maxLines: maxLine,
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxLength),
        if (isValidateForm) FilteringTextInputFormatter.allow(RegExp(formates)),
      ],
      ///validator: validation,
      // onSaved: save,
      obscureText: obscureText,
      controller: controller,
      focusNode: focusNode,

      keyboardType: textInputType,
      textInputAction: textInputAction,
      onFieldSubmitted: (str) => {
        nextFocusNode != null
            ? FocusScope.of(context).requestFocus(nextFocusNode)
            : FocusScope.of(context).requestFocus(new FocusNode()),
      },

    );



Widget submitNewButtonOrange( {required String title}   ) => Container(
   // width: double.infinity,
    height: 55,
    decoration: const BoxDecoration(
      image:  DecorationImage(
        image: AssetImage("assets/btn_orange_back.png"),
        fit: BoxFit.cover,
      ),
    ),
    child:Align(
      alignment: Alignment.center,
      child:  Text(
        title ?? "",
        style: TextStyle(
            color: ColorsHelper.whiteColor(),
            fontSize: 16,
            fontWeight: FontWeight.w400),
      ),
    )
);


Widget submitNewButtonBlue( {required String title}   ) => Container(
  //  width: double.infinity,
    height: 55,
    decoration: const BoxDecoration(
      image:  DecorationImage(
        image: AssetImage("assets/btn_blue_back.png"),
        fit: BoxFit.cover,
      ),
    ),
    child:Align(
      alignment: Alignment.center,
      child:  Text(
        title ?? "",
        style: TextStyle(
            color: ColorsHelper.whiteColor(),
            fontSize: 16,
            fontWeight: FontWeight.w400),
      ),
    )
);


Widget textHelperSimple(
    { String? title,
      Color textColor = Colors.black,
      double? fontSize,
      bool isItalic = false,
      FontWeight fontWeight = FontWeight.normal,
      TextAlign textAlign = TextAlign.start}) =>
    Text(
      title ?? "",
      style: TextStyle(
        fontSize: fontSize,
        color: textColor,
        fontWeight: fontWeight,
        fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
      ),
      textAlign: textAlign,
    );


//"[0-9a-zA-Z]"
Widget addvehicleformTextFeild(
    {String? hintText,
      String validation(String val)?,
      String save(String val)?,
      TextEditingController? controller,
      FocusNode? focusNode,
      FocusNode? nextFocusNode,
      textInputType = TextInputType.text,
      textCapitalization = TextCapitalization.sentences,
      TextInputAction? textInputAction,
      int maxLine = 1,
      int maxLength = 100,
      bool obscureText = false,
      bool isValidateForm = false,
      String formates = "[0-9a-zA-Z]",
      required BuildContext context}) =>
    TextFormField(
      // decoration: InputDecoration(
      //   border: InputBorder.none,
      //
      // ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14,color: ColorsHelper.grey_edittext_text()),
        contentPadding: EdgeInsets.all(15.0),
        border: InputBorder.none,
        prefixIcon: IconButton(
          icon: assetImageHelper(
              image: ImageAssets.truck,width: 24,height: 20), onPressed: () {  },
        ),

      ),
      scrollPadding: EdgeInsets.all(15),

      maxLines: maxLine,
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxLength),
        if (isValidateForm) FilteringTextInputFormatter.allow(RegExp(formates)),
      ],
      ///validator: validation,
      // onSaved: save,
      obscureText: obscureText,
      controller: controller,
      focusNode: focusNode,

      keyboardType: textInputType,
      textInputAction: textInputAction,
      onFieldSubmitted: (str) => {
        nextFocusNode != null
            ? FocusScope.of(context).requestFocus(nextFocusNode)
            : FocusScope.of(context).requestFocus(new FocusNode()),
      },

    );



//"[0-9a-zA-Z]"
Widget adddrivernameformTextFeild(
    {String? hintText,
      String validation(String val)?,
      String save(String val)?,
      TextEditingController? controller,
      FocusNode? focusNode,
      FocusNode? nextFocusNode,
      textInputType = TextInputType.text,
      textCapitalization = TextCapitalization.sentences,
      TextInputAction? textInputAction,
      int maxLine = 1,
      int maxLength = 100,
      bool obscureText = false,
      bool isValidateForm = false,
      String formates = "[0-9a-zA-Z]",
      required BuildContext context}) =>
    TextFormField(
      // decoration: InputDecoration(
      //   border: InputBorder.none,
      //
      // ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14,color: ColorsHelper.grey_edittext_text()),
        contentPadding: EdgeInsets.all(15.0),
        border: InputBorder.none,
        prefixIcon: IconButton(
          icon: assetImageHelper(
              image: ImageAssets.person,width: 20,height: 20), onPressed: () {  },
        ),

      ),
      scrollPadding: EdgeInsets.all(15),

      maxLines: maxLine,
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxLength),
        if (isValidateForm) FilteringTextInputFormatter.allow(RegExp(formates)),
      ],
      ///validator: validation,
      // onSaved: save,
      obscureText: obscureText,
      controller: controller,
      focusNode: focusNode,

      keyboardType: textInputType,
      textInputAction: textInputAction,
      onFieldSubmitted: (str) => {
        nextFocusNode != null
            ? FocusScope.of(context).requestFocus(nextFocusNode)
            : FocusScope.of(context).requestFocus(new FocusNode()),
      },

    );



//"[0-9a-zA-Z]"
Widget adddrivernumberformTextFeild(
    {String? hintText,
      String validation(String val)?,
      String save(String val)?,
      TextEditingController? controller,
      FocusNode? focusNode,
      FocusNode? nextFocusNode,
      textInputType = TextInputType.text,
      textCapitalization = TextCapitalization.sentences,
      TextInputAction? textInputAction,
      int maxLine = 1,
      int maxLength = 100,
      bool obscureText = false,
      bool isValidateForm = false,
      String formates = "[0-9a-zA-Z]",
      required BuildContext context}) =>
    TextFormField(
      // decoration: InputDecoration(
      //   border: InputBorder.none,
      //
      // ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14,color: ColorsHelper.grey_edittext_text()),
        contentPadding: EdgeInsets.all(15.0),
        border: InputBorder.none,
        prefixIcon: IconButton(
          icon: assetImageHelper(
              image: ImageAssets.phone_grey,width: 20,height: 20), onPressed: () {  },
        ),

      ),
      scrollPadding: EdgeInsets.all(15),

      maxLines: maxLine,
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxLength),
        if (isValidateForm) FilteringTextInputFormatter.allow(RegExp(formates)),
      ],
      ///validator: validation,
      // onSaved: save,
      obscureText: obscureText,
      controller: controller,
      focusNode: focusNode,

      keyboardType: textInputType,
      textInputAction: textInputAction,
      onFieldSubmitted: (str) => {
        nextFocusNode != null
            ? FocusScope.of(context).requestFocus(nextFocusNode)
            : FocusScope.of(context).requestFocus(new FocusNode()),
      },

    );



//"[0-9a-zA-Z]"
Widget CreatePasswordformTextFeild(
    {String? hintText,
      String validation(String val)?,
      String save(String val)?,
      TextEditingController? controller,
      FocusNode? focusNode,
      FocusNode? nextFocusNode,
      textInputType = TextInputType.text,
      textCapitalization = TextCapitalization.sentences,
      TextInputAction? textInputAction,
      int maxLine = 1,
      int maxLength = 100,
      bool obscureText = false,
      bool suffixIcon = false,
      bool isValidateForm = false,
      String formates = "[0-9a-zA-Z]",
      Function? suffixFuncton,
      required BuildContext context}) =>
    TextFormField(
      scrollPadding: EdgeInsets.all(0),
      maxLines: maxLine,
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxLength),
        if (isValidateForm) FilteringTextInputFormatter.allow(RegExp(formates)),
      ],
      ///validator: validation,
      // onSaved: save,
      obscureText: obscureText,
      controller: controller,
      focusNode: focusNode,

      keyboardType: textInputType,
      textInputAction: textInputAction,
      onFieldSubmitted: (str) => {
        nextFocusNode != null
            ? FocusScope.of(context).requestFocus(nextFocusNode)
            : FocusScope.of(context).requestFocus(new FocusNode()),
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14,color: ColorsHelper.grey_edittext_text()),
        contentPadding: EdgeInsets.all(15.0),
        border: InputBorder.none,
        prefixIcon:Container(
          height: 30,
          margin: EdgeInsets.only(right: 8,top: 6,bottom: 6),
          decoration: BoxDecoration(
            border: Border(right: BorderSide(color: ColorsHelper.grey_edittext_text())),
          ),
          child:
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child:
            IconButton(
              icon: assetImageHelper(
                  image: ImageAssets.lock,height: 14,width: 14), onPressed: () {  },
            ),
          ),
        ),
        // suffixIcon: suffixIcon
        //     ? Container(
        //   child: Transform.scale(
        //     scale: 0.65,
        //     child: IconButton(
        //       // onPressed: suffixFuncton,
        //       icon: assetImageHelper(
        //           image: obscureText
        //               ? ImageAssets.eye_show
        //               : ImageAssets.eye_hide), onPressed: () {  },
        //     ),
        //   ),
        // )
        //     : null,
      ),
    );


