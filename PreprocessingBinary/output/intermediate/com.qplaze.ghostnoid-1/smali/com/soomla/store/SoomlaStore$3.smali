.class Lcom/soomla/store/SoomlaStore$3;
.super Ljava/lang/Object;
.source "SoomlaStore.java"

# interfaces
.implements Lcom/soomla/store/billing/IabCallbacks$IabInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/SoomlaStore;->restoreTransactions(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/SoomlaStore;

.field final synthetic val$followedByRefreshItemsDetails:Z


# direct methods
.method constructor <init>(Lcom/soomla/store/SoomlaStore;Z)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/soomla/store/SoomlaStore$3;->this$0:Lcom/soomla/store/SoomlaStore;

    iput-boolean p2, p0, Lcom/soomla/store/SoomlaStore$3;->val$followedByRefreshItemsDetails:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore$3;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v0, p1}, Lcom/soomla/store/SoomlaStore;->access$400(Lcom/soomla/store/SoomlaStore;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public success(Z)V
    .locals 3
    .param p1, "alreadyInBg"    # Z

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/soomla/store/SoomlaStore$3;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v1}, Lcom/soomla/store/SoomlaStore;->access$000(Lcom/soomla/store/SoomlaStore;)V

    .line 175
    :cond_0
    const-string v1, "SOOMLA SoomlaStore"

    const-string v2, "Setup successful, restoring purchases"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/soomla/store/SoomlaStore$3$1;

    invoke-direct {v0, p0}, Lcom/soomla/store/SoomlaStore$3$1;-><init>(Lcom/soomla/store/SoomlaStore$3;)V

    .line 206
    .local v0, "restorePurchasesListener":Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v1

    new-instance v2, Lcom/soomla/store/events/RestoreTransactionsStartedEvent;

    invoke-direct {v2}, Lcom/soomla/store/events/RestoreTransactionsStartedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 207
    iget-object v1, p0, Lcom/soomla/store/SoomlaStore$3;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v1}, Lcom/soomla/store/SoomlaStore;->access$300(Lcom/soomla/store/SoomlaStore;)Lcom/soomla/store/billing/IIabService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/soomla/store/billing/IIabService;->restorePurchasesAsync(Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;)V

    .line 208
    return-void
.end method
