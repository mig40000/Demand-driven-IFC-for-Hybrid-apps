.class public interface abstract Lcom/cmcm/baseapi/ads/INativeAd;
.super Ljava/lang/Object;
.source "INativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;,
        Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;
    }
.end annotation


# virtual methods
.method public abstract getAdBody()Ljava/lang/String;
.end method

.method public abstract getAdCallToAction()Ljava/lang/String;
.end method

.method public abstract getAdCoverImageUrl()Ljava/lang/String;
.end method

.method public abstract getAdIconUrl()Ljava/lang/String;
.end method

.method public abstract getAdObject()Ljava/lang/Object;
.end method

.method public abstract getAdOnClickListener()Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;
.end method

.method public abstract getAdSocialContext()Ljava/lang/String;
.end method

.method public abstract getAdStarRating()D
.end method

.method public abstract getAdTitle()Ljava/lang/String;
.end method

.method public abstract getAdTypeName()Ljava/lang/String;
.end method

.method public abstract getExtPics()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMpaModule()Lcom/cmcm/picks/loader/MpaModule;
.end method

.method public abstract handleClick()V
.end method

.method public abstract hasExpired()Z
.end method

.method public abstract isDownLoadApp()Ljava/lang/Boolean;
.end method

.method public abstract isNativeAd()Z
.end method

.method public abstract isPriority()Z
.end method

.method public abstract registerViewForInteraction(Landroid/view/View;)Z
.end method

.method public abstract registerViewForInteraction_withExtraReportParams(Landroid/view/View;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setAdOnClickListener(Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;)V
.end method

.method public abstract setImpressionListener(Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;)V
.end method

.method public abstract unregisterView()V
.end method
