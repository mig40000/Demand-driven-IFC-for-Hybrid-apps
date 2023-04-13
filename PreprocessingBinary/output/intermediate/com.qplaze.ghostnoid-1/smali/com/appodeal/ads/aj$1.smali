.class final Lcom/appodeal/ads/aj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/aj;->a(IILcom/appodeal/ads/ap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/ah;->e:Lcom/appodeal/ads/SkippableVideoCallbacks;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/ah;->e:Lcom/appodeal/ads/SkippableVideoCallbacks;

    invoke-interface {v0}, Lcom/appodeal/ads/SkippableVideoCallbacks;->onSkippableVideoLoaded()V

    :cond_0
    return-void
.end method
