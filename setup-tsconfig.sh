cat <<EOF >./tsconfig.json
{
  "compilerOptions": {
    "allowJs": true,
    "declaration": true,
    "emitDeclarationOnly": false,
    "strict": true,
    "target": "es2019",
    "outDir": "dist",
    "rootDir": "src",
    "module": "commonjs",
    "typeRoots": [
      "node_modules/@types"
    ],
    "types": [
      "node"
    ],
    "esModuleInterop": true,
    "inlineSourceMap": true,
    "experimentalDecorators": true,
    "emitDecoratorMetadata": true,
    "useUnknownInCatchVariables": false,
    "lib": [
      "ES2020"
    ],
    "skipLibCheck": true
  },
  "exclude": [
    "dist",
    "node_modules",
    "**/__test__/*",
    "**prettier*"
  ]
}
EOF
