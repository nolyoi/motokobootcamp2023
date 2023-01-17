actor {
  var counter : Nat = 0;

  public func multiply(n : Nat, m : Nat) : async Nat { m * n; };
  public func volume(n : Nat) : async Nat { n**3; };
  public func hours_to_minutes(n : Nat) : async Nat { n * 60; };
  public func set_counter(n : Nat) : async () { counter := n; };
  public func get_counter() : async Nat { counter; };
  public func test_divide(n: Nat, m : Nat) : async Bool { n % m == 0; };
  public func is_even(n: Nat) : async Bool { n % 2 == 0; };

}
