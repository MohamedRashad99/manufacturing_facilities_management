// import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';
// 
// 

// class CustomPopupWidgetMaterialOrderRelease extends StatelessWidget {
//   final String? title;
//   const CustomPopupWidgetMaterialOrderRelease({super.key, this.title});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<MaterialOrderReleaseCubit, MaterialOrderReleaseState>(
//       builder: (_, state) {
//         var cubit = context.read<MaterialOrderReleaseCubit>();

//         return Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             SizedBox(
//               height: context.height * 0.64,
//               child: PageView.builder(
//                 controller: cubit.pageController,
//                 itemCount: cubit.pageDialog.length,
//                 onPageChanged: (index) {
//                   cubit.changePageIndex(index);  // Update page index in Cubit
//                 },
//                 itemBuilder: (context, index) {
//                   return cubit.pageDialog[index];
//                 },
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 cubit.pageDialog.length,
//                 (index) => Padding(
//                   padding: const EdgeInsets.only(right: 8),
//                   child: AnimatedDot(
//                     isActive: cubit.pageIndex == index,
//                     onTap: () {
//                       cubit.changePageIndex(index);  // Update page index in Cubit
//                       cubit.emitPageJump();  // Trigger state to update the PageView
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
