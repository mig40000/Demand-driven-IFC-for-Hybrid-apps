.class Lcom/google/ads/mediation/appodeal/AppodealCustomEvent$AppodealBannerListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/BannerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/appodeal/AppodealCustomEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppodealBannerListener"
.end annotation


# instance fields
.field private final bannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

.field final synthetic this$0:Lcom/google/ads/mediation/appodeal/AppodealCustomEvent;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/appodeal/AppodealCustomEvent;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/appodeal/AppodealCustomEvent$AppodealBannerListener;->this$0:Lcom/google/ads/mediation/appodeal/AppodealCustomEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/mediation/appodeal/AppodealCustomEvent$AppodealBannerListener;->bannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    return-void
.end method


# virtual methods
.method public onBannerClicked()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/appodeal/AppodealCustomEvent$AppodealBannerListener;->bannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdLeftApplication()V

    return-void
.end method

.method public onBannerFailedToLoad()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/appodeal/AppodealCustomEvent$AppodealBannerListener;->bannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public onBannerLoaded(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/appodeal/AppodealCustomEvent$AppodealBannerListener;->bannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/appodeal/AppodealCustomEvent$AppodealBannerListener;->this$0:Lcom/google/ads/mediation/appodeal/AppodealCustomEvent;

    invoke-static {v1}, Lcom/google/ads/mediation/appodeal/AppodealCustomEvent;->access$000(Lcom/google/ads/mediation/appodeal/AppodealCustomEvent;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->getBannerView(Landroid/app/Activity;)Lcom/appodeal/ads/BannerView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method

.method public onBannerShown()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/appodeal/AppodealCustomEvent$AppodealBannerListener;->bannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdOpened()V

    return-void
.end method
