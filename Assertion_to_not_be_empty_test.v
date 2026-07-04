module test

import expect { expect }

fn test_it_asserts_string_is_not_empty() {
    expect("hello world").to_not_be_empty()
}

fn test_it_asserts_array_of_int_is_not_empty() {
    expect([1, 2, 3]).to_not_be_empty()
}

fn test_it_asserts_map_of_string_of_string_is_not_empty() {
    expect({
        "Content-Type": "application/json",
        "Accept": "application/json"
    }).to_not_be_empty()
}

fn test_it_can_chain_assertions_after_checking_string_is_not_empty() {
    expect("hello world")
        .to_not_be_empty()
        .to_start_with("hello")
}
