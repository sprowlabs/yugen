<script>
	import Icon from '@iconify/svelte';
	import { each } from 'svelte/internal';
	const rides = [
		{
			title: 'Group Ride and Dinner',
			dateTime: 'July 8, 2022 at 10:25 AM',
			location: 'San Francisco, CA',
			level: '4',
			rewards: '24',
			distance: '22.82mi',
			xp: '200',
			time: '1h 18m'
		},
		{
			title: 'Riding Dirty',
			dateTime: 'July 8, 2022 at 10:25 AM',
			location: 'San Francisco, CA',
			level: '4',
			rewards: '24',
			distance: '16.82mi',
			xp: '300',
			time: '1h 32m'
		},
		{
			title: 'Just ridin',
			dateTime: 'July 8, 2022 at 10:25 AM',
			location: 'San Francisco, CA',
			level: '4',
			rewards: '24',
			distance: '12.82mi',
			xp: '300',
			time: '2h 1m'
		}
	];
</script>

<section class="profile-rides">
	<div class="flex justify-between mb-8">
		<h1>Rides</h1>
		<a href="" class="btn btn-primary"
			>Sync Rides <Icon icon="eva:sync-outline" color="white" class="icon" /></a
		>
	</div>
	{#each rides as ride}
		<div class="ride-card">
			<div class="rider-info flex mb-4">
				<img
					class="rider-img"
					src="https://images.squarespace-cdn.com/content/v1/5e10f555f51cd16ca72b83f8/1578233571971-3AIYFYIJEG8GXF3KG3SF/female-cyclist-portrait.jpg"
					alt=""
				/>
				<div class="ml-4">
					<h4 class="rider-name">Richard Daniels</h4>
					<h4 class="timestamp">{ride.dateTime} - {ride.location}</h4>
					<h4 class="level-reward">
						Level: {ride.level} <span class="ml-2">Rewards: {ride.rewards}</span>
					</h4>
				</div>
			</div>
			<div class="ride-title-stats">
				<div>
					<h2 class="mb-2">{ride.title}</h2>
					<div class="stats flex justify-between items-center">
						<ul class="stats-list flex space-x-4">
							<li>
								<h4>Distance</h4>
								<h3>{ride.distance}</h3>
							</li>
							<li>
								<h4>XP Earned</h4>
								<h3>{ride.xp}xp</h3>
							</li>
							<li>
								<h4>Time</h4>
								<h3>{ride.time}</h3>
							</li>
						</ul>
						<Icon icon="bi:share-fill" color="#404040" width="20" />
					</div>
				</div>
				<div class="map">
					<img
						src="https://www.mamilian.bike/wp-content/uploads/2020/07/strava-routes.png"
						alt=""
					/>
				</div>
			</div>
		</div>
	{/each}
</section>
