<?php
declare(strict_types=1);
/** @var array $EM_CONF */
/** @var string $_EXTKEY */

$EM_CONF[$_EXTKEY] = [
    'title' => 'extbase-with-symfony-forms',
    'description' => 'An extension that shows how to create forms with symfony components in TYPO3',
    'category' => 'demo',
    'state' => 'stable',
    'uploadfolder' => 0,
    'createDirs' => '',
    'clearCacheOnLoad' => 0,
    'author' => 'Alexander Schnitzler',
    'author_email' => '',
    'version' => '1.0.0',
    'constraints' => [
        'depends' => [
            'typo3' => '9.5.0-9.5.99',
        ],
        'conflicts' => [],
        'suggests' => [],
    ],
];
