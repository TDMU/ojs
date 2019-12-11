{**
 * plugins/blocks/languageToggle/block.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
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
		<ul>
			{foreach from=$languageToggleLocales item=localeName key=localeKey}
				<li class="locale_{$localeKey|escape}{if $localeKey == $currentLocale} current{/if}">
					<a href="{url router=$smarty.const.ROUTE_PAGE page="user" op="setLocale" path=$localeKey source=$smarty.server.REQUEST_URI}">
						<img src="{$localeFlagPath}{$localeKey}/flag_32.png" alt="{$localeName}" title="{$localeName}" 
                        style="width: 48px; margin-right: 4px;">
					</a>
				</li>
			{/foreach}
		</ul>
	</div>
</div><!-- .block_language -->
{/if}
