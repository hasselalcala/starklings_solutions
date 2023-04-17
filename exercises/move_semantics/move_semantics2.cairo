// move_semantics2.cairo
// Make me compile without changing line 16 or moving line 13!
// Execute `starklings hint move_semantics2` or use the `hint` watch subcommand for a hint.

use array::ArrayTrait;
use debug::PrintTrait;


fn main() {
    let arr0 = ArrayTrait::new();
    let arr2 = ArrayTrait::new();
    let mut arr1 = fill_array(arr2);

    // Do not change the following line!
    arr0.print();
}

fn fill_array(arr: Array<felt252>) -> Array<felt252> {
    let mut arr = arr;

    arr.append(22);
    arr.append(44);
    arr.append(66);

    arr
}
