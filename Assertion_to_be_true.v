module expect

pub fn (assertion Assertion[bool]) to_be_true() Assertion[bool] {
    assert assertion.actual_value == true, 'Expected ${assertion.actual_value} to be true'

    return assertion
}
