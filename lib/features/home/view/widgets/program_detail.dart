import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcfs_website/common/constant/constant.dart';
import 'package:kcfs_website/common/styles/colors.dart';
import 'package:kcfs_website/common/widget/k_big_screen_appbar.dart';
import 'package:kcfs_website/common/widget/k_small_screen_appbar.dart';
import 'package:kcfs_website/common/widget/text_style.dart';
import 'package:kcfs_website/main.dart';

class ProgramDetail extends StatefulWidget {
  const ProgramDetail({super.key});

  @override
  State<ProgramDetail> createState() => _ProgramDetailState();
}

class _ProgramDetailState extends State<ProgramDetail> {
  @override
  Widget build(BuildContext context) {
    double maxWidth=MediaQuery.of(context).size.width*0.85;
    return LayoutBuilder(builder: (context, constraints) {
      
      bool isSmallScreen = constraints.maxWidth < 860;
      return Scaffold(
        endDrawer: isSmallScreen ? kDrawer(context) : null,
        // extendBodyBehindAppBar: true,
        appBar: isSmallScreen ? ksmallappBar(context) : appCustomBar(context),
        body: SingleChildScrollView(
          child: Align(
            alignment: AlignmentGeometry.topCenter,
            child: Container(
             
              constraints:  BoxConstraints(maxWidth: maxWidth),
              // padding: const EdgeInsets.symmetric(horizontal: 220, vertical: 48),
                //  padding: const EdgeInsets.symmetric(horizontal: h, vertical: 48),
              child: Column(
                // padding: EdgeInsets.symmetric(horizontal: 68, vertical: 48),
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // width: 450,
                    // height: 444,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/school_block.png")),
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  kBelanosimaText(
                      text: "EMST Nursery & Primary school.", size: 40),
                  const SizedBox(
                    height: 32,
                  ),
                  const KText(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                      fontSize: 16),
                  const SizedBox(
                    height: 72,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      kOutlineButton(
                          onTap: () {
                            // context.go(RouteConstants.initiatePayment);
                            showDialog(
                                  barrierDismissible: false,
                              context: context, builder: (context){
                              return SimpleDialog(
                                
                                 contentPadding:
              const EdgeInsets.symmetric(horizontal: 48, vertical: 44),
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("Enter Active Email"),
                                        const TextField(),
                                        const SizedBox(height: 14,),
                                       Row(children: [
                                         kOutlineButton(
                                          title: 'Continue',
                                          onTap: (){
                                            context.pop();
                                                 showDialog(
                                  barrierDismissible: false,
                              context: context, builder: (context){
                              return SimpleDialog(
                                
                                 contentPadding:
              const EdgeInsets.symmetric(horizontal: 48, vertical: 44),
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("Enter OTP"),
                                        const TextField(),
                                        const SizedBox(height: 14,),
                                       Row(children: [
                                         kOutlineButton(
                                          title: 'Verify OTP',
                                          onTap: (){
                                            context.pop();
                                          }), 
                                            const SizedBox(width: 14,),
                                          kOutlineButton(
                                          title: 'Cancel',
                                          onTap: (){  context.pop();})
                                       ],)
                                      ],
                                    ),
                                  )
                                ],
                              );
                            });
                                          }), 
                                            const SizedBox(width: 14,),
                                          kOutlineButton(
                                          title: 'Cancel',
                                          onTap: (){  context.pop();})
                                       ],)
                                      ],
                                    ),
                                  )
                                ],
                              );
                            });
                          },
                          title: "Purchase form - N12,000 "),
                      kOutlineButton(
                          backgroundColor: Colors.transparent,
                          forgroundColor: AppColors.primaryColor,
                          borderColor: AppColors.primaryColor,
                          // onTap: showCompleteFormPopup(context),
                          onTap: () {
                            // context.go(RouteConstants.formPurchaceCompletion);
                                  showDialog(
                                  barrierDismissible: false,
                              context: context, builder: (context){
                              return SimpleDialog(
                                
                                 contentPadding:
              const EdgeInsets.symmetric(horizontal: 48, vertical: 44),
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Align(
                                          alignment: Alignment.center,
                                          child: Text("Cofirm Purchace")),
                                           const SizedBox(height: 8,),
                                        const Text("To complete Registration\nEnter your Email and the PIN send to your Email"),
                                         const TextField(
                                          decoration: InputDecoration(hintText: 'Enter Email'),
                                        ),
                                        const SizedBox(height: 14,),
                                        const TextField(
                                          decoration: InputDecoration(hintText: 'Enter PIN'),
                                        ),
                                        const SizedBox(height: 14,),
                                       Row(children: [
                                         kOutlineButton(
                                          title: 'Next',
                                          onTap: (){
                                            // context.pop();
                                            showCompleteFormPopup(context);
                                         
                                          }), 
                                            const SizedBox(width: 14,),
                                          kOutlineButton(
                                          title: 'Cancel',
                                          onTap: (){  context.pop();})
                                       ],)
                                      ],
                                    ),
                                  )
                                ],
                              );
                            });
                          },
                          title: "Compete form purchase"),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

showCompleteFormPopup(BuildContext context) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 48, vertical: 44),
        children: [
          Center(
              child: SizedBox(
                  width: 616,
                  height: 414,
                  child: Card(
                    color: AppColors.backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 48.0, vertical: 44),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const KText(
                            text: 'Enter Email',
                            fontSize: 32,
                          ),
                          const SizedBox(
                            height: 71,
                          ),
                          const InputTextWidget(
                            // controller: email,
                            titleText: 'Email address',
                          ),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: KText(
                                text: "Enter the student appropriate email",
                                fontSize: 12),
                          ),
                          const Spacer(),
                          Align(
                            alignment: const Alignment(0, 0),
                            child: kOutlineButton(
                                onTap: complementProgramPayment(context),
                                title: "Continue purchase"),
                          )
                        ],
                      ),
                    ),
                  )))
        ],
      );
    },
  );
}

complementProgramPayment(BuildContext context) {
  context.pop();
}

class InitiatePayment extends StatelessWidget {
  const InitiatePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appCustomBar(context),
        body: Container(
          constraints: const BoxConstraints(maxHeight: kMaxWidth),
          width: 666,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const KText(
                  fontWeight: FontWeight.w700,
                  text: "Complete purchase",
                  fontSize: 32),
              const KText(
                  text: "Please enter the following to complete purchase ",
                  fontSize: 22),
              const SizedBox(
                height: 71,
              ),
              const Row(
                children: [
                  Expanded(
                    child: InputTextWidget(
                      // controller: email,
                      titleText: 'Email address',
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: InputTextWidget(
                      // controller: email,
                      titleText: 'Last Name',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Row(
                children: [
                  Expanded(
                    child: InputTextWidget(
                      // controller: email,
                      titleText: 'First Name',
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: InputTextWidget(
                      // controller: email,
                      titleText: 'Other Name',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              kOutlineButton(
                  title: "Complete",
                  onTap: () {
                    // context.pop();
                  })
            ],
          ),
        ));
  }
}

class ProvideOtp extends StatelessWidget {
  const ProvideOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appCustomBar(context),
      body: Center(
        child: provideOtp(),
      ),
    );
  }

  SizedBox provideOtp() {
    return SizedBox(
      width: 616,
      height: 414,
      child: Card(
        color: AppColors.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 44),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const KText(
                text: 'Enter Email',
                fontSize: 32,
              ),
              const SizedBox(
                height: 71,
              ),
              const InputTextWidget(
                // controller: email,
                titleText: 'Email address',
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: KText(
                    text: "Enter the student appropriate email", fontSize: 12),
              ),
              const Spacer(),
              Align(
                alignment: const Alignment(0, 0),
                child: kOutlineButton(onTap: () {}, title: "Continue purchase"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
