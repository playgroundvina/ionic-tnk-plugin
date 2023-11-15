export interface CapacitorPluginTnkPlugin {
 
  call_tnk_bannerAd(options: { tnk_pub_id: string, placementId: string }): Promise<void>;
 
  call_tnk_nativeAd(options: { tnk_pub_id: string, placementId: string }): Promise<void>;
  call_tnk_interstitialAd(options: { tnk_pub_id: string, placementId: string }): Promise<void>;
  call_tnk_rewardedAd(options: { tnk_pub_id: string, placementId: string }): Promise<void>;

}
