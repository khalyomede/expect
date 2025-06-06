module test

import expect { expect }

fn test_it_asserts_string_contains_another_one_in_middle() {
    expect("hello beautiful world").to_contain("beautiful")
}

fn test_it_assert_string_contains_another_one_at_the_end() {
    expect("hello world").to_contain("world")
}

fn test_it_assert_string_contain_another_one_at_the_begining() {
    expect("hello world").to_contain("hello")
}

fn test_it_assert_array_contain_item_in_middle() {
    expect([1, 2, 3]).to_contain(2)
}

fn test_it_assert_array_contain_item_in_at_the_end() {
    expect([1, 2, 3]).to_contain(3)
}

fn test_it_assert_array_contain_item_in_at_the_begining() {
    expect([1, 2, 3]).to_contain(1)
}

fn test_it_can_chain_check_after_testing_an_array_of_int_contains_an_int() {
    expect([1, 2, 3])
        .to_contain(1)
        .to_contain(2)
}
