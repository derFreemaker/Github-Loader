local luaunit = require('Test.Luaunit')
require('Test.Simulator.Simulator')

local UUID = require('Core.UUID')

function TestNewUUID()
	local test = UUID.Static__New()

	luaunit.assertNotIsNil(test)
end

function TestEmptyUUID()
	local test = UUID.Static__Empty()

	luaunit.assertEquals(tostring(test), "000000-0000-000000")
end

function TestParseUUID()
	local uuidStr = "000000-0000-000000"

	local test = UUID.Static__Parse(uuidStr)

	luaunit.assertEquals(tostring(test), uuidStr)
end

os.exit(luaunit.LuaUnit.run())