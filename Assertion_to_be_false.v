module expect

pub fn (assertion Assertion[bool]) to_be_false() Assertion[bool] {
    assert assertion.actual_value == false, 'Expected ${assertion.actual_value} to be false'

    return assertion
}
