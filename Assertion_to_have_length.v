module expect

pub fn (assertion Assertion[T]) to_have_length[T](length int) Assertion[T] {
    $for field in T.fields {
        $if field.typ is String ||
            field.typ is Array ||
            field.typ is Map {
            assert assertion.actual_value.len == length, 'Expected "${assertion.actual_value}" to have length ${length}'
        } $else {
            assert false, 'Expected "${assertion.actual_value}" to be either a String, Array or a Map'
        }
    }

    return assertion
}
