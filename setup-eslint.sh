npm i --save-dev @types/node @typescript-eslint/eslint-plugin @typescript-eslint/parser eslint eslint-config-airbnb-base eslint-config-prettier eslint-import-resolver-typescript eslint-plugin eslint-plugin-prettier typescript

cat <<EOF >./.eslintrc.json
{
  "env": {
    "browser": true,
    "es2021": true
  },
  "extends": [
    "eslint:recommended",
    "plugin:@typescript-eslint/recommended",
    "prettier"
  ],
  "parser": "@typescript-eslint/parser",
  "parserOptions": {
    "ecmaVersion": "latest",
    "sourceType": "module"
  },
  "plugins": ["@typescript-eslint"],
  "rules": {
    "arrow-spacing": "error",
    "comma-dangle": "off",
    "comma-spacing": "error",
    "func-call-spacing": "error",
    "indent": ["error", 2],
    "max-len": ["error", { "code": 130 }],
    "no-trailing-spaces": "error",
    "no-empty": "error",
    "no-mixed-spaces-and-tabs": "error",
    "no-multi-spaces": "error",
    "no-multiple-empty-lines": [
      "error",
      {
        "max": 1,
        "maxEOF": 0
      }
    ],
    "object-curly-newline": "error",
    "object-curly-spacing": ["error", "always"],
    "padded-blocks": ["error", "never"],
    "quotes": ["error", "single"],
    "semi": ["error", "always"],
    "space-in-parens": ["error", "never"],
    "space-infix-ops": "error",
    "linebreak-style": ["error", "unix"],
    "lines-between-class-members": ["error", "always"]
  }
}
EOF

cat <<EOF >./.eslintignore
/*.js
node_modules
dist
EOF
