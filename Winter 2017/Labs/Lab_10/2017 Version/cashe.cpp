#include "cashe.h"
#include <string>

Cashe::Cashe()
{

}
unsigned int Cashe::htod(const char str[])
{
    unsigned int result = 0;
    int i = 0;

    while(str[i] != '\0')
    {
        if (str[i] >= '0' && str[i] <= '9')
        {
            result = result + (str[i] - '0');
        }
        else if (str[i] >= 'a' && str[i] <= 'f')
        {
            result = result + (str[i] - 'a');
        }
         i++;
   }
    return result;
}

std::string Cashe::hextobin(unsigned n)
{
    std::string str = std::to_string(n);
    std::string result = "";
    int i = 0;

   for (int i = 0; i < str.length(); i++)
    {
        switch (str[i])
        {
        case '0': result.append("0000");break;
        case '1': result.append("0001");break;
        case '2': result.append("0010");break;
        case '3': result.append("0011");break;
        case '4': result.append("0100");break;
        case '5': result.append("0101");break;
        case '6': result.append("0110");break;
        case '7': result.append("0111");break;
        case '8': result.append("1000");break;
        case '9': result.append("1001");break;
        case 'a': result.append("1010");break;
        case 'b': result.append("1011");break;
        case 'c': result.append("1100");break;
        case 'd': result.append("1101");break;
        case 'e': result.append("1110");break;
        case 'f': result.append("1111");break;
        }
    }
   return result;
}


