import { PluginListenerHandle } from '@capacitor/core';

export interface CapacitorPluginTnkPlugin {
 
  call_tnk_bannerAd(options: { tnk_pub_id: string, placementId: string }): Promise<void>;
 
  call_tnk_nativeAd(options: { tnk_pub_id: string, placementId: string }): Promise<void>;
  call_tnk_interstitialAd(options: { tnk_pub_id: string, placementId: string }): Promise<void>;
  call_tnk_rewardedAd(options: { tnk_pub_id: string, placementId: string }): Promise<void>;

  //App
  initialize(options: { appId: string }): Promise<void>;
 

  // Banner
  showBanner(options: { adBannerId: string ,position: string, margin: number }): Promise<void>; // position : TOP_CENTER, CENTER, default: BOTTOM_CENTER ; margin only for BOTTOM_CENTER or TOP_CENTER, default value =0.  
  hideBanner(): Promise<void>;
  removeBanner(): Promise<void>;
  resumeBanner(): Promise<void>;


  addListener(eventName: "bannerAdLoad", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
  addListener(eventName: "bannerError", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
  addListener(eventName: "bannerAdClick", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
  addListener(eventName: "bannerAdShow", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;


  // Reward
  prepareRewardVideoAd(options: { adRewardId: string }): Promise<void>;
  showRewardVideoAd(): Promise<void>;
  isLoadedRewardVideoAd(): Promise<{ isLoadedRewardVideoAd: boolean }>;

  addListener(eventName: "rewardAdLoad", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
  addListener(eventName: "rewardError", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
  addListener(eventName: "rewardAdClick", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
  addListener(eventName: "rewardAdShow", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
  addListener(eventName: "rewardAdClose", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
  addListener(eventName: "rewardAdVideoCompletion", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;


  // Interstitial
  prepareInterstitial(options: { adInterstitialId: string }): Promise<void>;
  showInterstitial(): Promise<void>;
  isLoadedInterstitial(): Promise<{ isLoadedInterstitial: boolean }>;


  addListener(eventName: "interstitialAdLoad", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
  addListener(eventName: "interstitialError", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
  addListener(eventName: "interstitialAdClick", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
  addListener(eventName: "interstitialAdShow", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
  addListener(eventName: "interstitialAdClose", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;

}
