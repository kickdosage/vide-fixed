assert(game, "when using vide outside of Roblox, require lib.luau instead")

local vide = require(script.lib)
local create = require("@self/create")

export type source<T> = vide.source<T>
export type Source<T> = vide.Source<T>
export type context<T> = vide.context<T>
export type Context<T> = vide.Context<T>
export type InstanceProperties<Name> = create.InstanceProperties<Name>

return vide
