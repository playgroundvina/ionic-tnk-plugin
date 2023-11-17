import { WebPlugin } from '@capacitor/core';
import type { CapacitorPluginTnkPlugin } from './definitions';
export declare class CapacitorPluginTnkWeb extends WebPlugin implements CapacitorPluginTnkPlugin {
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
    resumeBanner(): Promise<void>;
    removeBanner(): Promise<void>;
    prepareRewardVideoAd(options: {
        adRewardId: string;
    }): Promise<void>;
    showRewardVideoAd(): Promise<void>;
    isLoadedRewardVideoAd(): Promise<{
        isLoadedRewardVideoAd: boolean;
    }>;
    prepareInterstitial(options: {
        adInterstitialId: string;
    }): Promise<void>;
    showInterstitial(): Promise<void>;
    isLoadedInterstitial(): Promise<{
        isLoadedInterstitial: boolean;
    }>;
}
