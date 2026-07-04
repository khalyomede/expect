module expect

pub fn (assertion Assertion[T]) to_be_between[T, U](min U, max U) Assertion[T] {
    assert assertion.actual_value >= min, 'Expected "${assertion.actual_value}" to be greater or equal to "${min}"'
    assert assertion.actual_value <= max, 'Expected "${assertion.actual_value}" to be greater or equal to "${max}"'

    return assertion
}
