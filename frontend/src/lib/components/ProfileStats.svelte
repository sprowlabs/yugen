<script>
	import Icon from '@iconify/svelte';
	const achievements = [
		{
			img: 'https://dgalywyr863hv.cloudfront.net/challenges/mts-june-cycling-v1.png',
			title: '20 mile ride',
			xp: '200'
		},
		{
			img: 'https://dgalywyr863hv.cloudfront.net/challenges/2271/2271-logo.png',
			title: '100 mile ride',
			xp: '1000'
		},
		{
			img: 'https://upload.wikimedia.org/wikipedia/commons/d/da/Strava_-_Gran_Fondo_challenge_badge.png',
			title: '35 mile ride',
			xp: '350'
		},
		{
			img: 'https://dgalywyr863hv.cloudfront.net/challenges/1719/1719-logo.png',
			title: '80 mile ride',
			xp: '800'
		}
	];
	const clubs = [
		{
			name: 'lancaster cycling club',
			img: 'https://www.challengedathletes.org/wp-content/uploads/2016/09/CAF-Cycling-Club-Logo.png'
		},
		{
			name: 'congleton cycling club',
			img: 'https://static.wixstatic.com/media/1a394b_555e02b7d4114cf2a6dd29a18c3d7a8e~mv2.png/v1/fill/w_1000,h_963,al_c/1a394b_555e02b7d4114cf2a6dd29a18c3d7a8e~mv2.png'
		}
	];
</script>

<section class="mb-8">
	<div class="achievement-club flex justify-between">
		<div class="achievements">
			<h3>Achievements</h3>
			<ul class="flex space-x-4">
				{#each achievements as achievement}
					<li>
						<img src={achievement.img} alt="" />
						<h6>{achievement.title}</h6>
						<p class="xp">{achievement.xp}xp</p>
					</li>
				{/each}
			</ul>
		</div>
		<div class="club">
			<h3>Clubs <Icon icon="el:group" color="#404040" class="icon" /></h3>
			<ul class="flex space-x-4">
				{#each clubs as club}
					<li>
						<img src={club.img} alt="" />
					</li>
				{/each}
			</ul>
		</div>
	</div>
	<div class="pending mb-8">
		<h3>Pending...</h3>
		<ul class="flex space-x-4">
			{#each achievements as achievement}
				<li>
					<img src={achievement.img} alt="" />
					<h6>{achievement.title}</h6>
					<p class="xp mb-2">{achievement.xp} of 1000xp</p>
					<div class="w-full bg-gray-200 h-2 mb-6 progress">
						<div class="h-2" style="width: 60%" />
					</div>
				</li>
			{/each}
		</ul>
	</div>
</section>
