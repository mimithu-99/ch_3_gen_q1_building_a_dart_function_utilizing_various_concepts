/// Support for doing something awesome.
///
/// More dartdocs go here.

library;

export 'src/dart_ch_3_gen_q1_building_a_dart_function_utilizing_various_concepts_base.dart';

// TODO: Export any libraries intended for clients of this package.
/*
Practice Question 1: Building a Dart Function Utilizing Various Concepts
Task Description:
Create a Dart function named analyzeText that takes a string and returns 
a Map with three keys: length (the length of the string),
 hasDigits (a boolean indicating if the string contains any digits), 
 and reversed (the string in reverse order). Implement this 
 function by utilizing Dart’s string manipulation and collection features.

*/
import 'package:characters/characters.dart';

// একটি টেক্সট এনালাইজ করার জন্য একটি মেথড
Map<String, dynamic> analyzeText(String input) {
  // একটি ম্যাপ ডিক্লেয়ার করা হয়েছে, এই ম্যাপে Data Store করা হবে
  final result = <String, dynamic>{};

  // মোট ক্যারেক্টার সংখ্যা জানার জন্য 'length' ক্যারেক্টার ব্যবহার হয়েছে
  result['length'] = input.length;

  // 'hasDigits' ক্যারেক্টারের এক্সটেনশন মেথড ব্যবহার করে দেখা হচ্ছে কোনো ডিজিট আছে কিনা
  result['hasDigits'] = input.digits();

  // স্ট্রিংকে রিভার্স করে 'reversed' ক্যারেক্টারে সংরক্ষণ করা হচ্ছে
  result['reversed'] = input.characters.toList().reversed.join();

  return result;
}

// স্ট্রিংকে ডিজিট আছে কিনা তা চেক করতে একটি এক্সটেনশন মেথড
extension HasDigits on String {
  bool digits() {
    // একটি ক্যারেক্টারের লুপ দিয়ে চেক করা হচ্ছে কোনো ডিজিট আছে কিনা
    for (var ndivChar in characters) {
      if (RegExp(r'[0-9]').hasMatch(ndivChar)) {
        return true; // যদি কোনো ডিজিট পাওয়া যায়, তাহলে true রিটার্ন করা হয়
      }
    }
    return false; // যদি কোনো ডিজিট না পাওয়া যায়, তাহলে false রিটার্ন করা হয়
  }
}


//import 'package:characters/characters.dart';

// Map<String, dynamic> analyzeText(String input) {
//   final ans = <String,
//       dynamic>{}; //declaring a map this way is also possible; don't need the constructor

//   ans['length'] = input.length;
//   ans['hasDigits'] = input.digits();
//   ans['reversed'] = input.characters.toList().reversed.join();

//   return ans;
// }

// extension HasDigits on String {
//   bool digits() {
//     for (var indivChar in characters) {
//       if (RegExp(r'[0-9]').hasMatch(indivChar)) {
//         return true;
//       }
//     }
//     return false;
//   }
// }




// Map<String, dynamic> analyzeText(String input) {
//   return {
//     'length': input.length,
//     'hasDigits': input.contains(RegExp(r'\d')),
//     'reversed': input.split('').reversed.join(),
//   };
// }


// Map<String, dynamic> analyzeText(String text) {
//   Map<String, dynamic> entriesValue = {};
//   entriesValue['length'] = text.length;
//   //entriesValue['hasDigits'] = digits (text);
//   entriesValue['reversed'] = text.split('').reversed.join();
//   final regexp = RegExp(r'[0-9]');
//   return entriesValue;

//   // bool digits(String input) {
//   //   final regexp = RegExp(r'[0-9]');
//   //   if (regexp.hasMatch(text)) {
//   //     return true;
//   //   } else {
//   //     return false;
//   //   }
// }
