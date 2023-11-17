import { registerPlugin } from '@capacitor/core';
const CapacitorPluginTnk = registerPlugin('CapacitorPluginTnk', {
    web: () => import('./web').then(m => new m.CapacitorPluginTnkWeb()),
});
export * from './definitions';
export { CapacitorPluginTnk };
//# sourceMappingURL=index.js.map