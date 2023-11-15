import Foundation
import Capacitor
import AppTrackingTransparency
import TnkPubSdk
/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapacitorPluginTnkPlugin)
public class CapacitorPluginTnkPlugin: CAPPlugin {
    private let implementation = CapacitorPluginTnk()

   
    
    @objc func call_tnk_rewardedAd(_ call: CAPPluginCall) {
        print(call)
        print(call.options)
        print(call.dictionaryRepresentation)
        let caller_tnk_pub_id = call.getString("tnk_pub_id")
        print(caller_tnk_pub_id)
        let caller_placementId = call.getString("placementId")
        print(caller_placementId)
        DispatchQueue.main.sync {
            let cv = RewardedAdViewContoller(tnk_pub_id: caller_tnk_pub_id!, placementId: caller_placementId!)
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
            let cv = InterstitialAD_ViewContoller(tnk_pub_id: caller_tnk_pub_id!, placementId: caller_placementId!)
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
            let cv = BannerAdViewContoller(tnk_pub_id: caller_tnk_pub_id!, placementId: caller_placementId!)
            // Modally present the player and call the player's play() method when complete.
            //self.bridge?.viewController?.present(cv, animated: true) {
                  //print("show BannerAdViewContoller completed")
            //}
            self.bridge?.viewController?.view.addSubview(cv.view)
        }
        
    }//end call_tnk_rewardedAd func
    
    
}//end class


//============INTERSTITIAL AD CLASS======/////
class InterstitialAD_ViewContoller: UIViewController , TnkAdListener {
    var tnk_pub_id :String = ""
    var placementId:String = ""
    
    //==INIT===//
    init(tnk_pub_id:String, placementId:String) {
        
        super.init(nibName: nil, bundle: nil)
        self.tnk_pub_id = tnk_pub_id
        self.placementId = placementId
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
    
    func onLoad(_ adItem:TnkAdItem) {
            adItem.show()
        }
    func onClose(_ adItem:TnkAdItem, type:AdClose) {
            if (type == AdClose.Exit) {
                exit(1)
            }
        }
    
}//end class


//===========REWARD AD CLASS===///
class RewardedAdViewContoller: UIViewController, TnkAdListener {
    var tnk_pub_id :String = ""
    var placementId:String = ""
    
    //==INIT===//
    init(tnk_pub_id:String, placementId:String) {
        
        super.init(nibName: nil, bundle: nil)
        self.tnk_pub_id = tnk_pub_id
        self.placementId = placementId
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
        }
        else {
            // 적립 실패
        }
    }
}

//=====BANNNER AD CLASS====//
class BannerAdViewContoller: UIViewController, TnkAdListener {
    var tnk_pub_id :String = ""
    var placementId:String = ""
    
    //==INIT===//
    init(tnk_pub_id:String, placementId:String) {
        
        super.init(nibName: nil, bundle: nil)
        self.tnk_pub_id = tnk_pub_id
        self.placementId = placementId
        
        self.view.frame = CGRect(x: 0,y: UIScreen.main.bounds.height - 150,width: UIScreen.main.bounds.width, height: 60)
        self.view.backgroundColor = .green
        
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
        
       
        let adView = TnkBannerAdView(placementId: placementId, adListener: self)
        adView.frame = CGRect(x: 0, y: 0, width: 320, height: 50)
        //adView.setContainerView(self.view)
               
        
     self.view.addSubview(adView)
        adView.backgroundColor = .white
        adView.translatesAutoresizingMaskIntoConstraints = false
     
        adView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        adView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        adView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        
        adView.load()
         
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func onLoad(_ adItem:TnkAdItem) {
        adItem.show()
    }
    
    
}
