pragma solidity >0.4.1;

contract store {

struct candidate{ 
    uint public id;
    string public name;
    uint votecount;

}
uint candidatecount;

 candidate[] public details;
function addVote(uint _id, string _name,uint _votecount)public {
 details.push(candidate(_id, _name, _votecount));

candidatecount += 1;

}
function getvote() public view  returns (candidate[] memory){
    return details;
}
}