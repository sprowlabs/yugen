// store.js
import { writable } from 'svelte/store';

export const user = writable({
	name: '',
	username: '',
	handle: '',
	bio: ''
});
