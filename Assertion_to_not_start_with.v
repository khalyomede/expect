module expect

pub fn (assertion Assertion[T]) to_not_start_with[T, U](value U) Assertion[T] {
    $for field in T.fields {
        $if field.typ is Array {
            if assertion.actual_value.len > 0 {
                assert assertion.actual_value[0] != value, 'Expected "${assertion.actual_value}" to not start with "${value}"'
            }
        } $else $if field.typ is String {
            assert !assertion.actual_value.starts_with(value), 'Expected "${assertion.actual_value}" to not start with "${value}"'
        } $else {
            assert false, "Expected actual value to be either a string or an array"
        }
    }

    return assertion
}
