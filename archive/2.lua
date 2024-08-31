local hwid_keys={
    'Syn-Fingerprint',
    'Krampus-Fingerprint',
    'Exploit-Guid',
    'Krnl-Hwid',
    'Sw-Fingerprint',
    'Wave-Fingerprint',
    'Flux-Fingerprint',
    'Codex-Fingerprint', -- not sure yet
    'Trigon-Fingerprint', -- not sure yet
    'MacSploit-Fingerprint', -- dm .ioja.32 to test cuz not sure yet
    'Solara-Fingerprint',
    'Electron-Fingerprint', -- not sure yet since their services is down
    'Hydrogen-Fingerprint', -- not sure yet
    'Delta-Fingerprint' -- not sure yet
}

local exechwid=nil
for _,v in ipairs(hwid_keys)do
    if hwid_decoded_body.headers[v]then
        exechwid=hwid_decoded_body.headers[v]
        break
    end
end