<svg viewBox="0 0 36 36" class="circular-chart green">
  <path class="circle-bg"
    d="M18 2.0845
      a 15.9155 15.9155 0 0 1 0 31.831
      a 15.9155 15.9155 0 0 1 0 -31.831"
  />
  <path class="circle"
    stroke-dasharray="60, 100"
    d="M18 2.0845
      a 15.9155 15.9155 0 0 1 0 31.831
      a 15.9155 15.9155 0 0 1 0 -31.831"
  />
  <text x="18" y="18.35" class="percentage">200xp</text>
  <text x="18" y="23.35" class="label">remaining</text>
</svg>

<style>

.circular-chart {
  display: block;
  margin: 10px auto;
  /* max-width: 80%;
  max-height: 250px; */
  width: 150px;
}

.circle-bg {
  fill: none;
  stroke: #E6E6E6;
  stroke-width: 3.6;
}

.circle {
  fill: none;
  stroke-width: 3.9;
  stroke-linecap: round;
  animation: progress 1s ease-out forwards;
}

@keyframes progress {
  0% {
    stroke-dasharray: 0 100;
  }
}

.circular-chart.green .circle {
  stroke: #4BB286;
}
.percentage {
  fill: black;
  font-family: 'Poppins';
  font-weight: 700;
  font-size: 0.3em;
  text-anchor: middle;
}
.label {
  font-size: 3px;
  color: #666666;
  text-anchor: middle;
}
</style>