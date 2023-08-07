import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleInput extends StatefulWidget {
   final String title;
   final String hintText;
   final IconData? iconData;
  final TextEditingController controller;
  const SimpleInput({super.key, required this.title, required this.hintText, required this.controller,  this.iconData});

  @override
  State<SimpleInput> createState() => _SimpleInputState();
}

class _SimpleInputState extends State<SimpleInput> {
  static const containerColor= Color(0xffF5F85B);
  static const textBlack= Color(0xff232323);
  static const textLightBlack= Color(0xff717171);
  static const clearButtoncolour= Color(0xffFF7511);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(widget.title,style: TextStyle(fontSize:15,fontWeight:FontWeight.w700,color: textLightBlack),),
        const SizedBox(height: 3,),
        TextFormField(
          controller: widget.controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle:const TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: textLightBlack),
            suffixIcon:widget.iconData!=null? Icon(widget.iconData, color:textBlack,):Text(""),
            filled: true,
            fillColor: containerColor,

            border: OutlineInputBorder(
              borderSide: const BorderSide(width: 0,color: Colors.transparent),
              borderRadius: BorderRadius.circular(5),
            ),
            enabledBorder:OutlineInputBorder(
              borderSide: const BorderSide(width: 0,color: Colors.transparent),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 0,color: Colors.transparent),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onFieldSubmitted: (value){
            if(value.isEmpty){
              widget.controller.text="0.00";
            }
            widget.controller.text= value.toString();

            setState(() {

            });
          },
         onSaved:(value){
            widget.controller.text="0.00";
            setState(() {

            });
         },

          validator: (value){
            if (value==null || value.isEmpty){
              return "Please enter a valid amount";
            }
            return null;

          },

        ),
      ],
    )
    ;
  }
}
