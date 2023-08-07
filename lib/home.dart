import 'package:assignment_2/simple%20input%20field.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final totalBillController=TextEditingController();
  final totalTipController=TextEditingController();
  final totalPeopleController=TextEditingController();
  final formKey=GlobalKey<FormState>();
  static const containerColor= Color(0xffF5F85B);
  static const textBlack= Color(0xff232323);
  static const textLightBlack= Color(0xff717171);
  static const clearButtoncolour= Color(0xffFF7511);



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0.3,
          shadowColor: Colors.black26,
          backgroundColor: Colors.white,
          title:const Text('Tip Calculator',style:
          TextStyle(fontSize: 18,fontWeight: FontWeight.w600,
              fontStyle:FontStyle.normal,
              fontFamily:'Roboto'),
          )
      ),
      body:  Padding(

        padding: const EdgeInsets.all(10),
        child: Form(
          key: formKey,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                 color: Colors.purple,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                 padding:const EdgeInsets.all(15),
                 child: Column(
                   children: [
                      Text("Total Bill",style: TextStyle(color: textLightBlack),),
                     Text("\$ ${totalBillController.text}",style: TextStyle(fontSize: 26,
                         fontWeight: FontWeight.w700,color: textBlack),),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [

                         Text("Total Persons",style: TextStyle(color: textLightBlack),),
                         Text("Tip Bill",style: TextStyle(color: textLightBlack),),
                       ],
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [

                         Text("05",style: TextStyle(fontSize:16,fontWeight: FontWeight.w700,color: textBlack),),
                         Text("\$0.0",style: TextStyle(fontSize:16,fontWeight: FontWeight.w700,color: textBlack),),
                       ],
                     )
                   ],
                 ),
               ),
              const SizedBox(
                height: 10,
              ),
              Container(
              color: Colors.purple,
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(5),
              ),
              padding:const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Amount per person",style: TextStyle(color: textLightBlack),),
              Text("\$0.0",style: TextStyle(fontSize:18,fontWeight: FontWeight.w700,color: textBlack),),
            ],
          ),),
              const Spacer(),
              SimpleInput(title: "Tip Percentage",
                  hintText: "Please enter tip percentage",
                  iconData: Icons.attach_money,
                  controller: totalTipController),
              SimpleInput(title: "Total Bill",
                  hintText: "Please Enter Total Bill",
                  iconData: Icons.percent,
                  controller: totalBillController),
              SimpleInput(title: "NUmber of people",
                  hintText: "Please enter the total number",
                  controller: totalPeopleController),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                    onTap: () {
                    setState(() {
                    formKey.currentState!.validate();
                    });
                    },
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        alignment: Alignment.center,
                        child: const Text("Calculate", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
               const SizedBox(width: 10,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      formKey.currentState!.validate();
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    alignment: Alignment.center,
                    child: const Text("Calculate", style: TextStyle(color: Colors.white)),
                  ),
                ),


                ],
              )






            ]
          ),
        ),
      ),

    );
  }
}
