import Foundation
import Capacitor
import AppTrackingTransparency
import TnkPubSdk
/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapacitorPluginTnkPlugin)
public class CapacitorPluginTnkPlugin: CAPPlugin, TnkAdListener {
    private let implementation = CapacitorPluginTnk()

    var caller_tnk_pub_id:String = "noid"
    var mycurrentViewHolderParent:UIView?
    var mycurrentViewHolder:UIView?
    
    var my_rewardVideoId:String = "noid"
    var my_isLoadedRewardVideoAd = false
    
    
    var my_adInterstitialId:String = "noid"
    var my_isLoadedInterstitialAd = false
    
    //=============
    @objc func call_tnk_rewardedAd(_ call: CAPPluginCall) {
        print(call)
        print(call.options)
        print(call.dictionaryRepresentation)
        let caller_tnk_pub_id = call.getString("tnk_pub_id")
        print(caller_tnk_pub_id)
        let caller_placementId = call.getString("placementId")
        print(caller_placementId)
        DispatchQueue.main.sync {
            let cv = RewardedAdViewContoller(tnk_pub_id: caller_tnk_pub_id!, placementId: caller_placementId!, callerCapacitor: self)
            // Modally present the player and call the player's play() method when complete.
            self.bridge?.viewController?.present(cv, animated: true) {
                  print("show RewardedAdViewContoller completed")
            }
        }
        
    }//end call_tnk_rewardedAd func
       
    
    @objc func call_tnk_nativeAd(_ call: CAPPluginCall) {
        print(call)
        print(call.options)
        print(call.dictionaryRepresentation)
        let caller_tnk_pub_id = call.getString("tnk_pub_id")
        print(caller_tnk_pub_id)
        let caller_placementId = call.getString("placementId")
        print(caller_placementId)
    }//end call_tnk_rewardedAd func
    
    
    @objc func call_tnk_interstitialAd(_ call: CAPPluginCall) {
        print(call)
        print(call.options)
        print(call.dictionaryRepresentation)
        let caller_tnk_pub_id = call.getString("tnk_pub_id")
        print(caller_tnk_pub_id)
        let caller_placementId = call.getString("placementId")
        print(caller_placementId)
        DispatchQueue.main.sync {
            let cv = InterstitialAD_ViewContoller(tnk_pub_id: caller_tnk_pub_id!, placementId: caller_placementId!, callerCapacitor: self)
            // Modally present the player and call the player's play() method when complete.
            self.bridge?.viewController?.present(cv, animated: true) {
                  print("show InterstitialAD_ViewContoller completed")
            }
        }
        
    }//end call_tnk_rewardedAd func
    
    
    @objc func call_tnk_bannerAd(_ call: CAPPluginCall) {
        print(call)
        print(call.options)
        print(call.dictionaryRepresentation)
        let caller_tnk_pub_id = call.getString("tnk_pub_id")
        print(caller_tnk_pub_id)
        let caller_placementId = call.getString("placementId")
        print(caller_placementId)
        DispatchQueue.main.sync {
            let cv = BannerAdViewContoller(tnk_pub_id: caller_tnk_pub_id!, placementId: caller_placementId!, callerCapacitor: self, delegateParent: self)
            // Modally present the player and call the player's play() method when complete.
            //self.bridge?.viewController?.present(cv, animated: true) {
                  //print("show BannerAdViewContoller completed")
            //}
            self.bridge?.viewController?.view.addSubview(cv.view)
        }
        
    }//end call_tnk_rewardedAd func
    
    @objc func initialize(_ call: CAPPluginCall) {
        print(call)
        print(call.options)
        print(call.dictionaryRepresentation)
        let caller_tnk_pub_id = call.getString("appId")
        print(caller_tnk_pub_id)
        self.caller_tnk_pub_id = caller_tnk_pub_id ?? ""
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        // 디버깅 적용
        if(caller_tnk_pub_id == "TEST_ID"){
        }
            else{
            if #available(iOS 14.0, *) {
                // iOS 15 부터는 applicationState 가 active 상태인 경우에만 ATTPopup 이 뜬다.
                DispatchQueue.main.sync {
                    if UIApplication.shared.applicationState == .active {
                        ATTrackingManager.requestTrackingAuthorization { status in
                            //open khi release
                            TnkAdConfiguration.setPublisherId( self.caller_tnk_pub_id)
                        }
                    }
                    else {
                        ATTrackingManager.requestTrackingAuthorization { status in
                            //open khi release
                            TnkAdConfiguration.setPublisherId( self.caller_tnk_pub_id)
                        }
                    }
                }
            }
            
        }
    }
    @objc func hideBanner(_ call: CAPPluginCall) {
        if(mycurrentViewHolder != nil ){
            DispatchQueue.main.sync {
                mycurrentViewHolder?.isHidden = true
                //mycurrentViewHolder?.heightAnchor.constraint(equalToConstant: 0).isActive = true
            }
        }
    }
    @objc func removeBanner(_ call: CAPPluginCall) {
        if(mycurrentViewHolder != nil){
            DispatchQueue.main.sync {
                mycurrentViewHolder?.isHidden = true
                mycurrentViewHolder?.removeFromSuperview()
                mycurrentViewHolder = nil
            }
        }
    }
    @objc func resumeBanner(_ call: CAPPluginCall) {
        if(mycurrentViewHolder != nil ){
            DispatchQueue.main.sync {
                
                mycurrentViewHolder?.isHidden = false
                
                //mycurrentViewHolder?.translatesAutoresizingMaskIntoConstraints = false
             
                //mycurrentViewHolder?.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
                //mycurrentViewHolder?.heightAnchor.constraint(equalToConstant: 60).isActive = true
                //mycurrentViewHolder?.bottomAnchor.constraint(equalTo: mycurrentViewHolderParent!.bottomAnchor).isActive = true
            }
        }
    }
    @objc func showBanner(_ call: CAPPluginCall) {
        print(call)
        print(call.options)
        print(call.dictionaryRepresentation)
        let caller_slotID = call.getString("adBannerId")
        print(caller_slotID)
         
        var caller_slotID_position = call.getString("position")
        print(caller_slotID_position)
        
        let caller_slotID_margin = call.getInt("margin")
        print(caller_slotID_margin)
        
        //phan giai TOP_CENTER, CENTER, default: BOTTOM_CENTER
        switch caller_slotID_position{
        case "TOP_CENTER":
            
            caller_slotID_position = String(0 + (caller_slotID_margin ?? 0))
        case "CENTER":
            caller_slotID_position = String(Int(UIScreen.main.bounds.height)/2)
        default :
            caller_slotID_position = String(Int(UIScreen.main.bounds.height) - (((caller_slotID_margin ?? 0) + 50)))
        }
        
        
       
        
        if(mycurrentViewHolder == nil){
            
            DispatchQueue.main.sync {
               
                let cv = BannerAdViewContoller(tnk_pub_id: self.caller_tnk_pub_id, placementId: caller_slotID!,
                                               position: caller_slotID_position,
                                               margin: caller_slotID_margin, callerCapacitor: self, delegateParent:self)
                 
                mycurrentViewHolder = cv.view
                self.bridge?.viewController?.view.addSubview(cv.view)
                
              
                mycurrentViewHolderParent = self.bridge?.viewController?.view
                
            }
        }
        
        if(mycurrentViewHolder != nil ){
            DispatchQueue.main.sync {
                
                mycurrentViewHolder?.isHidden = false
                
                //mycurrentViewHolder?.translatesAutoresizingMaskIntoConstraints = false
             
                //mycurrentViewHolder?.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
                //mycurrentViewHolder?.heightAnchor.constraint(equalToConstant: 60).isActive = true
                //mycurrentViewHolder?.bottomAnchor.constraint(equalTo: mycurrentViewHolderParent!.bottomAnchor).isActive = true
            }
        }
    }
    
    
    
    //==========INTERSTITIAL==========///
    @objc func prepareInterstitial(_ call: CAPPluginCall) {
        print("my_caller_tnk_pub_id: ",caller_tnk_pub_id)
        print(call)
        print(call.options)
        print(call.dictionaryRepresentation)
        let my_adInterstitialId = call.getString("adInterstitialId")
        print(my_adInterstitialId)
        self.my_adInterstitialId = my_adInterstitialId ?? "noid"
        
        
    }
    @objc func showInterstitial(_ call: CAPPluginCall) {
        my_isLoadedInterstitialAd = false
        DispatchQueue.main.sync {
            let cv = InterstitialAD_ViewContoller(tnk_pub_id: self.caller_tnk_pub_id, placementId:  self.my_adInterstitialId, callerCapacitor: self)
            // Modally present the player and call the player's play() method when complete.
            self.bridge?.viewController?.present(cv, animated: true) {
                  print("show InterstitialAD_ViewContoller completed")
                self.my_isLoadedInterstitialAd = true
            }
            
           
        }
    }
    @objc func isLoadedInterstitial(_ call: CAPPluginCall) {
        call.resolve([
            "isLoadedInterstitial": my_isLoadedInterstitialAd
        ])
    }
    
    
    //=========REWARD VIDEO==========///
    @objc func prepareRewardVideoAd(_ call: CAPPluginCall) {
        print("my_caller_tnk_pub_id: ",caller_tnk_pub_id)
        print(call)
        print(call.options)
        print(call.dictionaryRepresentation)
        let my_rewardVideoId = call.getString("adRewardId")
        print(my_rewardVideoId)
        self.my_rewardVideoId = my_rewardVideoId ?? "noid"
       
    }
    @objc func showRewardVideoAd(_ call: CAPPluginCall) {
        my_isLoadedRewardVideoAd = false
        DispatchQueue.main.sync {
            let cv = RewardedAdViewContoller(tnk_pub_id:  self.caller_tnk_pub_id, placementId: self.my_rewardVideoId, callerCapacitor: self)
            // Modally present the player and call the player's play() method when complete.
            self.bridge?.viewController?.present(cv, animated: true) {
                  print("show RewardedAdViewContoller completed")
                self.my_isLoadedRewardVideoAd = true
            }
            
        }
    }
    
    @objc func isLoadedRewardVideoAd(_ call: CAPPluginCall) {
        call.resolve([
            "isLoadedRewardVideoAd": my_isLoadedRewardVideoAd
        ])
    }
    
    
    
    
    //========DELEGATE====///
    public func onLoad(_ adItem:TnkAdItem) {
        adItem.show()
    }
    
    public func onClick(_ adItem: TnkAdItem) {
        print("click")
        self.notifyListeners("bannerAdClick", data: ["bannerAdClick": true])
    }
    
    
}//end class


//============INTERSTITIAL AD CLASS======/////
class InterstitialAD_ViewContoller: UIViewController , TnkAdListener {
    var tnk_pub_id :String = ""
    var placementId:String = ""
    var callerCapacitor:CAPPlugin?
    //==INIT===//
    init(tnk_pub_id:String, placementId:String, callerCapacitor:CAPPlugin?) {
        
        super.init(nibName: nil, bundle: nil)
        self.tnk_pub_id = tnk_pub_id
        self.placementId = placementId
        self.callerCapacitor = callerCapacitor
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if #available(iOS 14, *) {
            // ATT 알림을 통한 권한 요청
            ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
               
               
            })
        } else {
            
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.modalPresentationStyle = .overCurrentContext
        self.view.backgroundColor = .clear
        self.view.isOpaque = false
        print("InterstitialAD_ViewContoller load ok: ->", placementId as Any)
        let adItem = TnkInterstitialAdItem(viewController: self,
                                           placementId: placementId)
        adItem.setListener(self)
        adItem.load()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    func onClick(_ adItem: TnkAdItem) {
        self.callerCapacitor?.notifyListeners("interstitialAdClick", data: ["interstitialAdClick":true])
    }
    func onLoad(_ adItem:TnkAdItem) {
            adItem.show()
        self.callerCapacitor?.notifyListeners("interstitialAdLoad", data: ["interstitialAdLoad":true])
        }
    func onClose(_ adItem:TnkAdItem, type:AdClose) {
            if (type == AdClose.Exit) {
                self.callerCapacitor?.notifyListeners("interstitialAdClose", data: ["interstitialAdClose":true])
                exit(1)
                
            }
        self.callerCapacitor?.notifyListeners("interstitialAdClick", data: ["interstitialAdClick":true])
        self.dismiss(animated: true)
        }
    
}//end class


//===========REWARD AD CLASS===///
class RewardedAdViewContoller: UIViewController, TnkAdListener {
    var tnk_pub_id :String = ""
    var placementId:String = ""
    var callerCapacitor:CAPPlugin?
    //==INIT===//
    init(tnk_pub_id:String, placementId:String, callerCapacitor:CAPPlugin?) {
        
        super.init(nibName: nil, bundle: nil)
        self.tnk_pub_id = tnk_pub_id
        self.placementId = placementId
        self.callerCapacitor = callerCapacitor
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if #available(iOS 14, *) {
            // ATT 알림을 통한 권한 요청
            ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
               
               
            })
        } else {
            
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.modalPresentationStyle = .overCurrentContext
        self.view.backgroundColor = .clear
        self.view.isOpaque = false
        print("RewardedAdViewContoller load ok: ->", placementId as Any)
        let adItem = TnkInterstitialAdItem(viewController: self,
                                           placementId: placementId)
        adItem.setListener(self)
        adItem.load()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func onLoad(_ adItem:TnkAdItem) {
        if let interstitialAdItem = adItem as? TnkInterstitialAdItem {
               interstitialAdItem.show()
           }
        }
    
    func onVideoCompletion(_ adItem:TnkAdItem, verifyCode:Int) {
        if verifyCode >= 0 {
            // 적립 진행
            self.dismiss(animated: true)
        }
        else {
            // 적립 실패
            self.dismiss(animated: true)
        }
        self.callerCapacitor?.notifyListeners("rewardAdVideoCompletion", data: ["rewardAdVideoCompletion":true])
    }
    
    func onClick(_ adItem: TnkAdItem) {
        self.callerCapacitor?.notifyListeners("rewardAdClick", data: ["rewardAdClick":true])
    }
    func onClose(_ adItem:TnkAdItem, type:AdClose) {
            if (type == AdClose.Exit) {
                self.callerCapacitor?.notifyListeners("rewardAdVideoCompletion", data: ["rewardAdVideoCompletion":true])
                exit(1)
                
            }
        self.callerCapacitor?.notifyListeners("rewardAdClose", data: ["rewardAdClose":true])
        self.dismiss(animated: true)
        }
}

//=====BANNNER AD CLASS====//
class BannerAdViewContoller: UIViewController, TnkAdListener {
    var tnk_pub_id :String = ""
    var placementId:String = ""
    var callerCapacitor: CAPPlugin?
    var position:String?
    var margin:Int?
    //let myCancelButton = UIButton()
    var delegateParent:CAPPlugin?
    var adView:TnkBannerAdView?
    //==INIT===//
    init(tnk_pub_id:String, placementId:String, position: String? = "150",
         margin: Int? = 0, callerCapacitor:CAPPlugin?, delegateParent:CAPPlugin?) {
        
        super.init(nibName: nil, bundle: nil)
        self.tnk_pub_id = tnk_pub_id
        self.placementId = placementId
        self.position = position
        self.margin = margin
        self.view.frame = CGRect(x: 0,y: UIScreen.main.bounds.height - ( UIScreen.main.bounds.height - CGFloat(Int(self.position ?? "150") ?? 150)),width: UIScreen.main.bounds.width, height: 50)
        self.view.backgroundColor = .clear
        
        self.callerCapacitor = callerCapacitor
      
        self.delegateParent = delegateParent
        self.adView = TnkBannerAdView(placementId: placementId, adListener: delegateParent as! TnkAdListener)
       
        
        let adView = TnkBannerAdView(placementId: placementId, adListener: self)
        adView.frame = CGRect(x: 0, y: 0, width: 320, height: 50)
       
      
       
       self.view.addSubview(self.adView!)
       self.adView!.backgroundColor = .white
       self.adView!.translatesAutoresizingMaskIntoConstraints = false
    
       self.adView!.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
       self.adView!.heightAnchor.constraint(equalToConstant: 60).isActive = true
       self.adView!.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
       
       
       self.adView!.load()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if #available(iOS 14, *) {
            // ATT 알림을 통한 권한 요청
            ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
               
               
            })
        } else {
            
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.modalPresentationStyle = .overCurrentContext
        //self.view.backgroundColor = .clear
        //self.view.isOpaque = false
        print("BannerAdViewContoller load ok: ->", placementId as Any)
        
        
       
         
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func onLoad(_ adItem:TnkAdItem) {
        adItem.show()
    }
    
    func onClick(_ adItem: TnkAdItem) {
        print("click")
    }
}
