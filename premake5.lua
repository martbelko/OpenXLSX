project "OpenXLSX"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

	files
	{
		"OpenXLSX/headers/**.h",
		"OpenXLSX/sources/**.h",
		"OpenXLSX/sources/**.cpp"
	}

	includedirs
	{
		"OpenXLSX",
		"OpenXLSX/headers",
		"OpenXLSX/external/zippy",
		"OpenXLSX/external/pugixml",
		"OpenXLSX/external/nowide"
	}

	defines
	{
		"OPENXLSX_STATIC_DEFINE",
		"CHARCONV_ENABLED"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "speed"
		inlining "Auto"
		flags
		{
			"LinkTimeOptimization"
		}

	filter {}
