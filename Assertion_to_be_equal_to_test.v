module test

import expect { expect }

fn test_it_assert_u8_equals_to_another_u8() {
    expect(u8(42)).to_be_equal_to(42)
}

fn test_it_can_chain_assertions_after_checking_u8_is_equal_to_another_u8() {
    expect(u8(42))
        .to_be_equal_to(42)
        .to_be_different_from(43)
}
