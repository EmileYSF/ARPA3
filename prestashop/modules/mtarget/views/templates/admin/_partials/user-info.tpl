{*
* 2007-2018 PrestaShop
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
*  @author     PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2018 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<div class="account-status">
  <div class="panel user-info">
    <div class="connection">
      <div class="form-group">
        <label class="control-label">{l s='Connection status :' mod='mtarget'} </label>
        <span>{if $connection_status == 1}OK{else}NO{/if}</span>
      </div>
    </div>
    <div class="balance">
      <div class="form-group">
        <label class="control-label">{l s='Remaining balance :' mod='mtarget'} </label>
        <span>{if isset($balance)} {$credit = $balance|escape:'htmlall':'utf-8' * 25.642 } {$credit|string_format:"%d"} SMS{/if}</span>
        {if $is_user_connected && $balance == 0}
          <a href="{$link_credit|escape:'htmlall':'utf-8'}" target="_blank">&nbsp;{l s='Top up' mod='mtarget'}</a>
        {/if}
      </div>
    </div>
  </div>
</div>
