1. Write a function unique that takes a list l of type List and returns a new list with all duplicate elements removed.


5.
import HashMap "mo:base/HashMap";
import Iter "mo:base/Iter";
import Principal "mo:base/Principal";
actor {
   
    stable var usernames : [HashMap.HashMap<Principal, Text>] = [];
  
    var proposal_buff = Buffer.fromArray<Types.Proposal>(proposals);

    public shared ({ caller }) func add_username(name : Text) : async () {
      usernames.put(caller, name);
    };

    public query func get_usernames() : async [(Principal, Text)] {
      usernames;
    };
};