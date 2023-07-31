project "GLAD"
	kind "StaticLib"
	language "C"
	staticruntime "off"

	targetdir ("Binaries/" .. OutputDir .. "/%{prj.name}")
	objdir ("Intermediate/" .. OutputDir .. "/%{prj.name}")

	files {
		"include/GLAD/glad.h",
		"include/KHR/khrplatform.h",
		"src/glad.c"
	}

	includedirs {
		"include"
	}

	filter "system:windows"
		buildoptions { "-std=c11", "-lgdi32"}
		systemversion "latest"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"