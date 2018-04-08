pragma solidity ^0.4.18;

contract Buyer {
   string  public buyer_name;
   uint public buyer_age ;
   

   function set_Name(string Newowner)  public {
       buyer_name = Newowner;
   }
   
   function set_Age(uint Newage) public {
        buyer_age = Newage;
    }
    
    // ###################Getting Buyer Details
    
   function get_Name() public returns (string){
        return (buyer_name);
    }
    
   function get_Age () public returns (uint){
        return (buyer_age);
    }
}
    contract Seller  {
   string  public seller_name;
   uint public seller_age ;
   address private Seller_Add;

   function set_Name(string newSeller)  public {
       seller_name = newSeller;
   }
   
   function set_Age(uint _seller_age) public {
        seller_age = _seller_age;
    }
    
    // ###################Getting Seller Details
    
   function get_Seller_Name() public returns (string){
        return (seller_name);
    }
    
   function get_Seller_Age () public returns (uint){
        return (seller_age);
    }
    
   
}



contract owned {
   address public owner;

   function owned()  public {
       owner = msg.sender;
   }

   modifier onlyOwner {
       require(msg.sender == owner);
       _;
   }

   function transferOwnership(address newOwner) onlyOwner  public {
       owner = newOwner;
   }
}