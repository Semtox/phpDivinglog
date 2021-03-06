<!-- Include links_overview -->
{include file='links_overview.tpl'}
<!-- End include links_overview -->
{if isset($grid_display)}
{$grid}
{else}
<table class="divetable" cellspacing="0" cellpadding="0" width="100%">
<thead>
    <tr class="divelogtitle">
	    <td valign="bottom">{$equip_title_object}</td>
	    <td valign="bottom">{$equip_title_manufacturer}</td>
	    <td valign="bottom">{$equip_title_inactive}</td>
	</tr>
</thead>
<tbody>
{* Loop through the array *}
{section name=cell_data loop=$cells }
<tr class="divecontent">
{if isset($multiuser_id)}
<td><a href="{$app_path}/{$base_page}{$sep1}{$multiuser_id}{$sep2}{$cells[cell_data].id}" 
             title="{$cells[cell_data].id} {$logbook_place_linktitle}" >{$cells[cell_data].object}</a></td>
{else}
<td><a href="{$app_path}/{$base_page}{$sep2}{$cells[cell_data].id}" 
             title="{$cells[cell_data].id} {$logbook_place_linktitle}" >{$cells[cell_data].object}</a></td>
{/if}
<td>{$cells[cell_data].manufacturer}</td>
{if $cells[cell_data].inactive == 'True'}
<td>x</td>
{else}
<td>*</td>
{/if}
</tr>
{/section}
</tbody>
</table>
{$pages}
{/if}
{*	Show the links *}
	<!-- Include links_overview -->
	{include file='links_overview.tpl'}
    <!-- End include links_overview -->
