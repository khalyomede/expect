module test

import expect { expect }

fn test_it_assert_falsy_value_is_false() {
    expect(false).to_be_false()
}

fn test_it_can_chain_falsy_assertion() {
    expect(false)
        .to_be_false()
        .to_be_equal_to(false)
}
