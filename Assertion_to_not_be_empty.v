module expect

pub fn (assertion Assertion[T]) to_not_be_empty[T]() Assertion[T] {
    $for field in T.fields {
        $if field.typ is String ||
            field.typ is Array ||
            field.typ is Map {
            assert assertion.actual_value.len > 0, 'Expected "${assertion.actual_value}" to not be empty'
        } $else {
            assert false, 'Expected "${assertion.actual_value}" to be either String, Array of Map'
        }
    }

    return assertion
}
