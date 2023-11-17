# capacitor-plugin-tnk

plugin TNK for Capacitor

## Install

```bash
npm install capacitor-plugin-tnk
npx cap sync
```

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
* [`addListener('bannerAdLoaded', ...)`](#addlistenerbanneradloaded)
* [`addListener('bannerAdFailedToLoad', ...)`](#addlistenerbanneradfailedtoload)
* [`addListener('bannerAdClicked', ...)`](#addlistenerbanneradclicked)
* [`prepareRewardVideoAd(...)`](#preparerewardvideoad)
* [`showRewardVideoAd()`](#showrewardvideoad)
* [`isLoadedRewardVideoAd()`](#isloadedrewardvideoad)
* [`addListener('onRewardedVideoLoaded', ...)`](#addlisteneronrewardedvideoloaded)
* [`addListener('onRewardedVideoFailedToLoad', ...)`](#addlisteneronrewardedvideofailedtoload)
* [`addListener('onRewardedVideoClicked', ...)`](#addlisteneronrewardedvideoclicked)
* [`addListener('onRewardedVideoStarted', ...)`](#addlisteneronrewardedvideostarted)
* [`addListener('onRewardedVideoFinished', ...)`](#addlisteneronrewardedvideofinished)
* [`prepareInterstitial(...)`](#prepareinterstitial)
* [`showInterstitial()`](#showinterstitial)
* [`isLoadedInterstitial()`](#isloadedinterstitial)
* [`addListener('onInterstitialLoaded', ...)`](#addlisteneroninterstitialloaded)
* [`addListener('onInterstitialFailedToLoad', ...)`](#addlisteneroninterstitialfailedtoload)
* [`addListener('onInterstitialClicked', ...)`](#addlisteneroninterstitialclicked)
* [`addListener('onInterstitialShown', ...)`](#addlisteneroninterstitialshown)
* [`addListener('onInterstitialDismissed', ...)`](#addlisteneroninterstitialdismissed)
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
WArning: if you don't have "REAL appId" please using "TEST_ID" string instead.
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


### addListener('bannerAdLoaded', ...)

```typescript
addListener(eventName: "bannerAdLoaded", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                          |
| ------------------ | ----------------------------- |
| **`eventName`**    | <code>'bannerAdLoaded'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>    |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('bannerAdFailedToLoad', ...)

```typescript
addListener(eventName: "bannerAdFailedToLoad", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                                |
| ------------------ | ----------------------------------- |
| **`eventName`**    | <code>'bannerAdFailedToLoad'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>          |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('bannerAdClicked', ...)

```typescript
addListener(eventName: "bannerAdClicked", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                           |
| ------------------ | ------------------------------ |
| **`eventName`**    | <code>'bannerAdClicked'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>     |

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


### addListener('onRewardedVideoLoaded', ...)

```typescript
addListener(eventName: "onRewardedVideoLoaded", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                                 |
| ------------------ | ------------------------------------ |
| **`eventName`**    | <code>'onRewardedVideoLoaded'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>           |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('onRewardedVideoFailedToLoad', ...)

```typescript
addListener(eventName: "onRewardedVideoFailedToLoad", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                                       |
| ------------------ | ------------------------------------------ |
| **`eventName`**    | <code>'onRewardedVideoFailedToLoad'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>                 |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('onRewardedVideoClicked', ...)

```typescript
addListener(eventName: "onRewardedVideoClicked", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                                  |
| ------------------ | ------------------------------------- |
| **`eventName`**    | <code>'onRewardedVideoClicked'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>            |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('onRewardedVideoStarted', ...)

```typescript
addListener(eventName: "onRewardedVideoStarted", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                                  |
| ------------------ | ------------------------------------- |
| **`eventName`**    | <code>'onRewardedVideoStarted'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>            |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('onRewardedVideoFinished', ...)

```typescript
addListener(eventName: "onRewardedVideoFinished", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                                   |
| ------------------ | -------------------------------------- |
| **`eventName`**    | <code>'onRewardedVideoFinished'</code> |
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


### addListener('onInterstitialLoaded', ...)

```typescript
addListener(eventName: "onInterstitialLoaded", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                                |
| ------------------ | ----------------------------------- |
| **`eventName`**    | <code>'onInterstitialLoaded'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>          |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('onInterstitialFailedToLoad', ...)

```typescript
addListener(eventName: "onInterstitialFailedToLoad", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                                      |
| ------------------ | ----------------------------------------- |
| **`eventName`**    | <code>'onInterstitialFailedToLoad'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>                |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('onInterstitialClicked', ...)

```typescript
addListener(eventName: "onInterstitialClicked", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                                 |
| ------------------ | ------------------------------------ |
| **`eventName`**    | <code>'onInterstitialClicked'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>           |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('onInterstitialShown', ...)

```typescript
addListener(eventName: "onInterstitialShown", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                               |
| ------------------ | ---------------------------------- |
| **`eventName`**    | <code>'onInterstitialShown'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>         |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener('onInterstitialDismissed', ...)

```typescript
addListener(eventName: "onInterstitialDismissed", listenerFunc: () => void) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                                   |
| ------------------ | -------------------------------------- |
| **`eventName`**    | <code>'onInterstitialDismissed'</code> |
| **`listenerFunc`** | <code>() =&gt; void</code>             |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt; & <a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### Interfaces


#### PluginListenerHandle

| Prop         | Type                                      |
| ------------ | ----------------------------------------- |
| **`remove`** | <code>() =&gt; Promise&lt;void&gt;</code> |

</docgen-api>
