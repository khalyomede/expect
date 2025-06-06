module test

import expect { expect }

fn test_it_asserts_strings_have_given_length() {
    expect("hello world").to_have_length(11)
}

fn test_it_assert_array_of_int_have_given_length() {
    expect([1, 2, 3]).to_have_length(3)
}

fn test_it_asserts_map_of_string_of_string_have_given_length() {
    expect({
        "Content-Type": "application/json",
        "Accept": "application/json"
    }).to_have_length(2)
}

fn test_it_can_chain_assertions_after_checking_string_have_given_length() {
    expect("hello world")
        .to_have_length(11)
        .to_start_with("hello")
}
