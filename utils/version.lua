local M = {}

local function get_version_from_github()
	local url = "https://api.github.com/repos/Jerakin/Pokedex5E/releases/latest"
	headers = {}
	headers["User-Agent"] = "request"
	http.request(url, "GET", function(self, id, res)
		if res.status ~= 200 and res.status ~= 304 then
			print(res.status, res.response)
			return
		else
			pprint(res.response)
		end
	end, headers) 
end


local function get_local_version()
	return sys.get_config("config.version")
end

function M.check_version()
	get_version_from_github()
end


return M