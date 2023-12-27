import 'package:dart_ch_3_gen_q1_building_a_dart_function_utilizing_various_concepts/dart_ch_3_gen_q1_building_a_dart_function_utilizing_various_concepts.dart';
import 'package:test/test.dart';

void main() {
  test('analyzeText function test', () {
    var result = analyzeText('Hello123');
 
    // Test for length
    expect(result['length'], 8);
 
    // Test for hasDigits
    expect(result['hasDigits'], true);
 
    // Test for reversed
    expect(result['reversed'], '321olleH');
  });
}
