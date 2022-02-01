project "imgui"
	kind "StaticLib"
	language "C++"
    cppdialect "C++17"
    staticruntime "on"
	targetdir ("bin/" .. outputdir .. "/%{project_name}")
	objdir ("bin-int/" .. outputdir .. "/%{project_name}")

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
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h"

	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"

	filter "system:windows"
		systemversion "latest"
