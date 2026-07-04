module expect

pub fn (assertion Assertion[T]) to_be_equal_to[T, U](expected_value U) Assertion[T] {
    assert assertion.actual_value == expected_value, 'Expected "${assertion.actual_value}" to be equal to "${expected_value.str()}"'

    return assertion
}
