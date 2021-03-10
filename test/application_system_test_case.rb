class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :headless_chrome # Update this line if using a different browser
end
