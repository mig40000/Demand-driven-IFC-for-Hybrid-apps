.class Lcom/soomla/store/SoomlaStore$4;
.super Ljava/lang/Object;
.source "SoomlaStore.java"

# interfaces
.implements Lcom/soomla/store/billing/IabCallbacks$IabInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/SoomlaStore;->refreshMarketItemsDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/SoomlaStore;


# direct methods
.method constructor <init>(Lcom/soomla/store/SoomlaStore;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/soomla/store/SoomlaStore$4;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore$4;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v0, p1}, Lcom/soomla/store/SoomlaStore;->access$400(Lcom/soomla/store/SoomlaStore;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public success(Z)V
    .locals 4
    .param p1, "alreadyInBg"    # Z

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 235
    iget-object v2, p0, Lcom/soomla/store/SoomlaStore$4;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v2}, Lcom/soomla/store/SoomlaStore;->access$000(Lcom/soomla/store/SoomlaStore;)V

    .line 237
    :cond_0
    const-string v2, "SOOMLA SoomlaStore"

    const-string v3, "Setup successful, refreshing market items details"

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v0, Lcom/soomla/store/SoomlaStore$4$1;

    invoke-direct {v0, p0}, Lcom/soomla/store/SoomlaStore$4$1;-><init>(Lcom/soomla/store/SoomlaStore$4;)V

    .line 287
    .local v0, "fetchSkusDetailsListener":Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->getAllProductIds()Ljava/util/List;

    move-result-object v1

    .line 288
    .local v1, "purchasableProductIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/soomla/store/SoomlaStore$4;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v2}, Lcom/soomla/store/SoomlaStore;->access$300(Lcom/soomla/store/SoomlaStore;)Lcom/soomla/store/billing/IIabService;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/soomla/store/billing/IIabService;->fetchSkusDetailsAsync(Ljava/util/List;Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;)V

    .line 290
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v2

    new-instance v3, Lcom/soomla/store/events/MarketItemsRefreshStartedEvent;

    invoke-direct {v3}, Lcom/soomla/store/events/MarketItemsRefreshStartedEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 291
    return-void
.end method
