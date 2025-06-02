module test

import expect { expect }

fn test_it_assert_truthy_value_is_true() {
    expect(true).to_be_true()
}

fn test_it_can_chain_truthy_assertion() {
    expect(true)
        .to_be_true()
        .to_be_equal_to(true)
}
