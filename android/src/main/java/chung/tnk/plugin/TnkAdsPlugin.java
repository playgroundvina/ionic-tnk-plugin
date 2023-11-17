package chung.tnk.plugin;

import android.Manifest;
import android.util.Log;

import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;
import com.getcapacitor.annotation.Permission;

import chung.tnk.plugin.banner.BannerExecutor;
import chung.tnk.plugin.interstitial.AdInterstitialExecutor;
import chung.tnk.plugin.rewarded.AdRewardExecutor;


@CapacitorPlugin(name = "CapacitorPluginTnk", permissions = {@Permission(alias = "network", strings = {Manifest.permission.ACCESS_NETWORK_STATE, Manifest.permission.INTERNET})}
)
public class TnkAdsPlugin extends Plugin {




    private final BannerExecutor bannerExecutor = new BannerExecutor(
            this::getContext,
            this::getActivity,
            this::notifyListeners,
            getLogTag()
    );
    private final AdRewardExecutor adRewardExecutor = new AdRewardExecutor(
            this::getContext,
            this::getActivity,
            this::notifyListeners,
            getLogTag()
    );
    private final AdInterstitialExecutor adInterstitialExecutor = new AdInterstitialExecutor(
            this::getContext,
            this::getActivity,
            this::notifyListeners,
            getLogTag()
    );

    @Override
    public void load() {
        bannerExecutor.initialize();
    }
    
    // Show a banner Ad
    @PluginMethod
    public void showBanner(final PluginCall call) {
        bannerExecutor.showBanner(call, this::notifyListeners);
    }

    // Hide the banner, remove it from screen, but can show it later
    @PluginMethod
    public void hideBanner(final PluginCall call) {
        bannerExecutor.hideBanner(call);
    }


    // Destroy the banner, remove it from screen.
    @PluginMethod
    public void removeBanner(final PluginCall call) {
        bannerExecutor.removeBanner(call);
    }


    //resume show a banner
    @PluginMethod
    public void resumeBanner(final PluginCall call) {
        bannerExecutor.resumeBanner(call);
    }


    @PluginMethod
    public void prepareInterstitial(final PluginCall call) {
        Log.i("HAOHAO", "prepareInterstitial");
        adInterstitialExecutor.prepareInterstitial(call, this::notifyListeners);
    }

    @PluginMethod
    public void isLoadedInterstitial(final PluginCall call) {
        Log.i("HAOHAO", "isLoadedInterstitial");

        adInterstitialExecutor.isLoadedInterstitial(call);
    }

    @PluginMethod
    public void showInterstitial(final PluginCall call) {
        Log.i("HAOHAO", "showInterstitial");

        adInterstitialExecutor.showInterstitial(call);
    }

    @PluginMethod
    public void prepareRewardVideoAd(final PluginCall call) {
        Log.i("HAOHAO", "prepareRewardVideoAd");
        adRewardExecutor.prepareRewardVideoAd(call, this::notifyListeners);
    }

    @PluginMethod
    public void isLoadedRewardVideoAd(final PluginCall call) {
        Log.i("HAOHAO", "isLoadedRewardVideoAd");

        adRewardExecutor.isLoadedRewardVideoAd(call);
    }

    @PluginMethod
    public void showRewardVideoAd(final PluginCall call) {
        Log.i("HAOHAO", "showRewardVideoAd");

        adRewardExecutor.showRewardVideoAd(call);
    }

}
