project "ImGui"
    kind "StaticLib"
    language "C"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
	    "imconfig.h",
        "imgui.cpp",
        "imgui.h",
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
        staticruntime "On"
		cppdialect "C++20"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
