--[[
@title Loop Video
@param t Clip time (min)
@default t 5
--]]

-- Simple loop recording script
-- Starts video recording, waits for the specified time,
-- stops recording, and repeats.

print("Loop video script started")
print("Clip time: " .. t .. " minutes")
print("Press shutter button to stop")

-- convert minutes to milliseconds
local clip_duration_ms = t * 60 * 1000

-- To stop the script, press the shutter button on the camera.
-- The script will loop indefinitely.
while true do
    print("Starting new video clip.")
    
    -- It's recommended to be in video mode before starting the script.
    -- This command simulates pressing the record button to start recording.
    click("video")
    
    -- Wait a couple of seconds to ensure recording has started.
    sleep(2000)

    print("Recording for " .. t .. " minutes.")
    
    -- Wait for the specified duration.
    sleep(clip_duration_ms)

    print("Stopping video clip.")
    
    -- This command simulates pressing the record button to stop recording.
    click("video")

    -- Wait a moment for the file to be saved before looping.
    sleep(2000)
end
