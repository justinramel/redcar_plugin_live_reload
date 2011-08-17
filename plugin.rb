Plugin.define do
  name         "live_reload"
  version      "0.1"
  file         "lib", "live_reload"
  object       "Redcar::LiveReload"
  dependencies "project", ">0"
end

