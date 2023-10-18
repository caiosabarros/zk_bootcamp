// tuple.cairo
// Destructure the `cat` tuple to call print on each member.
// Execute `hint` watch subcommand for a hint.


use debug::PrintTrait;

fn main() {
    let cat = ('Furry McFurson', 3);
    let (name, age) = cat;
    name.print();
    age.print();
}
