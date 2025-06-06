module expect

pub fn (expectation Expectation[T]) to_contain[T, U](value U) Expectation[T] {
    assert expectation.actual_value.contains(value), 'Expected "${expectation.actual_value}" to contain "${value}"'

    return expectation
}
