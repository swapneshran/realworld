module.exports = {
	env: {
		browser: true,
		node: true,
		es6: true,
	},
	extends: ['eslint:recommended'],
	overrides: [{
		files: ['**/*.svelte'],
		processor: 'svelte3/svelte3',
	}, ],
	parserOptions: {
		ecmaVersion: 2019,
		sourceType: 'module',
	},
	plugins: ['svelte3'],
	rules: {
		// ...
	},
	settings: {
		'svelte3/compiler-options': {
			customElement: true,
		},
	},
};