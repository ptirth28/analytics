#include <string>
#include <iostream>
#include <cstdlib>
#include <cstdio>
#include <array>

int main()
{
    // some command that fails to execute properly.
    std::string command("ls /");
    std::string command1("sort");

    std::array<char, 128> buffer;
    std::string result;

    std::cout << "Opening reading pipe" << std::endl;
    FILE* pipe = popen(command.c_str(), "r");
    FILE* pipe1 = popen(command1.c_str(), "w");    
    if (!pipe)
    {
        std::cerr << "Couldn't start command." << std::endl;
        return -1;
    }
    if (!pipe1)
    {
        std::cerr << "Couldn't start command." << std::endl;
        return -1;
    }
    while (fgets(buffer.data(), 128, pipe) != NULL) {
        std::cout << "Sending..." << std::endl;
        fputs(buffer.data(),pipe1);
        //result += buffer.data();
    }
    auto returnCode = pclose(pipe);
    auto returnCode1 = pclose(pipe1);

   // std::cout << result << std::endl;

    return 0;
}