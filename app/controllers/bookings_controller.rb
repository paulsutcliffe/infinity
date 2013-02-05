class BookingsController < InheritedResources::Base



def create
  create! { new_booking_path(@booking) }
end

def update
  update! { booking_path(@booking)}
end

end
