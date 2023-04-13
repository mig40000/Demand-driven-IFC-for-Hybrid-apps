.class public Lcom/my/target/ads/MyTargetVideoView$BannerInfo;
.super Ljava/lang/Object;
.source "MyTargetVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/MyTargetVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BannerInfo"
.end annotation


# instance fields
.field public final allowClose:Z

.field public final allowCloseDelay:F

.field public ctaText:Ljava/lang/String;

.field public duration:F

.field public final videoHeight:I

.field public final videoWidth:I


# direct methods
.method public constructor <init>(ZFFII)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-boolean p1, p0, Lcom/my/target/ads/MyTargetVideoView$BannerInfo;->allowClose:Z

    .line 308
    iput p2, p0, Lcom/my/target/ads/MyTargetVideoView$BannerInfo;->allowCloseDelay:F

    .line 309
    iput p3, p0, Lcom/my/target/ads/MyTargetVideoView$BannerInfo;->duration:F

    .line 310
    iput p4, p0, Lcom/my/target/ads/MyTargetVideoView$BannerInfo;->videoWidth:I

    .line 311
    iput p5, p0, Lcom/my/target/ads/MyTargetVideoView$BannerInfo;->videoHeight:I

    .line 312
    return-void
.end method
