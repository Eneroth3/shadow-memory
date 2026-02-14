# Eneroth Shadow Memory

# Copyright Julia Christina Eneroth, eneroth3@gmail.com

# Usage
#	  Menu: Extensions
#		  Put Shadows to Memory
#           Save current shadow settings so they can be restored later.
#         Retrieve Shadows from Memory
#           Restore previously saved shadows.
#
# The shadows settings are saved to a file, not memory, but name is chosen to
# stay consistent with the previous extension Eneroth Camera Memory (where the
# the name was just unwisely chosen).

# Load support files.
require "extensions.rb"
require "sketchup.rb"

module EneShadowMemory

AUTHOR      = "Christina Eneroth"
CONTACT     = "#{AUTHOR} at eneroth3@gmail.com"
COPYRIGHT   = "Copyright 2015-2026 Christina Eneroth"
DESCRIPTION =
  "Store and retrieve shadow settings. Also works between "\
  "models and SU sessions."
ID          =  File.basename __FILE__, ".rb"
NAME        = "Eneroth Shadow Memory"
VERSION     = "1.0.3"

PLUGIN_ROOT = File.expand_path(File.dirname(__FILE__))
PLUGIN_DIR  = File.join PLUGIN_ROOT, ID

ex = SketchupExtension.new(NAME, File.join(PLUGIN_DIR, "main"))
ex.description = DESCRIPTION
ex.version     = VERSION
ex.copyright   = COPYRIGHT
ex.creator     = AUTHOR
Sketchup.register_extension ex, true

end
