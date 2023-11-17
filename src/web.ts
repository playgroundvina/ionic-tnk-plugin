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
  
  initialize(options: { appId: string; }): Promise<void> {
    console.log('initialize',options.appId)
    throw new Error('Method not implemented.');
  }
  showBanner(options: { adBannerId: string; position: string; margin: number; }): Promise<void> {
    console.log('initialize',options.adBannerId)
    console.log('initialize',options.position)
    console.log('initialize',options.margin)

    throw new Error('Method not implemented.');
  }
  hideBanner(): Promise<void> {
    throw new Error('Method not implemented.');
  }
  resumeBanner(): Promise<void> {
    throw new Error('Method not implemented.');
  }
  removeBanner(): Promise<void> {
    throw new Error('Method not implemented.');
  }
  prepareRewardVideoAd(options: { adRewardId: string; }): Promise<void> {
    console.log('initialize',options.adRewardId)

    throw new Error('Method not implemented.');
  }
  showRewardVideoAd(): Promise<void> {
    throw new Error('Method not implemented.');
  }
  isLoadedRewardVideoAd(): Promise<{ isLoadedRewardVideoAd: boolean; }> {
    throw new Error('Method not implemented.');
  }
  prepareInterstitial(options: { adInterstitialId: string; }): Promise<void> {
    console.log('initialize',options.adInterstitialId)

    throw new Error('Method not implemented.');
  }
  showInterstitial(): Promise<void> {
    throw new Error('Method not implemented.');
  }
  isLoadedInterstitial(): Promise<{ isLoadedInterstitial: boolean; }> {
    throw new Error('Method not implemented.');
  }
  
}
