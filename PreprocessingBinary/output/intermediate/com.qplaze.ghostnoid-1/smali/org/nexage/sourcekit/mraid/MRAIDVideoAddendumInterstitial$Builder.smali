.class public Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private data:Ljava/lang/String;

.field private height:I

.field private listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

.field private nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

.field private preload:Z

.field private rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

.field private skippable:Z

.field private supportedNativeFeatures:[Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->preload:Z

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->skippable:Z

    return-void
.end method


# virtual methods
.method public build()Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;
    .locals 13

    new-instance v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->baseUrl:Ljava/lang/String;

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->data:Ljava/lang/String;

    iget-object v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->supportedNativeFeatures:[Ljava/lang/String;

    iget v5, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->width:I

    iget v6, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->height:I

    iget-object v7, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    iget-object v8, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    iget-object v9, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    iget-boolean v10, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->preload:Z

    iget-boolean v11, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->skippable:Z

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;ZZLorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$1;)V

    return-object v0
.end method

.method public setBaseUrl(Ljava/lang/String;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->data:Ljava/lang/String;

    return-object p0
.end method

.method public setHeight(I)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;
    .locals 0

    iput p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->height:I

    return-object p0
.end method

.method public setListener(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    return-object p0
.end method

.method public setNativeFeatureListener(Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    return-object p0
.end method

.method public setPreload(Z)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->preload:Z

    return-object p0
.end method

.method public setRtbInfo(Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    return-object p0
.end method

.method public setSkippable(Z)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->skippable:Z

    return-object p0
.end method

.method public setSupportedNativeFeatures([Ljava/lang/String;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->supportedNativeFeatures:[Ljava/lang/String;

    return-object p0
.end method

.method public setWidth(I)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;
    .locals 0

    iput p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->width:I

    return-object p0
.end method
