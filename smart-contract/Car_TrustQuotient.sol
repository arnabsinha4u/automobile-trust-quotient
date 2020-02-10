pragma solidity ^0.4.0;
pragma experimental ABIEncoderV2;

contract Car_TrustQuotient {
    
    struct car_property {
        string car_make;
        string car_name;
        string car_type;
        string apk_date;
        string car_usage_type;
        string car_first_colour;
        string car_economy_label;
    }
    

    mapping (string => car_property) car_properties;
    string[] public cars_list;
    
    function setNewCar (string _car_license_plate, 
                       string _car_make, 
                       string _car_name, 
                       string _car_type, 
                       string _apk_date, 
                       string _car_usage_type, 
                       string _car_first_colour, 
                       string _car_economy_label) public {

        car_property storage car = car_properties[_car_license_plate];
        
        car.car_make = _car_make;
        car.car_name = _car_name;
        car.car_type = _car_type;
        car.apk_date = _apk_date;
        car.car_usage_type = _car_usage_type;
        car.car_first_colour = _car_first_colour;
        car.car_economy_label = _car_economy_label;

        cars_list.push(_car_license_plate) -1;
    }
    
    function getAllCars () public view returns (string[]) {
        return cars_list;
    }
    
    function getDetailsOfCar (string _find_car) view public returns (string, string, string, string, string, string, string) {
        return (car_properties[_find_car].car_make, 
                car_properties[_find_car].car_name,
                car_properties[_find_car].car_type,
                car_properties[_find_car].apk_date,
                car_properties[_find_car].car_usage_type,
                car_properties[_find_car].car_first_colour,
                car_properties[_find_car].car_economy_label
                );
    }
    
}
