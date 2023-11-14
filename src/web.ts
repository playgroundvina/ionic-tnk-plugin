import { WebPlugin } from '@capacitor/core';

import type { CapacitorPluginTnkPlugin } from './definitions';

export class CapacitorPluginTnkWeb
  extends WebPlugin
  implements CapacitorPluginTnkPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
