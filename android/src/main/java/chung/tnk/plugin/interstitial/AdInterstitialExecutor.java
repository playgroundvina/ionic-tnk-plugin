package chung.tnk.plugin.interstitial;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;

import androidx.core.util.Supplier;

import com.getcapacitor.JSObject;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.google.android.gms.common.util.BiConsumer;
import com.tnkfactory.ad.AdError;
import com.tnkfactory.ad.AdItem;
import com.tnkfactory.ad.AdListener;
import com.tnkfactory.ad.InterstitialAdItem;

import chung.tnk.plugin.models.Executor;

public class AdInterstitialExecutor extends Executor {

    private final JSObject emptyObject = new JSObject();
    public InterstitialAdItem interstitialAd;

    public AdInterstitialExecutor(
            Supplier<Context> contextSupplier,
            Supplier<Activity> activitySupplier,
            BiConsumer<String, JSObject> notifyListenersFunction,
            String pluginLogTag
    ) {
        super(contextSupplier, activitySupplier, notifyListenersFunction, pluginLogTag, "AdInterstitialExecutor");
    }

    @PluginMethod
    public void prepareInterstitial(final PluginCall call, BiConsumer<String, JSObject> notifyListenersFunction) {
        String adInterstitialId = call.getString("adInterstitialId");
        if (TextUtils.isEmpty(adInterstitialId)) {
            call.reject("Miss adInterstitialId");
            return;
        }
        activitySupplier
                .get()
                .runOnUiThread(
                        () -> {
                            try {
                                interstitialAd = new InterstitialAdItem(contextSupplier.get(), adInterstitialId);

                                interstitialAd.setListener(new AdListener() {
                                    @Override
                                    public void onClose(AdItem adItem, int i) {
                                        super.onClose(adItem, i);
                                        notifyListenersFunction.accept(InterstitialAdPluginEvents.AdClose, emptyObject);

                                        Log.i("HAOHAO", " interstitialListener onInterstitialClose");

                                        JSObject adInfo = new JSObject();
                                        adInfo.put("interstitialListener", InterstitialAdPluginEvents.AdClose);
                                        call.resolve(adInfo);
                                        // reload Interstitialed Video
                                        if (interstitialAd != null) {
                                            interstitialAd.load();
                                        }
                                    }

                                    @Override
                                    public void onClick(AdItem adItem) {
                                        super.onClick(adItem);
                                        notifyListenersFunction.accept(InterstitialAdPluginEvents.AdClick, emptyObject);

                                        Log.i("HAOHAO", " interstitialListener onInterstitialClicked");

                                        JSObject adInfo = new JSObject();
                                        adInfo.put("interstitialListener", InterstitialAdPluginEvents.AdClick);
                                        call.resolve(adInfo);
                                    }

                                    @Override
                                    public void onShow(AdItem adItem) {
                                        super.onShow(adItem);
                                        notifyListenersFunction.accept(InterstitialAdPluginEvents.AdShown, emptyObject);

                                        Log.i("HAOHAO", " interstitialListener onInterstitialShown");

                                        JSObject adInfo = new JSObject();
                                        adInfo.put("interstitialListener", InterstitialAdPluginEvents.AdShown);
                                        call.resolve(adInfo);
                                    }

                                    @Override
                                    public void onError(AdItem adItem, AdError adError) {
                                        super.onError(adItem, adError);
                                        notifyListenersFunction.accept(InterstitialAdPluginEvents.AdError, emptyObject);

                                        Log.i("HAOHAO", " interstitialListener onInterstitialFailedToLoad " + adError.getMessage());

                                        JSObject adInfo = new JSObject();
                                        adInfo.put("interstitialListener", InterstitialAdPluginEvents.AdError);
                                        call.resolve(adInfo);
                                    }

                                    @Override
                                    public void onLoad(AdItem adItem) {
                                        super.onLoad(adItem);
                                        notifyListenersFunction.accept(InterstitialAdPluginEvents.AdLoad, emptyObject);

                                        Log.i("HAOHAO", " interstitialListener onInterstitialLoaded");
                                        JSObject adInfo = new JSObject();
                                        adInfo.put("interstitialListener", InterstitialAdPluginEvents.AdLoad);
                                        call.resolve(adInfo);
                                    }
                                });


                                interstitialAd.load();

                            } catch (Exception ex) {
                                call.reject(ex.getLocalizedMessage(), ex);
                            }
                        }
                );

    }

    @PluginMethod
    public void isLoadedInterstitial(final PluginCall call) {
        Log.i("HAOHAO", "isLoadedInterstitialVideoAd");

        JSObject adInfo = new JSObject();
        if (interstitialAd != null && interstitialAd.isLoaded()) {
            Log.i("HAOHAO", "isLoadedInterstitialVideoAd true");

            adInfo.put("isLoadedInterstitial", true);
            call.resolve(adInfo);
        } else {
            Log.i("HAOHAO", "isLoadedInterstitialVideoAd false");

            adInfo.put("isLoadedInterstitial", false);
            call.resolve(adInfo);
        }


    }

    @PluginMethod
    public void showInterstitial(final PluginCall call) {
        if (interstitialAd == null) {
            String errorMessage = "No Interstitial can be show. It was not prepared or maybe it failed to be prepared.";
            call.reject(errorMessage);
        } else {
            if (interstitialAd.isLoaded()) {
                interstitialAd.show();
            } else {
                String errorMessage = "Not ready!";
                call.reject(errorMessage);
            }
        }
    }


}
