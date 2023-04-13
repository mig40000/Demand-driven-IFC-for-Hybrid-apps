.class Lcom/appodeal/ads/native_ad/k$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/native_ad/k$a;->getProviderView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/appodeal/ads/native_ad/k$a;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/native_ad/k$a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/k$a$1;->b:Lcom/appodeal/ads/native_ad/k$a;

    iput-object p2, p0, Lcom/appodeal/ads/native_ad/k$a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/k$a$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/k$a$1;->b:Lcom/appodeal/ads/native_ad/k$a;

    invoke-static {v1}, Lcom/appodeal/ads/native_ad/k$a;->a(Lcom/appodeal/ads/native_ad/k$a;)Lcom/mopub/nativeads/StaticNativeAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/nativeads/StaticNativeAd;->getPrivacyInformationIconClickThroughUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
