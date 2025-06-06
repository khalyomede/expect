module test

import expect { expect }

fn test_it_asserts_int_is_between_two_int() {
    expect(42).to_be_between(41, 43)
}

fn test_it_can_chain_assertions_after_checking_float_between_two_floats() {
    expect(2.43)
        .to_be_between(2.42, 2.44)
        .to_be_equal_to(2.43)
}
