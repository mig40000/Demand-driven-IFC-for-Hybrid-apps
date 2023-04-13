.class public interface abstract Lcom/cmcm/picks/mixad/IAd;
.super Ljava/lang/Object;
.source "IAd.java"


# static fields
.field public static final TYPE_BOX_GIF:I = 0x2

.field public static final TYPE_BOX_STATIC:I = 0x1

.field public static final TYPE_COMMON_BIG_CARD:I = 0x3

.field public static final TYPE_COMMON_SMALL_CARD:I = 0x4

.field public static final TYPE_SPLASH_GIF:I = 0x6

.field public static final TYPE_SPLASH_STATIC:I = 0x5


# virtual methods
.method public abstract getAdCallToAction()Ljava/lang/String;
.end method

.method public abstract getAdDesc()Ljava/lang/String;
.end method

.method public abstract getAdType()I
.end method

.method public abstract getBackGroundUrl()Ljava/lang/String;
.end method

.method public abstract getGifShowTimes()I
.end method

.method public abstract getImageOrGifUrl()Ljava/lang/String;
.end method

.method public abstract getSource()I
.end method

.method public abstract getSplashAdUrl()Ljava/lang/String;
.end method

.method public abstract getSplashShowtime()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isClickedToday()Z
.end method

.method public abstract isShowedToday()Z
.end method

.method public abstract registerView(Landroid/view/View;)V
.end method

.method public abstract setMixBoxDelegate(Lcom/cmcm/picks/mixad/IMixBoxDelegate;)V
.end method

.method public abstract setMixBoxDownloadListener(Lcom/cmcm/picks/mixad/IMixBoxDownloadListener;)V
.end method

.method public abstract unregisterView()V
.end method
