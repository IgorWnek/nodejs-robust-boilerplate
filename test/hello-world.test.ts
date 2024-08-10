import { test, describe } from 'node:test';
import assert from 'node:assert';
import { helloWorld } from '../src/hello-world.js';

describe('helloWorld', () => {
  test('returns the correct string', () => {
    assert.strictEqual(helloWorld(), 'hello world');
  });
});
