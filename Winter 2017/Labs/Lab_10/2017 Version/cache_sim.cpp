//  File cache_sim.cpp

#include <iostream>  //  For normal output: cout, endl
#include <fstream>   //  For file streams
#include <iomanip>   //  For the hex and dec stream manipulators
#include <vector>
#include <fstream>

using namespace std;
class Direct_Mapped_Cache
{
    public:
    int Direct_Mapped_Size(unsigned addr);
    void Hit_Miss();
    std::vector<int>DirectMapped;
    std::vector<char>type;
    bool valid_dirty();
};

//  Augmment this function to properly perform the 
//  cache simulation
bool valid_dirty()
{

}
void Direct_Mapped_Cache::Hit_Miss()
{
    
    int hit = 0;
    int miss = 0;
    int miss_write_back = 0;
    int dirty_bit = 0;
    int valid_bit = 0;
    int index  = 0;
    int sum = 0;
    for(int b = 0; b < DirectMapped.size(); b++)
    {    int a;
        hit = 0;
        miss = 0;
        //dirty_bit = 0;
        //valid_bit = 0;
        miss_write_back = 0;
        index = DirectMapped[b] & 3;
        //std::cout << index << endl;
        if(index = 0)
            valid_bit = 0;
        else if(index = 1)
            valid_bit = 1;
        else if(index = 2)
            valid_bit = 0;
        else if(index = 3)
            valid_bit = 1;

        for( a = 0; a < DirectMapped.size(); a++)
        {
            
            if(type[a] == 'w')
                dirty_bit = 1;
            else 
                dirty_bit = 0;

            if(DirectMapped[b] == DirectMapped[a])
                    hit++;
                
            else if(dirty_bit == 1 && valid_bit == 1)
                miss_write_back++;

            else
                miss++;
            
        }
        //std::cout << b << endl;
        sum++;
    }
    ofstream myfile;
    myfile.open("output_results.txt");
    
    //std::cout << DirectMapped.size();
    myfile << "Number of hits : " << hit << endl;
    myfile << "Number of misses : " << miss << endl;
    myfile << "Number of misses with write back : " << miss_write_back << endl;
    myfile << "Number of Memory accesses : " << sum << endl;

}




int main(int argc, char** argv)
{
    
    Direct_Mapped_Cache table;
    if ( argc > 1 )  //  Require a data file
    {
        ifstream fin;
        fin.open(argv[1]);
        if ( fin.good() )
        {   //  File opened successfully
            char command;
            unsigned address;
            //  hex is the hexadecimal stream manipulator
            int i;
            for (i = 0 ;; i++ )  //  Infinite loop
            {
                fin >> command;
                table.type.push_back(command);
                if ( command == 'x' )
                    break;    //  All done
                fin >> hex >> address;  //  Read address as hexadecimal
                
                //std::cout << i << endl;
                fin >> dec;   //  Reset stream to "normal" input
                int tag = address >>= 8;
                
                table.DirectMapped.push_back(tag);
            }
            table.Hit_Miss();
            fin.close();   //  Close the file
        }
        else   //  Could not open file, so report error
            cout << "Could not open the command file." << endl;
    }
    else  //  User must provide a datafile
        cout << "Usage: " << endl
             << "  cache_sim <filename>" << endl;
}


