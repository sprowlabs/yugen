<script lang="ts">
	import Logo from '$lib/assets/Logo.svelte';
	import Bitcoin from '$lib/assets/bitcoin.svelte';
	import Chainlink from '$lib/assets/chainlink.svelte';
	import Ethereum from '$lib/assets/ethereum.svelte';
	import Filecoin from '$lib/assets/filecoin.svelte';
</script>

<footer class="text-center py-12">
	<h1 class="footer-logo">Yūgen <Logo /></h1>
	<div class="flex justify-center">
		<ul class="flex space-x-4">
			<li><Bitcoin /></li>
			<li><Chainlink /></li>
			<li><Bitcoin /></li>
			<li><Chainlink /></li>
		</ul>
	</div>
</footer>
