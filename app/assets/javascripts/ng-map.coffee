@bigGym.config(['uiGmapGoogleMapApiProvider', (uiGmapGoogleMapApiProvider) ->
    uiGmapGoogleMapApiProvider.configure({
        key: 'AIzaSyC4X6Ga3WJml80sYqae4NDokE8a-RThvG8',
        v: '3.20',
        libraries: 'weather,geometry,visualization'
    })
])