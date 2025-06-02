module expect

pub fn (expectation Expectation[T]) to_be_equal_to[T, U](expected_value U) Expectation[T] {
    assert expectation.actual_value == expected_value, 'Expected "${expectation.actual_value}" to be equal to "${expected_value.str()}"'

    return expectation
}
