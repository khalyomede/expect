module expect

pub fn (expectation Expectation[bool]) to_be_false() Expectation[bool] {
    assert expectation.actual_value == false, 'Expected ${expectation.actual_value} to be false'

    return expectation
}
