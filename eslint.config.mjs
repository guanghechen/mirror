import editorconfig from 'eslint-plugin-editorconfig'
import js from '@eslint/js'

export default [
  js.configs.recommended,
  {
    plugins: {
      editorconfig,
    },
    languageOptions: {
      ecmaVersion: 'latest',
      sourceType: 'module',
      globals: {
        console: 'readonly',
        process: 'readonly',
      },
    },
    rules: {
      ...editorconfig.configs.all.rules,
      'no-unused-vars': ['error', {
        argsIgnorePattern: '^_',
        varsIgnorePattern: '^_',
        caughtErrorsIgnorePattern: '^_',
        destructuredArrayIgnorePattern: '^_',
      }],
      'no-console': 'off',
      'prefer-const': 'error',
      'no-var': 'error',
      'object-shorthand': ['error', 'always'],
      'prefer-template': 'error',
      'prefer-arrow-callback': 'error',
      'arrow-body-style': ['error', 'as-needed'],
      'no-useless-return': 'error',
      'no-useless-concat': 'error',
      'prefer-destructuring': ['error', {
        array: false,
        object: true,
      }],
      'eqeqeq': ['error', 'always', { null: 'ignore' }],
      'no-implicit-coercion': 'error',
      'curly': ['error', 'multi-line'],
      'brace-style': ['error', '1tbs', { allowSingleLine: true }],
      'quotes': ['error', 'single', { avoidEscape: true }],
      'semi': ['error', 'never'],
      'comma-dangle': ['error', 'always-multiline'],
      'indent': ['error', 2, { SwitchCase: 1 }],
      'max-len': ['error', {
        code: 100,
        ignoreUrls: true,
        ignoreStrings: true,
        ignoreTemplateLiterals: true,
        ignoreRegExpLiterals: true,
      }],
    },
  },
  {
    ignores: [
      '**/node_modules/**',
      '**/dist/**',
      '**/build/**',
      '**/.git/**',
      '**/coverage/**',
      '**/*.min.js',
      'changelog/**',
    ],
  },
]
