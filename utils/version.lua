local flow = require "utils.flow"

local M = {}
M.RESPONSE = false


local function get_version_from_github()
	local url = "https://api.github.com/repos/Jerakin/Pokedex5E/releases/latest"
	headers = {}
	headers["User-Agent"] = "request"
	http.request(url, "GET", function(self, id, res)
		if res.status ~= 200 and res.status ~= 304 then
			M.RESPONSE = true
		else
			local response = json.decode(res.response)
			M.RESPONSE = response["name"]
		end
	end, headers) 
end


local function get_local_version()
	return sys.get_config("project.version")
end

local function is_outdated(new, old)
	_, _, v1, v2, v3 = string.find(new, "(%d+)%.(%d+)%.(%d+)")
	_, _, r1, r2, r3 = string.find(old, "(%d+)%.(%d+)%.(%d+)")
	v1, v2, v3 = tonumber(v1), tonumber(v2), tonumber(v3)
	r1, r2, r3 = tonumber(r1), tonumber(r2), tonumber(r3)
	if v1 > r1 then
		return true
	else
		if v2 <= r2 then
			if v3<= r3 then
				return false
			else
				return false
			end
		else
			return true
		end
	end
end

function M.check_version()
	flow.start(function() 
		get_version_from_github()
		local app = get_local_version()
		flow.until_true(function() return M.RESPONSE end)
		if M.RESPONSE ~= true then
			return is_outdated(M.RESPONSE, app)
		end
		return false
	end)
end


return M