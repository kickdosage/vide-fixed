--!strict
-- string manipulation is quite puzzling...

local function to_kebab_case(str: string)
	-- look for acronym -> word transitions like (UIListLayout)
	--                                             ^^
	str = string.gsub(str, "(%u+)(%u%l)", "%1-%2")

	-- the first group of the second argument here captures anything that is NOT (^ is the negate operator here)
	-- hyphen (-), space ( ), underscore (_), uppercase letter
	-- the second group captures the uppercase letter of the next word
	str = string.gsub(str, "([^%-%s_%u])(%u)", "%1-%2")

	-- clean up the spaces and underscores we kept above
	str = string.gsub(str, "[%s_]+", "-")

	return string.lower(str)
end

return to_kebab_case
