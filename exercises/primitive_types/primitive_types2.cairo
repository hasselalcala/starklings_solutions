// primitive_types2.cairo
// Fill in the rest of the line that has code missing!
// No hints, there's no tricks, just get used to typing these :)


use debug::PrintTrait;

fn main() {
    // A short string is a string whose length is at most 31 characters, and therefore can fit into a single field element.
    // Short strings are actually felts, they are not a real string.
    // Note the _single_ quotes that are used with short strings.

    let mut my_first_initial = 'C';
    if is_alphabetic(
        ref my_first_initial
    ) {
        ('Alphabetical!').print();
    } else if is_numeric(
        ref my_first_initial
    ) {
        ('Numerical!').print();
    } else {
        ('Neither alphabetic nor numeric!').print();
    }

    let mut your_character = 'H'; // Finish this line like the example! What's your favorite short string?
    // Try a letter, try a number, try a special character, try a short string!
    if is_alphabetic(
        ref your_character
    ) {
        ('Alphabetical!').print();
    } else if is_numeric(
        ref your_character
    ) {
       ('Numerical!').print();
    } else {
        ('Neither alphabetic nor numeric!').print();
    }
}

fn is_alphabetic(ref char: felt252) -> bool {
    if char >= 'a' {
        if char <= 'z' {
            return true;
        }
    }
    if char >= 'A' {
        if char <= 'Z' {
            return true;
        }
    }
    false
}

fn is_numeric(ref char: felt252) -> bool {
    if char >= '0' {
        if char <= '9' {
            return true;
        }
    }
    false
}

// Note: the following code is not part of the challenge, it's just here to make the code above work.
// Direct felt252 comparisons have been removed from the core library, so we need to implement them ourselves.
// There will probably be a string / short string type in the future
impl PartialOrdFelt of PartialOrd::<felt252> {
    #[inline(always)]
    fn le(a: felt252, b: felt252) -> bool {
        !(b < a)
    }
    #[inline(always)]
    fn ge(a: felt252, b: felt252) -> bool {
        !(a < b)
    }
    #[inline(always)]
    fn lt(a: felt252, b: felt252) -> bool {
        integer::u256_from_felt252(a) < integer::u256_from_felt252(b)
    }
    #[inline(always)]
    fn gt(a: felt252, b: felt252) -> bool {
        b < a
    }
}
