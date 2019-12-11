{**
 * plugins/blocks/languageToggle/block.tpl
 *
 * Copyright (c) 2014-2019 Simon Fraser University
 * Copyright (c) 2003-2019 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site sidebar menu -- language toggle.
 *}
{if $enableLanguageToggle}
<div class="pkp_block block_language">
	<span class="title">
		{translate key="common.language"}
	</span>

	<div class="content" style="display: flex;">
        {foreach from=$languageToggleLocales item=localeName key=localeKey}
            <div class="locale_{$localeKey|escape}{if $localeKey == $currentLocale} current{/if}" lang="{$localeKey|escape}">
                <a href="{url router=$smarty.const.ROUTE_PAGE page="user" op="setLocale" path=$localeKey source=$smarty.server.REQUEST_URI}">
                    <img src="{$localeFlagPath}{$localeKey}/flag_32.png" alt="{$localeName}" title="{$localeName}" 
                        style="width: 48px; margin-right: 4px;">
                </a>
            </div>
        {/foreach}
	</div>
</div><!-- .block_language -->
{/if}
