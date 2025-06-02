module expect

pub fn (expectation Expectation[T]) to_be_different_from[T, U](expected_value U) Expectation[T] {
    assert expectation.actual_value != expected_value, 'Expected "${expectation.actual_value}" to be different from zero value of type ${expected_value}'

    return expectation
}
