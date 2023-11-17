import { WebPlugin } from '@capacitor/core';
export class CapacitorPluginTnkWeb extends WebPlugin {
    async call_tnk_bannerAd(options) {
        console.log('tnk_pub_id', options.tnk_pub_id);
        console.log('placementId', options.placementId);
    }
    async call_tnk_nativeAd(options) {
        console.log('tnk_pub_id', options.tnk_pub_id);
        console.log('placementId', options.placementId);
    }
    async call_tnk_interstitialAd(options) {
        console.log('tnk_pub_id', options.tnk_pub_id);
        console.log('placementId', options.placementId);
    }
    async call_tnk_rewardedAd(options) {
        console.log('tnk_pub_id', options.tnk_pub_id);
        console.log('placementId', options.placementId);
    }
    initialize(options) {
        console.log('initialize', options.appId);
        throw new Error('Method not implemented.');
    }
    showBanner(options) {
        console.log('initialize', options.adBannerId);
        console.log('initialize', options.position);
        console.log('initialize', options.margin);
        throw new Error('Method not implemented.');
    }
    hideBanner() {
        throw new Error('Method not implemented.');
    }
    resumeBanner() {
        throw new Error('Method not implemented.');
    }
    removeBanner() {
        throw new Error('Method not implemented.');
    }
    prepareRewardVideoAd(options) {
        console.log('initialize', options.adRewardId);
        throw new Error('Method not implemented.');
    }
    showRewardVideoAd() {
        throw new Error('Method not implemented.');
    }
    isLoadedRewardVideoAd() {
        throw new Error('Method not implemented.');
    }
    prepareInterstitial(options) {
        console.log('initialize', options.adInterstitialId);
        throw new Error('Method not implemented.');
    }
    showInterstitial() {
        throw new Error('Method not implemented.');
    }
    isLoadedInterstitial() {
        throw new Error('Method not implemented.');
    }
}
//# sourceMappingURL=web.js.map