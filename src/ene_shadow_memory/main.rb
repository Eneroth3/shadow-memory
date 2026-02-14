# Eneroth Shadow Memory

# Copyright Julia Christina Eneroth, eneroth3@gmail.com

require "json"

module EneShadowMemory

FILE = File.join PLUGIN_DIR, "saved_shadows"

def self.save

    shadow_settings = Sketchup.active_model.shadow_info.to_a
    File.write FILE, JSON.generate(shadow_settings)

end

def self.restore

    if File.exist? FILE
        shadow_info = Sketchup.active_model.shadow_info
        shadow_settings = JSON.parse File.read(FILE)
        shadow_settings.each do |i|
          shadow_info[i[0]] = i[1] rescue warn("Could not set #{i[0]}. May be read-only.")
        end
    else
        UI.messagebox "No saved shadows."
    end

end

menu = UI.menu("Plugins")
menu.add_item("Put Shadows to Memory") { self.save }
menu.add_item("Retrieve Shadows from Memory") { self.restore }

end
