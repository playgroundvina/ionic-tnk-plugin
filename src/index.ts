import { registerPlugin } from '@capacitor/core';

import type { CapacitorPluginTnkPlugin } from './definitions';

const CapacitorPluginTnk = registerPlugin<CapacitorPluginTnkPlugin>(
  'CapacitorPluginTnk',
  {
    web: () => import('./web').then(m => new m.CapacitorPluginTnkWeb()),
  },
);

export * from './definitions';
export { CapacitorPluginTnk };
