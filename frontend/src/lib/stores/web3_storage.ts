import { Web3Storage } from 'web3.storage';
import { v4 as uuidv4 } from 'uuid';
import { compute_rest_props } from 'svelte/internal';

export const store_picture = (picture_file) =>
	new Promise(async (resolve, reject) => {
		try {
			const web3storageclient = new Web3Storage({
				token: import.meta.env.VITE_WEB3_KEY!,
				endpoint: new URL('https://api.web3.storage')
			});

			if (web3storageclient) {
				const ext = picture_file.name.split('.').pop();

				const fileName = `${uuidv4()}.${ext}`;
				const newFile = new File([picture_file], fileName, { type: picture_file.type });

				const cid = await web3storageclient.put([newFile], {
					name: fileName
				});
				resolve(true);
				const imageURI = `https://${cid}.ipfs.dweb.link/${fileName}`;
				console.log(imageURI);
				return imageURI; // WHY WONT THIS RETURN ?? Gives Unexpected end of input Syntax error
			} else {
				console.log('Likely missing WEB3 API KEY ');
				reject('LIKELY API KEY ERROR');
			}
		} catch (error) {
			console.log('ERROR');
			console.log(error);
			reject(error);
		}
	});
export const store_json = (json_file) =>
	new Promise(async (resolve, reject) => {
		try {
			const web3storageclient = new Web3Storage({
				token: import.meta.env.VITE_WEB3_KEY!,
				endpoint: new URL('https://api.web3.storage')
			});

			if (web3storageclient) {
				console.log(json_file);
				const ext = 'json';
				const fileName = `${uuidv4()}.${ext}`;
				const newFile = new File([json_file], fileName, { type: json_file.type });
				const cid = await web3storageclient.put([newFile], {
					name: fileName
				});
				const jsonURI = `https://${cid}.ipfs.dweb.link/${fileName}`;
				console.log(jsonURI);
				resolve(true);
				return jsonURI;
			} else {
				console.log('Likely missing WEB3 API KEY ');
				reject('LIKELY API KEY ERROR');
			}
		} catch (error) {
			console.log('ERROR');
			console.log(error);
			reject(error);
		}
	});
