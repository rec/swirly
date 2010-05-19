#include "swirly/util/write_json.js"
#include "swirly/util/test_file.js"

Testing.TestFunction(function() {
  function ExpectData(data, result) {
    var file = new TestFileWriter();
    Util.WriteJSON(data, file);
    Testing.ExpectEqual('writer', file.results.join(''), result);
  };

  ExpectData(undefined, 'undefined');
  ExpectData(null, 'null');
  ExpectData([], '[]');
  ExpectData([1], '[1]');
  ExpectData([1, 2], '[1, 2]');
  ExpectData({}, '{}');
  ExpectData({'1':'one'}, "{'1': 'one', }");
  ExpectData({'a': [1, 2, 3], 'b': {'c': [4, 5, 6], 'e': 'hello'}},
"{\n" +
"  'a': [1, 2, 3],\n" +
"  'b': {\n" +
"    'c': [4, 5, 6],\n" +
"    'e': 'hello',\n" +
"  },\n" +
"}");
});

