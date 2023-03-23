// ? user signup feature
export interface SignupFeatures {
    username: string,
    email: string,
    phone_number: number,
    password: string
};


// ? login interface
export interface LoginFeature {
    username: string,
    password: string
}

// ? account status
export interface verificationFeature {
    // * alternatively you can use a JWT
    // ? assuming it's an alphanumric ID or a BSON object
    user_id: string,
    // ? using a booll and string union type 
    // ? if the data coming in has the status wrapped in a string 'true' | 'false'
    verified: boolean | string
}