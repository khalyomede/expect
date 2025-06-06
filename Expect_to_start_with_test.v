module test

import expect { expect }

fn test_it_asserts_string_starts_with_another_string() {
    expect("hello world").to_start_with("hello")
}

fn test_it_assert_array_of_int_starts_with_a_given_int() {
    expect([1, 2, 3]).to_start_with(1)
}

fn test_it_can_chain_check_after_asserting_an_array_of_int_starts_with_an_int() {
    expect([1, 2, 3])
        .to_start_with(1)
        .to_contain(2)
}
