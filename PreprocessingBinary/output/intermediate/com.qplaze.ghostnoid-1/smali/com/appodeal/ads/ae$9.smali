.class final Lcom/appodeal/ads/ae$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/ae;->a(ILcom/appodeal/ads/ac;Lcom/appodeal/ads/NativeAd;Lcom/appodeal/ads/t$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/NativeAd;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/NativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/ae$9;->a:Lcom/appodeal/ads/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/Native;->d:Lcom/appodeal/ads/NativeCallbacks;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/Native;->d:Lcom/appodeal/ads/NativeCallbacks;

    iget-object v1, p0, Lcom/appodeal/ads/ae$9;->a:Lcom/appodeal/ads/NativeAd;

    invoke-interface {v0, v1}, Lcom/appodeal/ads/NativeCallbacks;->onNativeClicked(Lcom/appodeal/ads/NativeAd;)V

    :cond_0
    return-void
.end method
