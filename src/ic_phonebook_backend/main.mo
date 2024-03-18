import Map "mo:base/HashMap";
import Text "mo:base/Text";

actor {

  type Name = Text;
  type PhoneNumber = Text;

  type PhonebookEntry = {
    desc : Text;
    phone : PhoneNumber;
  };

  let phonebook = Map.HashMap<Name, PhonebookEntry>(0, Text.equal, Text.hash);

  public func add_contact(name : Name, entry : PhonebookEntry) : async () {
    phonebook.put(name, entry);
  };

  public query func find_contact(name : Name) : async ?PhonebookEntry {
    phonebook.get(name);
  };
};
