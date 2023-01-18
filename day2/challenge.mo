import Iter "mo:base/Iter";
import Char "mo:base/Char";
import Int "mo:base/Int";
import Text "mo:base/Text";
import Nat "mo:base/Nat";
import Array "mo:base/Array";
import Bool "mo:base/Bool";
import List "mo:base/List";
import Buffer "mo:base/Buffer"

actor {
  type TextPattern = Text.Pattern;

  public func average_array(array : [Int]) : async Int {
    var total : Int = 0;
    let arr_iter = Iter.fromArray(array);
    let arr_size = Iter.size(arr_iter);

    for (n in array.vals()) {
      total += n;
    };

    return total/arr_size;
  };


  public func count_character(t : Text, c : Char) : async Nat { 
    let combined : Text = Text.concat(t, Text.fromChar(c));
    return Text.size(combined);
  };

  public func factorial(n : Nat): async Nat { 
    let iter = Iter.range(1, n);
    var total : Nat = 1;

    for (i in iter) {
      total *= i;
    };

    return total;
  };

  public func number_of_words(t : Text) : async Nat { 
    let p : TextPattern = #text(" ");
    var n = Text.split(t, p);
    return Iter.size(n);
  };

  public func find_duplicates(n : [Nat]) : async [Nat] {
    let buff = Buffer.Buffer<Nat>(0);

    for(i in n.vals()){
      var counter = 0;
      
      for(j in n.vals()){
        if(i == j){
          counter += 1;                                   
        };
      };
     
      if(counter >= 2){
        buff.add(i);
      };
    };

    Buffer.removeDuplicates<Nat>(buff, Nat.compare);
    return Buffer.toArray(buff);
  };

  public func convert_to_binary(n : Nat) : async Text { 
    return Nat.toText(n);
  };

}
