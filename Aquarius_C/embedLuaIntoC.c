#include <stdlib.h>
#include <stdio.h>

/* Include the Lua API header files. */
#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>

// http://www.heavycoder.com/tutorials/lua_embed.php
int main(void)
{
	/* Declare the Lua libraries we wish to use. */
	/* Note: If you are opening and running a file containing Lua code */
	/* using 'lua_dofile(l, "myfile.lua") - you must delcare all the libraries */
	/* used in that file here also. */
	static const luaL_reg lualibs[] =
	{
        	{ "base",       luaopen_base },
        	{ NULL,         NULL }
	};

	/* A function to open up all the Lua libraries you declared above. */
	static void openlualibs(lua_State *l)
	{
        	const luaL_reg *lib;

      		for (lib = lualibs; lib->func != NULL; lib++)
		{
                	lib->func(l);
                	lua_settop(l, 0);
        	}
	}

	/* Declare a Lua State, open the Lua State and load the libraries (see above). */
	lua_State *l;
	l = lua_open();
	openlualibs(l);

	/* You can do what you want here. Note: Remember to update the libraries used (see above) */
	/* if you add to your program and use new Lua libraries. */
	/* In the lines below, I load and run the Lua code contained in the file */
	/* "script.lua". */
	/* Plus print some text directly from C. */
	printf("This line in directly from C\n\n");
	lua_dofile(l, "script.lua");
	printf("\nBack to C again\n\n");

	/* Remember to destroy the Lua State */
	lua_close(l);

	return 0;
}
