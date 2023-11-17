import { PluginListenerHandle } from '@capacitor/core';
export interface CapacitorPluginTnkPlugin {
    call_tnk_bannerAd(options: {
        tnk_pub_id: string;
        placementId: string;
    }): Promise<void>;
    call_tnk_nativeAd(options: {
        tnk_pub_id: string;
        placementId: string;
    }): Promise<void>;
    call_tnk_interstitialAd(options: {
        tnk_pub_id: string;
        placementId: string;
    }): Promise<void>;
    call_tnk_rewardedAd(options: {
        tnk_pub_id: string;
        placementId: string;
    }): Promise<void>;
    initialize(options: {
        appId: string;
    }): Promise<void>;
    showBanner(options: {
        adBannerId: string;
        position: string;
        margin: number;
    }): Promise<void>;
    hideBanner(): Promise<void>;
    removeBanner(): Promise<void>;
    resumeBanner(): Promise<void>;
    addListener(eventName: "bannerAdLoaded", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
    addListener(eventName: "bannerAdFailedToLoad", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
    addListener(eventName: "bannerAdClicked", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
    prepareRewardVideoAd(options: {
        adRewardId: string;
    }): Promise<void>;
    showRewardVideoAd(): Promise<void>;
    isLoadedRewardVideoAd(): Promise<{
        isLoadedRewardVideoAd: boolean;
    }>;
    addListener(eventName: "onRewardedVideoLoaded", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
    addListener(eventName: "onRewardedVideoFailedToLoad", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
    addListener(eventName: "onRewardedVideoClicked", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
    addListener(eventName: "onRewardedVideoStarted", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
    addListener(eventName: "onRewardedVideoFinished", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
    prepareInterstitial(options: {
        adInterstitialId: string;
    }): Promise<void>;
    showInterstitial(): Promise<void>;
    isLoadedInterstitial(): Promise<{
        isLoadedInterstitial: boolean;
    }>;
    addListener(eventName: "onInterstitialLoaded", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
    addListener(eventName: "onInterstitialFailedToLoad", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
    addListener(eventName: "onInterstitialClicked", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
    addListener(eventName: "onInterstitialShown", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
    addListener(eventName: "onInterstitialDismissed", listenerFunc: () => void): Promise<PluginListenerHandle> & PluginListenerHandle;
}
