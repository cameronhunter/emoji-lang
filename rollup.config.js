import babel from 'rollup-plugin-babel';
import pegjs from 'rollup-plugin-pegjs';
import uglify from 'rollup-plugin-uglify';

const nonNull = (array) => array.filter(x => !!x);

const optimize = process.env.PEGJS_OPTIMIZE || 'speed';
const isProduction = process.env.NODE_ENV === 'production';

const dest = nonNull(['build/index', optimize, isProduction && 'min', 'js']).join('.');

export default {
  entry: 'src/grammar.pegjs',
  dest,
  format: 'cjs',
  plugins: nonNull([
    pegjs({
      optimize
    }),
    babel({
      babelrc: false,
      presets: ['es2015-rollup', 'stage-1']
    }),
    isProduction && uglify()
  ])
}
