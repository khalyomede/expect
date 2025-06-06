module test

import expect { expect }

fn test_it_asserts_string_doesnt_start_with_another_string() {
    expect("hello world").to_not_start_with("hey")
}

fn test_it_assert_array_of_int_doesnt_start_with_a_given_int() {
    expect([1, 2, 3]).to_not_start_with(2)
}

fn test_it_can_chain_check_after_asserting_an_array_of_int_doesnt_start_with_an_int() {
    expect([1, 2, 3])
        .to_not_start_with(2)
        .to_contain(2)
}
