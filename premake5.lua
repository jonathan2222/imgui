project "imgui"
	kind "StaticLib"
	language "C++"

	targetdir ("Build/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("Build/obj/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.cpp",
		"imgui.h",
		"imgui_demo.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
        "imgui_rectpack.h",
        "imgui_textedit.h",
        "imgui_truetype.h"
	}

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"