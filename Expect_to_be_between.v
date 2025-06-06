module expect

pub fn (expectation Expectation[T]) to_be_between[T, U](min U, max U) Expectation[T] {
    assert expectation.actual_value >= min, 'Expected "${expectation.actual_value}" to be greater or equal to "${min}"'
    assert expectation.actual_value <= max, 'Expected "${expectation.actual_value}" to be greater or equal to "${max}"'

    return expectation
}
