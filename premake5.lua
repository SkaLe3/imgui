project "ImGui"
	kind "StaticLib"
	language "C++"
    staticruntime "off"

	location ".\\"


	targetdir (tp_bin_out)
	objdir (tp_int_out)

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++20"

	filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Debug_Editor"
        runtime "Debug"
        symbols "on"

    filter "configurations:Development"
        runtime "Release"
        optimize "on"
        symbols "on"

    filter "configurations:Development_Editor"
        runtime "Release"
        optimize "on"
        symbols "on"
        
    filter "configurations:Shipping"
        runtime "Release"
        optimize "on"
        symbols "off"