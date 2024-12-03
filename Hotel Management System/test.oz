declare
   proc {CreateRoom RoomNumber RoomType Price Availability ?Room}
      Room = room(roomNumber: RoomNumber
                  roomType: RoomType
                  price: Price
                  availability: Availability)
   end
end

declare
   fun {CheckRoomAvailability Room}
      if Room.availability == true then
         {Show 'Room is available'}
      else
         {Show 'Room is not available'}
      end
   end
end

declare
   proc {BookRoom Room}
      Room.availability := false
      {Show 'Room has been booked'}
   end
end

declare
   proc {ReleaseRoom Room}
      Room.availability := true
      {Show 'Room has been released'}
   end
end

declare
   Room1 Room2 Room3 Room4
   {CreateRoom 101 'single' 100 true Room1}
   {CreateRoom 102 'double' 150 true Room2}
   {CreateRoom 103 'suite' 250 true Room3}
   {CreateRoom 104 'single' 120 true Room4}
   
   {Show Room1.roomType}
   {Show Room2.roomType}
   {Show Room3.roomType}
   {Show Room4.roomType}

   {CheckRoomAvailability Room1}

   {BookRoom Room2}
   
   {CheckRoomAvailability Room2}

   {ReleaseRoom Room2}
   
   {CheckRoomAvailability Room2}
end
