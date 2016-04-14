import babel from "rollup-plugin-babel";
import pegjs from "rollup-plugin-pegjs";

export default {
  entry: "src/grammar.pegjs",
  dest: "dist/index.js",
  format: "cjs",
  plugins: [
    pegjs(),
    babel({ babelrc: false, presets: ['es2015-rollup', 'stage-1'] })
  ]
}
