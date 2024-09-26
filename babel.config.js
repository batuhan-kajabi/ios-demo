module.exports = {
  presets: ['module:metro-react-native-babel-preset'],
  plugins: [
    // '@babel/plugin-transform-exponentiation-operator',
    // [
    //   'module-resolver',
    //   {
    //     root: tsConfigPaths.root,
    //     extensions: [
    //       '.js',
    //       '.jsx',
    //       '.ts',
    //       '.tsx',
    //       '.ios.js',
    //       '.android.js',
    //       '.ios.jsx',
    //       '.android.jsx',
    //       '.ios.ts',
    //       '.android.ts',
    //       '.ios.tsx',
    //       '.android.tsx',
    //       '.json',
    //     ],
    //     alias: tsConfigPaths.alias,
    //   },
    // ],
    'react-native-reanimated/plugin',
  ],
};
