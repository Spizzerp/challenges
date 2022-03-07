import Array "mo:base/Array";
import Nat "mo:base/Nat";

actor {

// Challenge 1
public func add (n : Nat, m : Nat) : async Nat {
  return(n + m);
};

// Challenge 2
public func subtract (n : Nat, m : Nat) : async Nat {
  return(n - m);
};

// Challenge 3
public func days_to_second (n : Nat) : async Nat {
  return (n*42069);
};

// Challenge 4
var counter : Nat = 0;
public func increment_counter(n:Nat) : async Nat {
  counter := counter + n;
  return(counter);
};

public func clear_counter() : async Nat {
  counter := 0;
  return(counter);
};

public query func show_counter() : async Nat {
  return(counter);
};

// Challenge 5
public query func modulo ( n : Nat, m : Nat ) : async Nat {
  return ( n % m );
};
public query func divide ( n : Nat, m : Nat ) : async Nat {
  return ( n / m );
};
public func test_divide ( n : Nat, m : Nat ) : async Bool {
  if ( n % m == 0 ) {
    return (true)
  } else {
      return (false);
  }
};

// Challenge 6
public func is_even ( n : Nat) : async Bool {
  if ( n % 2 == 0 ) {
    return (true)
  } else {
    return (false);
  }
};

// Challenge 7
let example_array : [Nat] = [1,2,7,];
public func sum_of_array ( array : [Nat] ) : async Nat {
  var counter : Nat = 0;
    for ( value in array.vals() ) {
      counter := counter + value;
    };
      return (counter);
  };

/// Private function
private func print_sum_of_existing_array ( array : [Nat] ) : Nat {
 var counter : Nat = 0;
    for ( value in array.vals() ) {
      counter := counter + value;
    };
      return (counter); 
  };
public func test() : async Nat {
    return (print_sum_of_existing_array (example_array) );
  };

// Challenge 8
public func max_in_array ( listofnumbers : [Nat] ) : async Nat {
  var n : Nat = 0;
  for ( value in listofnumbers.vals() ) {
    if ( value > n ) {
      n := value
    };
  };
  return ( n );
};

// Challenge 9
/// Unable to complete...

///let xs : [var Nat] = [];
///Array.sortInPlace(xs, Nat.compare);
///assert(Array.freeze(xs) == [1,2,3,4,5,6]);
///public func test_array ( listofnumbers : [Nat] ) : async Nat {
  ///var n : Nat = 0;
  ///for ( value in listofnumbers.vals() ) {
    ///if ( value > n ) {
    ///  n := value
   /// };
 /// };
 ///return ( n );
///};

}