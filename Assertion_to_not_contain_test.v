module test

import expect { expect }

fn test_it_asserts_string_doesnt_contain_a_given_string() {
    expect("hello world").to_not_contain("hi")
}

fn test_it_assert_array_of_int_doesnt_contain_a_given_int() {
    expect([1, 2, 3]).to_not_contain(4)
}

fn test_it_can_chain_check_after_asserting_an_array_of_int_doesnt_contain_an_int() {
    expect([1, 2, 3])
        .to_not_contain(4)
        .to_not_contain(5)
}
