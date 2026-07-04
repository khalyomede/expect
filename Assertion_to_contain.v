module expect

pub fn (assertion Assertion[T]) to_contain[T, U](value U) Assertion[T] {
    assert assertion.actual_value.contains(value), 'Expected "${assertion.actual_value}" to contain "${value}"'

    return assertion
}
