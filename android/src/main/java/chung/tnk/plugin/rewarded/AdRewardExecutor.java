package chung.tnk.plugin.rewarded;

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

public class AdRewardExecutor extends Executor {

    private final JSObject emptyObject = new JSObject();

    public InterstitialAdItem rewardedVideoAd;

    public AdRewardExecutor(
            Supplier<Context> contextSupplier,
            Supplier<Activity> activitySupplier,
            BiConsumer<String, JSObject> notifyListenersFunction,
            String pluginLogTag
    ) {
        super(contextSupplier, activitySupplier, notifyListenersFunction, pluginLogTag, "AdRewardExecutor");
    }

    @PluginMethod
    public void prepareRewardVideoAd(final PluginCall call, BiConsumer<String, JSObject> notifyListenersFunction) {
        String adRewardId = call.getString("adRewardId");
        if (TextUtils.isEmpty(adRewardId)) {
            call.reject("Miss adRewardId");
            return;
        }
        activitySupplier
                .get()
                .runOnUiThread(
                        () -> {
                            try {
                                rewardedVideoAd = new InterstitialAdItem(contextSupplier.get(), adRewardId);

                                rewardedVideoAd.setListener(new AdListener() {
                                    @Override
                                    public void onClose(AdItem adItem, int i) {
                                        super.onClose(adItem, i);
                                        notifyListenersFunction.accept(RewardAdPluginEvents.AdClose, emptyObject);

                                        Log.i("HAOHAO", " rewardListener onRewardedVideoClose ");

                                        JSObject adInfo = new JSObject();
                                        adInfo.put("rewardListener", RewardAdPluginEvents.AdClose);
                                        call.resolve(adInfo);
                                        // reload Rewarded Video
                                        if (rewardedVideoAd != null) {
                                            rewardedVideoAd.load();
                                        }
                                    }

                                    @Override
                                    public void onClick(AdItem adItem) {
                                        super.onClick(adItem);
                                        notifyListenersFunction.accept(RewardAdPluginEvents.AdClick, emptyObject);

                                        Log.i("HAOHAO", " rewardListener onRewardedVideoClicked");

                                        JSObject adInfo = new JSObject();
                                        adInfo.put("rewardListener", RewardAdPluginEvents.AdClick);
                                        call.resolve(adInfo);
                                    }

                                    @Override
                                    public void onShow(AdItem adItem) {
                                        super.onShow(adItem);
                                        notifyListenersFunction.accept(RewardAdPluginEvents.AdShown, emptyObject);

                                        Log.i("HAOHAO", " rewardListener onRewardedVideoShown");

                                        JSObject adInfo = new JSObject();
                                        adInfo.put("rewardListener", RewardAdPluginEvents.AdShown);
                                        call.resolve(adInfo);
                                    }

                                    @Override
                                    public void onError(AdItem adItem, AdError adError) {
                                        super.onError(adItem, adError);
                                        notifyListenersFunction.accept(RewardAdPluginEvents.AdError, emptyObject);

                                        Log.i("HAOHAO", " rewardListener onRewardedVideoFailedToLoad " + adError.getMessage());

                                        JSObject adInfo = new JSObject();
                                        adInfo.put("rewardListener", RewardAdPluginEvents.AdError);
                                        call.resolve(adInfo);
                                    }

                                    @Override
                                    public void onLoad(AdItem adItem) {
                                        super.onLoad(adItem);
                                        notifyListenersFunction.accept(RewardAdPluginEvents.AdLoad, emptyObject);

                                        Log.i("HAOHAO", " rewardListener onRewardedVideoLoaded");
                                        JSObject adInfo = new JSObject();
                                        adInfo.put("rewardListener", RewardAdPluginEvents.AdLoad);
                                        call.resolve(adInfo);
                                    }

                                    @Override
                                    public void onVideoCompletion(AdItem adItem, int i) {
                                        super.onVideoCompletion(adItem, i);
                                        notifyListenersFunction.accept(RewardAdPluginEvents.AdVideoCompletion, emptyObject);

                                        Log.i("HAOHAO", " rewardListener onRewardedVideoCompletion ");

                                        JSObject adInfo = new JSObject();
                                        adInfo.put("rewardListener", RewardAdPluginEvents.AdVideoCompletion);
                                        call.resolve(adInfo);
                                        // reload Rewarded Video
//                                        if (rewardedVideoAd != null) {
//                                            rewardedVideoAd.load();
//                                        }

                                    }
                                });


                                rewardedVideoAd.load();

                            } catch (Exception ex) {
                                call.reject(ex.getLocalizedMessage(), ex);
                            }
                        }
                );
    }


    @PluginMethod
    public void isLoadedRewardVideoAd(final PluginCall call) {
        Log.i("HAOHAO", "isLoadedRewardVideoAd");

        JSObject adInfo = new JSObject();
        if (rewardedVideoAd != null && rewardedVideoAd.isLoaded()) {
            Log.i("HAOHAO", "isLoadedRewardVideoAd true");

            adInfo.put("isLoadedRewardVideoAd", true);
            call.resolve(adInfo);
        } else {
            Log.i("HAOHAO", "isLoadedRewardVideoAd false");

            adInfo.put("isLoadedRewardVideoAd", false);
            call.resolve(adInfo);
        }


    }

    @PluginMethod
    public void showRewardVideoAd(final PluginCall call) {
        if (rewardedVideoAd == null) {
            String errorMessage = "No Reward Video Ad can be show. It was not prepared or maybe it failed to be prepared.";
            call.reject(errorMessage);
        } else {
            if (rewardedVideoAd.isLoaded()) {
                rewardedVideoAd.show();
            } else {
                String errorMessage = "Not ready!";
                call.reject(errorMessage);
            }
        }


    }
}
