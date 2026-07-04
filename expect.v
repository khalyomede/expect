module expect

pub fn expect[T](actual_value T) Assertion[T] {
    return Assertion[T]{
        actual_value: actual_value
    }
}
