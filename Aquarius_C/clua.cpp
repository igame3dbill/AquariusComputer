
/*http://cc.byexamples.com/2008/06/07/how-to-embed-lua-51-in-c/
What is so special about Lua? 
Lua is Fast, Light-weight and Embeddable.

Lua can be embedded into c and c++ programs and Lua core are statically complied with your c++ programs, meaning your c++ program itself are now becoming Lua interpreter that execute Lua scripts. To extend your c++ application to execute Lua script is simple, lets check it out.


Before you start, please download and install Lua from HERE.
Disclaimer: My example are based on Lua 5.1.3.

1. Create a simple Lua script and name it as foo.lua.

io.write("Please enter your name: ")
name = io.read() -- read input from user
print ("Hi " .. name .. ", enjoy hacking with Lua");

2. Write a cpp program clua.cpp to execute foo.lua. 
*/
extern "C" {
#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"
}
 
int main()
{
    int s=0;
 
    lua_State *L = lua_open();
 
    // load the libs
    luaL_openlibs(L);
 
    //run a Lua scrip here
    luaL_dofile(L,"foo.lua");
 
    printf("\nI am done with Lua in C++.\n");
 
    lua_close(L);
 
    return 0;
}
