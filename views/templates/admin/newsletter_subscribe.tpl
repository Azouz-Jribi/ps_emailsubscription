{*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{block name="input_row"}
  <div class="form-group">
    {block name="label"}
      <label class="control-label col-lg-3{if isset($input.required) && $input.required && $input.type != 'radio'} required{/if}">
        {if isset($input.hint)}
            <span class="label-tooltip" data-toggle="tooltip" data-html="true" title="{if is_array($input.hint)}
                    {foreach $input.hint as $hint}
                        {if is_array($hint)}
                            {$hint.text|escape:'html':'UTF-8'}
                        {else}
                            {$hint|escape:'html':'UTF-8'}
                        {/if}
                    {/foreach}
  	          {else}
  	      	      {$input.hint|escape:'html':'UTF-8'}
  	          {/if}">
  	      {/if}
            {$input.label}
            {if isset($input.hint)}
  	      </span>
        {/if}
      </label>
    {/block}
    {block name="field"}
      <div class="col-lg-9">
        {block name="input"}
          <span class="switch prestashop-switch fixed-width-lg">
            {foreach $input.values as $value}
              <input type="radio" name="{$input.name}"{if $value.value == 1} id="{$input.name}_on"{else} id="{$input.name}_off"{/if} value="{$value.value}"
                {if $input.value == $value.value} checked="checked"{/if}
                {if (isset($input.disabled) && $input.disabled) or (isset($value.disabled) && $value.disabled)} disabled="disabled"{/if}
              />
              {strip}
                <label {if $value.value == 1} for="{$input.name}_on"{else} for="{$input.name}_off"{/if}>
                  {if $value.value == 1}
                    {l s='Yes' d='Admin.Global'}
                  {else}
                    {l s='No' d='Admin.Global'}
                  {/if}
                </label>
              {/strip}
            {/foreach}
            <a class="slide-button btn"></a>
          </span>
        {/block}
      </div>
    {/block}
  </div>
{/block}
