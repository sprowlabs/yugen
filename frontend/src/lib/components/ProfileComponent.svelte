<script>
	import CircleLoader from './CircleLoader.svelte';
	import Icon from '@iconify/svelte';
</script>

<section class="profile-details flex justify-between mt-20">
	<div class="profile-info">
		<img
			class="profile-img"
			src="https://images.squarespace-cdn.com/content/v1/5e10f555f51cd16ca72b83f8/1578233571971-3AIYFYIJEG8GXF3KG3SF/female-cyclist-portrait.jpg"
			alt=""
		/>
		<h3>Richard Daniels</h3>
		<h4>San Francisco, CA</h4>
		<p class="profile-description">
			I love biking in the San Francisco and sausalito area with my group <a href=""
				>@highlandmile</a
			>
		</p>
		<a class="btn btn-orange"
			>Connect Strava <Icon icon="simple-icons:strava" color="white" class="icon" /></a
		>
	</div>
	<div class="level-card flex items-start space-x-6">
		<div>
			<h3>Level</h3>
			<h2>4</h2>
		</div>
		<div class="">
			<CircleLoader />
		</div>
	</div>
</section>
