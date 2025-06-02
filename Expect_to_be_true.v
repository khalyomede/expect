module expect

pub fn (expectation Expectation[bool]) to_be_true() Expectation[bool] {
    assert expectation.actual_value == true, 'Expected ${expectation.actual_value} to be true'

    return expectation
}
