.class Lcom/google/ads/mediation/appodeal/AppodealCustomEvent$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/appodeal/AppodealCustomEvent;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/appodeal/AppodealCustomEvent;

.field final synthetic val$interstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/appodeal/AppodealCustomEvent;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/appodeal/AppodealCustomEvent$2;->this$0:Lcom/google/ads/mediation/appodeal/AppodealCustomEvent;

    iput-object p2, p0, Lcom/google/ads/mediation/appodeal/AppodealCustomEvent$2;->val$interstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->isLoaded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/appodeal/AppodealCustomEvent$2;->val$interstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdLoaded()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/appodeal/AppodealCustomEvent$2;->val$interstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    goto :goto_0
.end method
