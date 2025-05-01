-- vim.keymap.set('n', '<Right>', "10j", { silent = true })
-- vim.keymap.set('n', '<Left>', '10k', { silent = true })
--
-- Variable to track time and lines skipped
local last_press_time = 0
local line_skip = 2  -- Initial lines to skip

-- Time threshold for detecting a "fast" press (in milliseconds)
local press_threshold = 400 -- You can adjust this value

-- Function to handle dynamic line skipping
local function dynamic_move(is_up)
  local current_time = vim.loop.now()  -- Get current time in milliseconds
  local time_diff = current_time - last_press_time  -- Time difference between presses

  -- If the time difference is small, increase the lines to skip
  if time_diff < press_threshold then
    line_skip = line_skip + 1  -- Increase lines to skip
  else
    line_skip = 2  -- Reset to default if too slow
  end

  -- Set last press time to the current time
  last_press_time = current_time

  -- Perform the movement
  if is_up then
    vim.cmd("normal! " .. line_skip .. "k")  -- Move up by 'line_skip' lines
  else
    vim.cmd("normal! " .. line_skip .. "j")  -- Move down by 'line_skip' lines
  end
end

-- Map right arrow to move down dynamically
vim.keymap.set('n', '<Right>', function() dynamic_move(false) end, { silent = true })

-- Map left arrow to move up dynamically
vim.keymap.set('n', '<Left>', function() dynamic_move(true) end, { silent = true })
return {}
