#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

// Define the plugin using the CAP_PLUGIN Macro, and
// each method the plugin supports using the CAP_PLUGIN_METHOD macro.
CAP_PLUGIN(CapacitorPluginTnkPlugin, "CapacitorPluginTnk",
           CAP_PLUGIN_METHOD(call_tnk_rewardedAd, CAPPluginReturnPromise);
            CAP_PLUGIN_METHOD(call_tnk_interstitialAd, CAPPluginReturnPromise);
            CAP_PLUGIN_METHOD(call_tnk_nativeAd, CAPPluginReturnPromise);
            CAP_PLUGIN_METHOD(call_tnk_bannerAd, CAPPluginReturnPromise);
           
           CAP_PLUGIN_METHOD(initialize, CAPPluginReturnPromise);
           
           CAP_PLUGIN_METHOD(showBanner, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(hideBanner, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(removeBanner, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(resumeBanner, CAPPluginReturnPromise);
           
           CAP_PLUGIN_METHOD(prepareRewardVideoAd, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(showRewardVideoAd, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(isLoadedRewardVideoAd, CAPPluginReturnPromise);
           
           CAP_PLUGIN_METHOD(prepareInterstitial, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(showInterstitial, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(isLoadedInterstitial, CAPPluginReturnPromise);
           )
