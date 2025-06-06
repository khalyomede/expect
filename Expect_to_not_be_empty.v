module expect

pub fn (expectation Expectation[T]) to_not_be_empty[T]() Expectation[T] {
    $for field in T.fields {
        $if field.typ is String ||
            field.type is Array ||
            field.type is Map {
            assert expectation.actual_value.len > 0, 'Expected "${expectation.actual_value}" to not be empty'
        } $else {
            assert false, 'Expected "${expectation.actual_value}" to be either String, Array of Map'
        }
    }

    return expectation
}
