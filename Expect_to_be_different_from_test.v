module test

import expect { expect }

fn test_it_assert_two_value_are_different() {
    expect(false).to_be_different_from(true)
}

fn test_it_can_chain_assertion_after_asserting_two_values_are_different() {
    expect(1)
        .to_be_different_from(2)
        .to_be_equal_to(1)
}
