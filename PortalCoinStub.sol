contract PortalCoin is MyToken { 

    double public multiple;

    mapping (address => uint256) public bonds;              

    function setBondMultiple(double _multiple){
        if (multiple <= 0) throw; 
        multiple = _multiple
    }

    function registerPortal(uint256 bondAmount, address payoutAddress, uint256 xcoinLockAddress) {
        //makes xcoinLockAddress available as a portal 
    }

    function deregisterPortal(uint256 xcoinLockAddress) {
        //releases the bond amount and takes the address off the list of addresses
    }

    function reportPortal(unit256 xcoinLockAddress, string TX) {
        //reports portal for either theft or censorship
        //would need to be associated to the relay contract.
        //distributes xcoinLockAddress bond to working portals
        //removes xcoinLockAddress from list of relays
    }

    function getPortal() contstant returns (unit256) {
        //returns a gateway with the biggest difference between bond and xcoin balance
    }

    function incomingDoge(address _to, unit256 amount, unit256 txHash){
        //validates that txHash is valid, matches amount and _to
        //creates new tokens and sends them to _to.
    }

    function exitingDogeTX(dogeaddress _to, unit256 amount) contstant returns (string) {
        //validates sender has amount
        //generates TX for signing by gateway owner
        //notifies gateway owner with TX
        //stores TX
        //returns TX to caller.
    } 
} 
