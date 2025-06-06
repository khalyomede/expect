module expect

pub fn (expectation Expectation[T]) to_start_with[T, U](value U) Expectation[T] {
    $for field in T.fields {
        $if field.typ is Array {
            assert expectation.actual_value.len > 0, "Expected array to have at least one item"
            assert expectation.actual_value[0] == value, 'Expected "${expectation.actual_value}" to start with "${value}"'
        } $else $if field.typ is String {
            assert expectation.actual_value.starts_with(value), 'Expected "${expectation.actual_value}" to start with "${value}"'
        } $else {
            assert false, "Expected actual value to be either a string or an array"
        }
    }

    return expectation
}
