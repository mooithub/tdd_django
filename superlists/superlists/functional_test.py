from selenium import webdriver

browser = webdriver.PhantomJS()
browser.set_window_size(1120, 500)
browser.get('http://localhost:8000')

assert 'Django' in browser.title


