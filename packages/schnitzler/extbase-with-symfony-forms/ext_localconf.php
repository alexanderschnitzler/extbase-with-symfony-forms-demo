<?php
defined('TYPO3_MODE') or die('Access denied.');
/** @var string $_EXTKEY */

\TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
    'Schnitzler.' . $_EXTKEY,
    'Form',
    [
        'Form' => 'render, success'
    ],
    [
        'Form' => 'render, success'
    ],
    \TYPO3\CMS\Extbase\Utility\ExtensionUtility::PLUGIN_TYPE_CONTENT_ELEMENT
);
