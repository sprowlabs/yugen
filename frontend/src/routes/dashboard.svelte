<script>
	import ProfileComponent from '$lib/components/ProfileComponent.svelte';
	import ProfileStats from '$lib/components/ProfileStats.svelte';
	import ProfileRides from '$lib/components/ProfileRides.svelte';
</script>

<svelte:head>
	<title>Dashboard</title>
</svelte:head>

<section class="container mx-auto px-4 py-18 mb-4">
	<ProfileComponent />
	<ProfileStats />
	<ProfileRides />
</section>
