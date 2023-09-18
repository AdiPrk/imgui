project "ImGui"
    kind "StaticLib"
    language "C"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
	    "**.h",
		"**.c",
		"**.cpp"
	}
    
	filter "system:windows"
        systemversion "latest"
        staticruntime "On"
		cppdialect "C++20"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
