.class Lcom/cmcm/picks/mixad/IMixBoxAd$1;
.super Ljava/lang/Object;
.source "IMixBoxAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/mixad/IMixBoxAd;->registerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/picks/mixad/IMixBoxAd;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/mixad/IMixBoxAd;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd$1;->this$0:Lcom/cmcm/picks/mixad/IMixBoxAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd$1;->this$0:Lcom/cmcm/picks/mixad/IMixBoxAd;

    invoke-static {v0}, Lcom/cmcm/picks/mixad/IMixBoxAd;->access$000(Lcom/cmcm/picks/mixad/IMixBoxAd;)V

    .line 156
    return-void
.end method
