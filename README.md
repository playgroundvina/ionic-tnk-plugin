# capacitor-plugin-tnk

plugin TNK for Capacitor

## Install

```bash
npm install capacitor-plugin-tnk
npx cap sync
```

## Id for test:
adBannerId: TEST_BANNER_100
adInterstitialId: TEST_INTERSTITIAL_V
adRewardId: TEST_REWARD_V
import { CapacitorPluginTnk } from 'capacitor-plugin-tnk';


Example show a banner :
const options = { adBannerId: "TEST_BANNER_100", // remember replace adBannerId position: 'TOP_CENTER', // position : TOP_CENTER, CENTER, default: BOTTOM_CENTER margin: 75, // margin only for BOTTOM_CENTER or TOP_CENTER, default value =0 }; await CapacitorPluginAdPie.showBanner(options);

To remove a listener from the plugin object:

Example:
const myRewardClickListener = await CapacitorPluginAdPie.addListener('onRewardedVideoClicked', () => {

console.log(' onRewardedVideoClicked')
});

myRewardClickListener.remove(); // remove

## API

<docgen-index>

* [`call_tnk_bannerAd(...)`](#call_tnk_bannerad)
* [`call_tnk_nativeAd(...)`](#call_tnk_nativead)
* [`call_tnk_interstitialAd(...)`](#call_tnk_interstitialad)
* [`call_tnk_rewardedAd(...)`](#call_tnk_rewardedad)
* [`initialize(...)`](#initialize)
* [`showBanner(...)`](#showbanner)
* [`hideBanner()`](#hidebanner)
* [`removeBanner()`](#removebanner)
* [`resumeBanner()`](#resumebanner)
* [`addListener('bannerAdLoad', ...)`](#addlistenerbanneradload)
* [`addListener('bannerError', ...)`](#addlistenerbannererror)
* [`addListener('bannerAdClick', ...)`](#addlistenerbanneradclick)
* [`addListener('bannerAdShow', ...)`](#addlistenerbanneradshow)
* [`prepareRewardVideoAd(...)`](#preparerewardvideoad)
* [`showRewardVideoAd()`](#showrewardvideoad)
* [`isLoadedRewardVideoAd()`](#isloadedrewardvideoad)
* [`addListener('rewardAdLoad', ...)`](#addlistenerrewardadload)
* [`addListener('rewardError', ...)`](#addlistenerrewarderror)
* [`addListener('rewardAdClick', ...)`](#addlistenerrewardadclick)
* [`addListener('rewardAdShow', ...)`](#addlistenerrewardadshow)
* [`addListener('rewardAdClose', ...)`](#addlistenerrewardadclose)
* [`addListener('rewardAdVideoCompletion', ...)`](#addlistenerrewardadvideocompletion)
* [`prepareInterstitial(...)`](#prepareinterstitial)
* [`showInterstitial()`](#showinterstitial)
* [`isLoadedInterstitial()`](#isloadedinterstitial)
* [`addListener('interstitialAdLoad', ...)`](#addlistenerinterstitialadload)
* [`addListener('interstitialError', ...)`](#addlistenerinterstitialerror)
* [`addListener('interstitialAdClick', ...)`](#addlistenerinterstitialadclick)
* [`addListener('interstitialAdShow', ...)`](#addlistenerinterstitialadshow)
* [`addListener('interstitialAdClose', ...)`](#addlistenerinterstitialadclose)
* [Interfaces](#interfaces)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### call_tnk_bannerAd(...)

```typescript
call_tnk_bannerAd(options: { tnk_pub_id: string; placementId: string; }) => Promise<void>
```

| Param         | Type                                                      |
| ------------- | --------------------------------------------------------- |
| **`options`** | <code>{ tnk_pub_id: string; placementId: string; }</code> |

--------------------


### call_tnk_nativeAd(...)

```typescript
call_tnk_nativeAd(options: { tnk_pub_id: string; placementId: string; }) => Promise<void>
```

| Param         | Type                                                      |
| ------------- | --------------------------------------------------------- |
| **`options`** | <code>{ tnk_pub_id: string; placementId: string; }</code> |

--------------------


### call_tnk_interstitialAd(...)

```typescript
call_tnk_interstitialAd(options: { tnk_pub_id: string; placementId: string; }) => Promise<void>
```

| Param         | Type                                                      |
| ------------- | --------------------------------------------------------- |
| **`options`** | <code>{ tnk_pub_id: string; placementId: string; }</code> |

--------------------


### call_tnk_rewardedAd(...)

```typescript
call_tnk_rewardedAd(options: { tnk_pub_id: string; placementId: string; }) => Promise<void>
```

| Param         | Type                                                      |
| ------------- | --------------------------------------------------------- |
| **`options`** | <code>{ tnk_pub_id: string; placementId: string; }</code> |

--------------------


### initialize(...)

```typescript
initialize(options: { appId: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ appId: string; }</code> |

--------------------


### showBanner(...)

```typescript
showBanner(options: { adBannerId: string; position: string; margin: number; }) => Promise<void>
```

| Param         | Type                                                                   |
| ------------- | ---------------------------------------------------------------------- |
| **`options`** | <code>{ adBannerId: string; position: string; margin: number; }</code> |

--------------------


### hideBanner()

```typescript
hideBanner() => Promise<void>
```

--------------------


### removeBanner()

```typescript
removeBanner() => Promise<void>
```

--------------------


### resumeBanner()

```typescript
resumeBanner() => Promise<void>
```

--------------------


### addListener('bannerAdLoad', ...)

```typescript
addListener(eventName: "bannerAdLoad", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                        |
| ------------------ | --------------------------- |
| **`eventName`**    | <code>'bannerAdLoad'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>  |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('bannerError', ...)

```typescript
addListener(eventName: "bannerError", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                       |
| ------------------ | -------------------------- |
| **`eventName`**    | <code>'bannerError'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code> |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('bannerAdClick', ...)

```typescript
addListener(eventName: "bannerAdClick", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                         |
| ------------------ | ---------------------------- |
| **`eventName`**    | <code>'bannerAdClick'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>   |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('bannerAdShow', ...)

```typescript
addListener(eventName: "bannerAdShow", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                        |
| ------------------ | --------------------------- |
| **`eventName`**    | <code>'bannerAdShow'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>  |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### prepareRewardVideoAd(...)

```typescript
prepareRewardVideoAd(options: { adRewardId: string; }) => Promise<void>
```

| Param         | Type                                 |
| ------------- | ------------------------------------ |
| **`options`** | <code>{ adRewardId: string; }</code> |

--------------------


### showRewardVideoAd()

```typescript
showRewardVideoAd() => Promise<void>
```

--------------------


### isLoadedRewardVideoAd()

```typescript
isLoadedRewardVideoAd() => Promise<{ isLoadedRewardVideoAd: boolean; }>
```

**Returns:** <code>Promise&lt;{ isLoadedRewardVideoAd: boolean; }&gt;</code>

--------------------


### addListener('rewardAdLoad', ...)

```typescript
addListener(eventName: "rewardAdLoad", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                        |
| ------------------ | --------------------------- |
| **`eventName`**    | <code>'rewardAdLoad'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>  |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('rewardError', ...)

```typescript
addListener(eventName: "rewardError", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                       |
| ------------------ | -------------------------- |
| **`eventName`**    | <code>'rewardError'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code> |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('rewardAdClick', ...)

```typescript
addListener(eventName: "rewardAdClick", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                         |
| ------------------ | ---------------------------- |
| **`eventName`**    | <code>'rewardAdClick'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>   |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('rewardAdShow', ...)

```typescript
addListener(eventName: "rewardAdShow", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                        |
| ------------------ | --------------------------- |
| **`eventName`**    | <code>'rewardAdShow'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>  |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('rewardAdClose', ...)

```typescript
addListener(eventName: "rewardAdClose", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                         |
| ------------------ | ---------------------------- |
| **`eventName`**    | <code>'rewardAdClose'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>   |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('rewardAdVideoCompletion', ...)

```typescript
addListener(eventName: "rewardAdVideoCompletion", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                                   |
| ------------------ | -------------------------------------- |
| **`eventName`**    | <code>'rewardAdVideoCompletion'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>             |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### prepareInterstitial(...)

```typescript
prepareInterstitial(options: { adInterstitialId: string; }) => Promise<void>
```

| Param         | Type                                       |
| ------------- | ------------------------------------------ |
| **`options`** | <code>{ adInterstitialId: string; }</code> |

--------------------


### showInterstitial()

```typescript
showInterstitial() => Promise<void>
```

--------------------


### isLoadedInterstitial()

```typescript
isLoadedInterstitial() => Promise<{ isLoadedInterstitial: boolean; }>
```

**Returns:** <code>Promise&lt;{ isLoadedInterstitial: boolean; }&gt;</code>

--------------------


### addListener('interstitialAdLoad', ...)

```typescript
addListener(eventName: "interstitialAdLoad", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                              |
| ------------------ | --------------------------------- |
| **`eventName`**    | <code>'interstitialAdLoad'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>        |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('interstitialError', ...)

```typescript
addListener(eventName: "interstitialError", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                             |
| ------------------ | -------------------------------- |
| **`eventName`**    | <code>'interstitialError'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>       |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('interstitialAdClick', ...)

```typescript
addListener(eventName: "interstitialAdClick", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                               |
| ------------------ | ---------------------------------- |
| **`eventName`**    | <code>'interstitialAdClick'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>         |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('interstitialAdShow', ...)

```typescript
addListener(eventName: "interstitialAdShow", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                              |
| ------------------ | --------------------------------- |
| **`eventName`**    | <code>'interstitialAdShow'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>        |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('interstitialAdClose', ...)

```typescript
addListener(eventName: "interstitialAdClose", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                               |
| ------------------ | ---------------------------------- |
| **`eventName`**    | <code>'interstitialAdClose'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>         |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### Interfaces


#### PluginListenerHandle

| Prop         | Type                                      |
| ------------ | ----------------------------------------- |
| **`remove`** | <code>() =&gt; Promise&lt;void&gt;</code> |

</docgen-api>
