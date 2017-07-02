module FlashesHelper
FLASH CLASS = { alert: "danger", notice: "sucess", warning: "warning"}.freeze

def flash_class(key)
  FLASH CLASSES.fetch key.to_sym, key
end

def user_facing_flashes
  flash.to_hash.slice "alert", "notice", "warning"
end

end
