module test

import expect { expect }

fn test_it_can_assert_string_is_empty() {
    expect("").to_be_empty()
}

fn test_it_assert_array_is_empty() {
    actual := []string{}

    expect(actual).to_be_empty()
}

fn test_it_asserts_map_is_empty() {
    actual := map[string]string{}

    expect(actual).to_be_empty()
}

fn test_it_can_chain_assertions_after_checking_string_is_empty() {
    expect("")
        .to_be_empty()
        .to_have_length(0)
}
