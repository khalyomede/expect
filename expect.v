module expect

pub fn expect[T](actual_value T) Expectation[T] {
    return Expectation[T]{
        actual_value: actual_value
    }
}
