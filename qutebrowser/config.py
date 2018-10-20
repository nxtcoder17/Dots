#====== [Qute Browser Custom Configuration File ]==========

#==========[ Some Must have defaults ]=========

# Always restore tabs when QuteBrowser is opened
c.auto_save.session = True

# Incremental Search
c.search.incremental = True

# Default Zoom
c.zoom.default = '115%'

c.tabs.favicons.scale = 1.2
# Tabs Padding
c.tabs.padding = {"top": 5, "bottom": 2, "left": 5, "right": 5}

# Search Engines
c.url.searchengines = {
        'DEFAULT': 'https://google.com/search?q={}',
        'd'      : 'https://duckduckgo.com/?q={}',
        'yt'     : 'https://youtube.com/results?search_query={}',
        'aw'     : 'https://wiki.archlinux.org/?search={}',
        'ap'     : 'https://archlinux.org/packages/?q={}',
        'aur'    : 'https://aur.archlinux.org/packages/?K={}',
        'tr'     : 'https://translate.google.com/translate?tl=en&js=y&ie=UTF-8&u={}',

    # Image Searches
        'im'     : 'https://google.com/search?tbm=isch&q={}',
        'bim'    : 'https://www.bing.com/images/search?q={}'
        }

#====[ Aliases ]=======
# I will add keys to the Dictionary not replace system ones
c.aliases['mygit'] = 'open -t https://github.com/phenomenal-ab'
c.aliases['ux'] = 'open -t https://reddit.com/r/unixporn'
c.aliases['cr'] = 'open -t https://cricbuzz.com/'
c.aliases['cp'] = 'open -t http://172.16.16.2:8090/httpclient.html'

# Difference Getter
c.aliases['diff'] = 'open -t https://www.diffen.com/differences/{}'

# Fonts
c.fonts.monospace = 'Monaco'
c.fonts.statusbar = '11pt Monaco'
c.fonts.web.family.standard = 'Monaco'
