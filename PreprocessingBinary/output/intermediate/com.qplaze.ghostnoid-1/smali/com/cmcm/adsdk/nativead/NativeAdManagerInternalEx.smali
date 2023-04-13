.class public Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;
.super Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;
.source "NativeAdManagerInternalEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;
    }
.end annotation


# instance fields
.field private mBreakRequest:Z

.field private mCacheAdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posId"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mBreakRequest:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mCacheAdList:Ljava/util/List;

    .line 33
    return-void
.end method

.method private preloadNativeAdImage(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;)Z
    .locals 4
    .param p1, "imageINativeAd"    # Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;

    .prologue
    const/4 v0, 0x0

    .line 136
    if-nez p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    invoke-virtual {p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->getAdObject()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdCoverImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    const-string v1, "CMCMADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preload image ad title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->getAdObject()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v3

    invoke-interface {v3}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ad type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->getAdObject()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v3

    invoke-interface {v3}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManagerFactory;->getImageDownloadListener()Lcom/cmcm/adsdk/ImageDownloadListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManagerFactory;->getImageDownloadListener()Lcom/cmcm/adsdk/ImageDownloadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->getAdObject()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdIconUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cmcm/adsdk/ImageDownloadListener;->getBitmap(Ljava/lang/String;Lcom/cmcm/adsdk/BitmapListener;)V

    .line 146
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManagerFactory;->getImageDownloadListener()Lcom/cmcm/adsdk/ImageDownloadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->getAdObject()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdCoverImageUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$1;

    invoke-direct {v2, p0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$1;-><init>(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;)V

    invoke-interface {v0, v1, v2}, Lcom/cmcm/adsdk/ImageDownloadListener;->getBitmap(Ljava/lang/String;Lcom/cmcm/adsdk/BitmapListener;)V

    .line 158
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeExpiredAd()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mCacheAdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mCacheAdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 53
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;

    .line 55
    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->getAdObject()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->getAdObject()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->hasExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method


# virtual methods
.method public getAd()Lcom/cmcm/baseapi/ads/INativeAd;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->getAd(Z)Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    return-object v0
.end method

.method public getAd(Z)Lcom/cmcm/baseapi/ads/INativeAd;
    .locals 4
    .param p1, "forceImage"    # Z

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->removeExpiredAd()V

    .line 102
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mCacheAdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 120
    :goto_0
    return-object v0

    .line 105
    :cond_0
    if-eqz p1, :cond_2

    .line 106
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mCacheAdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 107
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;

    .line 109
    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->hasCacheImage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 111
    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->getAdObject()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_1
    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->preloadNativeAdImage(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;)Z

    goto :goto_1

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mCacheAdList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->getAdObject()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 120
    goto :goto_0
.end method

.method public hasHighPriorityAd()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mCacheAdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mConfigBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 70
    :goto_0
    return v0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mCacheAdList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->getAdObject()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTypeName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mConfigBeans:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/PosBean;

    iget-object v0, v0, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const-string v0, "CMCMADSDK"

    const-string v1, "has high ad ,break load new ad"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 70
    goto :goto_0
.end method

.method public loadAd()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->removeExpiredAd()V

    .line 40
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mIsPreload:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->hasHighPriorityAd()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mIsPreload:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mCacheAdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    :cond_1
    invoke-super {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdLoaded()V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mBreakRequest:Z

    .line 45
    invoke-super {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->loadAd()V

    goto :goto_0
.end method

.method protected notifyAdLoaded()V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->getAd()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    new-instance v1, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->getAdTypeNameIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;-><init>(Lcom/cmcm/baseapi/ads/INativeAd;I)V

    .line 128
    invoke-direct {p0, v1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->preloadNativeAdImage(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;)Z

    .line 129
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mCacheAdList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mCacheAdList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 132
    :cond_0
    invoke-super {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdLoaded()V

    .line 133
    return-void
.end method

.method protected requestBean(Lcom/cmcm/adsdk/config/PosBean;)Z
    .locals 3
    .param p1, "bean"    # Lcom/cmcm/adsdk/config/PosBean;

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mBreakRequest:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 92
    :goto_0
    return v0

    .line 80
    :cond_0
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mIsPreload:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mCacheAdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mCacheAdList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->getAdObject()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTypeName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "CMCMADSDK"

    const-string v2, "this ad type has cache ad, beak requestBean"

    invoke-static {v0, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->mBreakRequest:Z

    .line 86
    invoke-super {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdLoaded()V

    move v0, v1

    .line 87
    goto :goto_0

    .line 89
    :cond_1
    invoke-super {p0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->requestBean(Lcom/cmcm/adsdk/config/PosBean;)Z

    move-result v0

    goto :goto_0

    .line 92
    :cond_2
    invoke-super {p0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->requestBean(Lcom/cmcm/adsdk/config/PosBean;)Z

    move-result v0

    goto :goto_0
.end method
