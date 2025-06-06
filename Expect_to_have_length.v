module expect

pub fn (expectation Expectation[T]) to_have_length[T](length int) Expectation[T] {
    $for field in T.fields {
        $if field.typ is String ||
            field.typ is Array ||
            field.typ is Map {
            assert expectation.actual_value.len == length, 'Expected "${expectation.actual_value}" to have length ${length}'
        } $else {
            assert false, 'Expected "${expectation.actual_value}" to be either a String, Array or a Map'
        }
    }

    return expectation
}
