local Snowflake = require('containers/abstract/Snowflake')
local Cache = require('iterables/Cache')
local Member = require('containers/Member')
local User = require('containers/User')
local Interaction, get = require('class')("Interaction", Snowflake)

function Interaction:__init(data, parent)
    Snowflake.init(self, data, parent)
    
    self._id = data.id
    self._application_id = data.application_id
    self._type = data.type
    self._data  = data.data
    self._guild_id = data.guild_id
    self._channel_id = data.channel_id
    self._member = data.member
    self._user = data.user
    self._token = data.token
    self._version = data.version
    self._message = data.message
    self._app_permissions = data.app_permissions
    self._locale = data.locale
    self._guild_locale = data.guild_locale
end