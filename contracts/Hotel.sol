pragma solidity ^0.8.17;

// SPDX-License-Identifier: UNLICENSED

struct hotelRoom{
    string categoryName;
    uint tarrif;
    bool occupied;
    uint review;
    uint reviewNo;
    address customerBooked;
    bool booked;
}

struct customer{
    string customerName;
    string customerAddress;
    uint custId;
}

function setHotelRoom(uint _roomNo, string memory _categoryName, uint _tarrif) public only{
    hotelRoomDetails[_roomNo].categoryName = _categoryName;
    hotelRoomDetails[_roomNo].tarrif = _tarrif;
    hotelRoomDetails[_roomNo].review = 0;
    hotelRoomDetails[_roomNo].reviewNo = 0;
    noOfRooms++;
}

constructor(){
    owner = msg.sender;
    setHotelRoom(1, "Royal", 10);
    setHotelRoom(2, "Premium", 5);
    setHotelRoom(3, "Delux", 3);   
}

function payToBook() public payable{
    if(msg.value == 10){
        bookRoomRoyal();
    }

    if(msg.value == 5){
        bookRoomPremium();
    }

    if(msg.value == 3){
        bookRoomDelux();
    }   else{
        revert();
    }
}

