#include "swirly/functional/chain.js"

Testing.TestFunction(function() {
  function none() { return 'none'; };
  function plusone(x) { return x + 1; };
  function dict(x) { return { 1:'hello' }; };

  Testing.ExpectFunction('functional.Chain', Functional.Chain, Functional,
                         [none, []], none);
  Testing.ExpectFunction('functional.Chain', Functional.Chain, Functional,
                         [plusone, [1]], 2);
  Testing.ExpectFunction('functional.Chain', Functional.Chain, Functional,
                         [plusone, [1, 1]], undefined);
  Testing.ExpectFunction('functional.Chain', Functional.Chain, Functional,
                         [dict, [2, 1]], 'hello');
  Testing.ExpectFunction('functional.Chain', Functional.Chain, Functional,
                         [{2:plusone}, [2, 12]], 13);
  Testing.ExpectFunction('functional.Chain', Functional.Chain, Functional,
                         [{2:dict}, [2, 23, 1]], 'hello');
});
