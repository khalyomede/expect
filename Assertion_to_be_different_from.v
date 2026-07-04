module expect

pub fn (assertion Assertion[T]) to_be_different_from[T, U](expected_value U) Assertion[T] {
    assert assertion.actual_value != expected_value, 'Expected "${assertion.actual_value}" to be different from "${expected_value}"'

    return assertion
}
