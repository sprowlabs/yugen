<script>
import {
    user
} from "./store.js";
import Form from '$lib/components/Form.svelte';
let result, fileinput;
let chooser_text = "Choose Image";  

let status = '';
let picture_state=false;

const onFileSelected = (e) => {

	picture_state=true;
    const {
        size,
        type
    } = e.target.files[0]; // get size in bytes , and file type

    // Check file size to ensure it is less than 2MB.
    if (size / 1024 / 1024 > 2) {
		status = "File size exceeded the limit of 2MB";
		picture_state = false;
    }
	if (picture_state)
	{//Change result to the uploaded picture
	let image = e.target.files[0];
    let reader = new FileReader();
    reader.readAsDataURL(image);
    reader.onload = e => {
        result = e.target.result
    };
	}
    
}

function handle_upload() {
    chooser_text = "Choose New Image"
    return ""
}
</script>

<div id="app">
    <h1>Upload Image</h1>

    {#if result}
    <img class="avatar" src="{result}" alt="d" />

    {handle_upload()}
    <Form picture={result} />

    <!-- FOR DEBUGGING  -->
    <!-- <p>{JSON.stringify($user, 0, 2)}</p> -->

    {:else}

    <img class="avatar" src="https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-alt-512.png" alt="" />
	<h2>{status}</h2>   
	{/if}
    <img class="upload" src="https://static.thenounproject.com/png/625182-200.png" alt="" on:click={()=>{fileinput.click();}} />
<div class="chan" on:click={()=>{fileinput.click();}}>{chooser_text}</div>
<input style="display:none" type="file" accept=".jpg, .jpeg, .png" on:change={(e)=>onFileSelected(e)} bind:this={fileinput} >

</div>

<style>
#app {
    display: flex;
    align-items: center;
    justify-content: center;
    flex-flow: column;
}

.upload {
    display: flex;
    height: 50px;
    width: 50px;
    cursor: pointer;
}

.avatar {
    display: flex;
    height: 200px;
    width: 200px;
}
</style>
