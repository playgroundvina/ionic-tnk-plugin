import { WebPlugin } from '@capacitor/core';

import type { CapacitorPluginTnkPlugin } from './definitions';

export class CapacitorPluginTnkWeb
  extends WebPlugin
  implements CapacitorPluginTnkPlugin
{
  async call_tnk_bannerAd(options: { tnk_pub_id: string; placementId: string; }): Promise<void> {
    console.log('tnk_pub_id', options.tnk_pub_id);
    console.log('placementId', options.placementId);
  }
  async call_tnk_nativeAd(options: { tnk_pub_id: string; placementId: string; }): Promise<void> {
    console.log('tnk_pub_id', options.tnk_pub_id);
    console.log('placementId', options.placementId);
  }
  async call_tnk_interstitialAd(options: { tnk_pub_id: string; placementId: string; }): Promise<void> {
    console.log('tnk_pub_id', options.tnk_pub_id);
    console.log('placementId', options.placementId);
  }
  async call_tnk_rewardedAd(options: { tnk_pub_id: string; placementId: string; }): Promise<void> {
    console.log('tnk_pub_id', options.tnk_pub_id);
    console.log('placementId', options.placementId);
  }
  
}
