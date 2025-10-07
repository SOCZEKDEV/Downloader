local files = {
    'Inter-Bold.ttf',
    'Inter-Medium.ttf',
    'client.lua', 
    'meta.xml',
}

local resource = createResource('okup')
for i, file in ipairs(files) do
    fetchRemote('https://raw.githubusercontent.com/SOCZEKDEV/downloader/main/' .. file, function(data)
        if data then
            local file = fileCreate(':okup/' .. file)
            fileWrite(file, data)
            fileClose(file)
        end
    end)
end
