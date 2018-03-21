<?php

$websiteTitle = "SADPS Admin";
$securityKey = "frUpest@5"; // basically prevents others from sending rcon commands by exploiting the site
$timeoutAfterSeconds = 3; // more seconds means a longer site load when a server is not reachable

$servers = array(
    array(
		"name"	=> "Server 1 | In-Testing",
        "ip"	=> "54.39.41.198",
		"port"	=> "30110",
		"rcon"	=> "sadpsboss"
    )
);



// REAL STEAM IDS (64) -> http://steamid.io
// class names (colors) are from -> https://getbootstrap.com/docs/4.0/components/badge/#contextual-variations
// pasword hashes are generated from -> http://www.sha1-online.com/
// rights are : login, kick, ban, rcon - should be self explanatory

$groups = array( 
	array(
		"name"	=> "Admin",
		"class" => "badge badge-danger",
        "members"	=> array(
			array(
				"username"	=> "preston",
				"password" 	=> "c52aea853f9481c0c768b1d705b563b6dd87db41",
				"steam"		=> "steam:76561198212412581",
			),
			array(
				"username"	=> "admin",
				"password" 	=> "9fd96a1b7748b29e2955d063db5e1056a7c2eb01",
				"steam"		=> "steam:76561198212412581)",
			),
		),
		"rights"	=> ["login", "kick", "ban", "rcon"],
	),
	
	array(
		"name"	=> "Moderators",
		"class" => "badge badge-warning",
		"members"			=> array(
			array(
				"username"	=> "mod",
				"password" 	=> "9fd96a1b7748b29e2955d063db5e1056a7c2eb01",
				"steam"		=> "steam:76561198212412581",
			)
		),
		"rights"	=> ["login", "kick"],
	),
	
	array(
		"name"	=> "Donators",
		"class" => "badge badge-success",
		"members"			=> array(
			array(
				"username"	=> "user4",
				"password" 	=> "PASSWORD HASH",
				"steam"		=> "steam:REAL STEAM IDS (64)",
			)
		),
		"rights"	=> [],
	)
);
?>