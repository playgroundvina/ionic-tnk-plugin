#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

// Define the plugin using the CAP_PLUGIN Macro, and
// each method the plugin supports using the CAP_PLUGIN_METHOD macro.
CAP_PLUGIN(CapacitorPluginTnkPlugin, "CapacitorPluginTnk",
           CAP_PLUGIN_METHOD(call_tnk_rewardedAd, CAPPluginReturnPromise);
            CAP_PLUGIN_METHOD(call_tnk_interstitialAd, CAPPluginReturnPromise);
            CAP_PLUGIN_METHOD(call_tnk_nativeAd, CAPPluginReturnPromise);
            CAP_PLUGIN_METHOD(call_tnk_bannerAd, CAPPluginReturnPromise);
)
