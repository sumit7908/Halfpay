export class User {
    'email': string;
    'address': Address;
    'mobNumber': string
    'fname': string;
    'lname': string;

    'password': string;
    // uploadPhoto: Image;
}

export class Address {
    'id': number;
    'addLine1': string;
    'city': string;
    'state': string;

    'country':string;
    'zipCode': number;
}

