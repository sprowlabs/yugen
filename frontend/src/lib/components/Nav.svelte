<script lang="ts">
	import {
		connected,
		connectMetamask,
		connectWalletConnect,
		disconnect,
		walletAddress
	} from '$lib/stores/provider';
	import { balanceOnBlock } from '$lib/stores/state';
	import { formatEther } from 'ethers/lib/utils';
	import Logo from '../../../static/Logo.svg';
	import Icon from '@iconify/svelte';
</script>

<nav class="flex justify-between items-center container mx-auto py-4 px-4">
	<a href="/" class="nav-logo">Yūgen <Logo /></a>
	<ul class="flex space-x-4">
		<li>About</li>
		<li>Contact</li>

		<button on:click={connectMetamask} class="cta-primary"
			>Connect MetaMask <Icon icon="logos:metamask-icon" color="white" class="icon" />
		</button>
	</ul>
</nav>
