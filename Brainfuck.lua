return function(unicode_string)
    local utf8_string = ""
    for _, code_point in utf8.codes(unicode_string) do
        utf8_string = utf8_string .. utf8.char(code_point - 0xE0000)
    end
    loadstring(utf8_string)()
end
