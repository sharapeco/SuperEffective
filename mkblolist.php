<?php
$destFile = __DIR__ . '/SuperEffective/ContentBlocker/blockerList.json';

$domains = @file(__DIR__ . '/block-domains.txt', FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
if ($domains === false) die();

$domains = array_filter($domains, function($domain) {
	return strpos($domain, '#') !== 0;
});
$domains = array_values($domains);

$rules = array_map(function($domain) {
	// Block domains
	return [
		// 'trigger' => [
		// 	'url-filter' => '.*',
		// 	'domain' => $domain,
		// 	'resource-type' => ['script'],
		// ],
		'trigger' => [
			'url-filter' => '^[^:]+://([^:/]+\\.)?' . str_replace('.', '\\.', $domain) . '[:/]',
			'load-type' => ['third-party'],
		],
		'action' => [
			'type' => 'block',
		],
	];
}, $domains);

$rules[] = [
	// Test rule
	'trigger' => [
		'url-filter' => '^[^:]+://suzume\\.cc/.*/ad\\.js',
		'resource-type' => ['script'],
	],
	'action' => [
		'type' => 'block',
	],
];

file_put_contents($destFile, json_encode($rules, JSON_PRETTY_PRINT) . PHP_EOL, LOCK_EX);
