module.exports = {
  root: true,
  env: { browser: true, es2020: true },
  extends: ['@trondal/eslint-config-trondal/strict'],
  ignorePatterns: ['dist', '.eslintrc.cjs', 'vite-env.d.ts', 'vite.config.ts'],
  parser: '@typescript-eslint/parser',
  plugins: ['react-refresh'],
  rules: {
    'react-refresh/only-export-components': [
      'warn',
      { allowConstantExport: true }
    ]
  }
};
