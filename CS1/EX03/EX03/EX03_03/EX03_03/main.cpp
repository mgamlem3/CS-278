//
//  main.cpp
//  EX03_03
//
//  Created by Michael Gamlem on 9/22/16.
//  Copyright © 2016 Michael Gamlem III. All rights reserved.
//

#include <iostream>
#include <string>

using std::string;
using std::endl;
using std::cout;
using std::bitset;

//functions//
//takes a integer and returnes a binary representation of that number (string)
string changeToString(int num);

//////

int main()
{
    //pass a value to the function
    int value = 183;
    //show value
    cout <<"Value to be converted: " << value << endl;
    string result = "";
    
    result = changeToString(value);
    
    //show result
    cout <<"Conversion:\n" << result << endl;
    
    return 0;
}

//takes a integer and returnes a binary representation of that number (string)
string changeToString(int num)
{
    //change num to binary and cast to string
    string s = bitset<32>(num).to_string();
    
    
    return s;
}