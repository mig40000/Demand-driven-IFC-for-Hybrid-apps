.class public Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;
.super Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;
.source "PicksNativeAdapter.java"

# interfaces
.implements Lcom/cmcm/picks/init/ICallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;
    }
.end annotation


# static fields
.field private static final PICKS_DEFAULT_LOAD_NUM:I = 0xa


# instance fields
.field private isNeedCheckView:Z

.field mContext:Landroid/content/Context;

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadSize:I

.field private mPlacementId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 25
    invoke-direct {p0}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;-><init>()V

    .line 31
    iput v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->mLoadSize:I

    .line 32
    iput-boolean v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->isNeedCheckView:Z

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->isNeedCheckView:Z

    return v0
.end method

.method static synthetic access$100(Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->mPlacementId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAdKeyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "cm"

    return-object v0
.end method

.method public getDefaultCacheTime()J
    .locals 2

    .prologue
    .line 80
    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method public getDefaultLoadNum()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0xa

    return v0
.end method

.method public getReportPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "adTypeName"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "com.cmcm.ad"

    return-object v0
.end method

.method public getReportRes()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public loadNativeAd(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->mExtras:Ljava/util/Map;

    .line 40
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->mExtras:Ljava/util/Map;

    const-string v1, "placementid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->mPlacementId:Ljava/lang/String;

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->mExtras:Ljava/util/Map;

    const-string v1, "load_size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    const/16 v0, 0xa

    move v1, v0

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->mExtras:Ljava/util/Map;

    const-string v2, "cm_check_view"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->isNeedCheckView:Z

    .line 50
    invoke-static {}, Lcom/cmcm/picks/init/PicksMob;->getInstance()Lcom/cmcm/picks/init/a;

    move-result-object v0

    iget-object v2, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->mPlacementId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, p0, v1}, Lcom/cmcm/picks/init/a;->loadad(ILcom/cmcm/picks/init/ICallBack;I)V

    .line 54
    :goto_1
    return-void

    .line 47
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {p0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->onLoadError()V

    goto :goto_1
.end method

.method public onLoadError()V
    .locals 1

    .prologue
    .line 104
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onLoadSuccess(Ljava/util/List;)V
    .locals 5
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 89
    instance-of v3, v0, Lcom/cmcm/picks/loader/Ad;

    if-eqz v3, :cond_0

    .line 90
    new-instance v3, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;

    check-cast v0, Lcom/cmcm/picks/loader/Ad;

    iget-object v4, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v0, v4}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;-><init>(Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;Lcom/cmcm/picks/loader/Ad;Landroid/content/Context;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const-string v0, "cm.fake-fill.invalidad"

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    .line 100
    :goto_1
    return-void

    .line 98
    :cond_2
    invoke-virtual {p0, v1}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->notifyNativeAdLoaded(Ljava/util/List;)V

    goto :goto_1
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
