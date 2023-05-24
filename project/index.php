<?php

declare(strict_types=1);

$uriParts = parse_url($_SERVER["REQUEST_URI"]);

switch ($uriParts['path'] ?? '') {
    case '':
    case '/':
        require_once __DIR__.DIRECTORY_SEPARATOR.'main.php';
        break;
    case '/thermal':
        require_once __DIR__.DIRECTORY_SEPARATOR.'thermal.php';
        break;
    case '/electric':
        require_once __DIR__.DIRECTORY_SEPARATOR.'electric.php';
        break;
    case '/electromagnetic':
        require_once __DIR__.DIRECTORY_SEPARATOR.'electromagnetic.php';
        break;
    case '/light':
        require_once __DIR__.DIRECTORY_SEPARATOR.'light.php';
        break;
    case '/how':
        require_once __DIR__.DIRECTORY_SEPARATOR.'how.php';
        break;
    default:
        http_response_code(404);
        require_once __DIR__.DIRECTORY_SEPARATOR.'404.php';
}