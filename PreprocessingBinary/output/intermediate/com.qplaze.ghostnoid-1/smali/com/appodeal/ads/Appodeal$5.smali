.class final Lcom/appodeal/ads/Appodeal$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/Appodeal;->cache(Landroid/app/Activity;II)V
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

    sget-object v0, Lcom/appodeal/ads/ak;->e:Lcom/appodeal/ads/NonSkippableVideoCallbacks;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/ak;->e:Lcom/appodeal/ads/NonSkippableVideoCallbacks;

    invoke-interface {v0}, Lcom/appodeal/ads/NonSkippableVideoCallbacks;->onNonSkippableVideoLoaded()V

    :cond_0
    return-void
.end method
