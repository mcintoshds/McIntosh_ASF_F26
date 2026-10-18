import '@testing-library/jest-dom/vitest';
import { afterEach, beforeEach, vi } from 'vitest';
import { cleanup } from '@testing-library/react';

let errorSpy;
let warningSpy;
beforeEach(() => {
  window.scrollTo = vi.fn();
  errorSpy = vi.spyOn(console, 'error');
  warningSpy = vi.spyOn(console, 'warn');
});

afterEach(() => {
  cleanup();
  const messages = [...errorSpy.mock.calls, ...warningSpy.mock.calls];
  vi.restoreAllMocks();
  if (messages.length) throw new Error(`Unexpected console output: ${messages.map((args) => args.join(' ')).join('\n')}`);
});
