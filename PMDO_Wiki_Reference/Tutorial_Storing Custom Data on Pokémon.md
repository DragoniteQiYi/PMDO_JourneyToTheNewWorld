# Tutorial:Storing Custom Data on Pokémon

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Storing_Custom_Data_on_Pok%C3%A9mon

Each  `Character` has a  `LuaData` property that can be used to store custom data. This can be useful as an alternative to a raw [Script Variable](https://wiki.pmdo.pmdcollab.org/wiki/Script_Variable "Script Variable (page does not exist)") since the data will follow a Pokémon specifically, and won't need to be indexed in some other way.

A `Character`'s `LuaData` can be accessed by calling it in a Lua script:

```
   [char].LuaData
```

`LuaData` is just a Lua table, so any function or index into it works like any other Lua table. For example, you can set and check values like so:

```
   [char].LuaData.nature = "adamant"
```

```
   if [char].LuaData.pointsEarned > 100 then
       -- do something
   end
```

To delete a variable in `LuaData`, set it to `nil`, just like any other variable:

```
   [char].LuaData.temp = nil
```
