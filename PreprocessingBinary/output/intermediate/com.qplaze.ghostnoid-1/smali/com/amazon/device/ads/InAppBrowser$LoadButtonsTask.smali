.class Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;
.super Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/InAppBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadButtonsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final buttonHeight:I

.field private final buttonWidth:I

.field private final intent:Landroid/content/Intent;

.field private final layout:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/amazon/device/ads/InAppBrowser;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/InAppBrowser;Landroid/content/Intent;Landroid/view/ViewGroup;II)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-direct {p0}, Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;-><init>()V

    iput-object p2, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->layout:Landroid/view/ViewGroup;

    iput p4, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->buttonWidth:I

    iput p5, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->buttonHeight:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10

    const/4 v3, -0x1

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$700(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/Assets;

    move-result-object v1

    const-string v2, "amazon_ads_leftarrow.png"

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    iget v4, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->buttonWidth:I

    iget v5, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->buttonHeight:I

    invoke-static/range {v0 .. v5}, Lcom/amazon/device/ads/InAppBrowser;->access$800(Lcom/amazon/device/ads/InAppBrowser;Ljava/lang/String;IIII)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/amazon/device/ads/InAppBrowser;->access$602(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$600(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "inAppBrowserBackButton"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$600(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x2929

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    iget-object v4, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$700(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/Assets;

    move-result-object v1

    const-string v2, "amazon_ads_rightarrow.png"

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$600(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v7

    iget v8, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->buttonWidth:I

    iget v9, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->buttonHeight:I

    invoke-static/range {v4 .. v9}, Lcom/amazon/device/ads/InAppBrowser;->access$800(Lcom/amazon/device/ads/InAppBrowser;Ljava/lang/String;IIII)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/InAppBrowser;->access$902(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$900(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "inAppBrowserForwardButton"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$900(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x2a2a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    iget-object v7, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$700(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/Assets;

    move-result-object v1

    const-string v2, "amazon_ads_close.png"

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    iget v4, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->buttonWidth:I

    iget v5, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->buttonHeight:I

    invoke-static/range {v0 .. v5}, Lcom/amazon/device/ads/InAppBrowser;->access$800(Lcom/amazon/device/ads/InAppBrowser;Ljava/lang/String;IIII)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/amazon/device/ads/InAppBrowser;->access$1002(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$1000(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "inAppBrowserCloseButton"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$1100(Lcom/amazon/device/ads/InAppBrowser;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    iget-object v4, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$700(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/Assets;

    move-result-object v1

    const-string v2, "amazon_ads_open_external_browser.png"

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$900(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v7

    iget v8, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->buttonWidth:I

    iget v9, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->buttonHeight:I

    invoke-static/range {v4 .. v9}, Lcom/amazon/device/ads/InAppBrowser;->access$800(Lcom/amazon/device/ads/InAppBrowser;Ljava/lang/String;IIII)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/InAppBrowser;->access$1202(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$1200(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "inAppBrowserOpenExternalBrowserButton"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$1200(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x2a2b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    iget-object v4, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$700(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/Assets;

    move-result-object v1

    const-string v2, "amazon_ads_refresh.png"

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$1200(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v7

    iget v8, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->buttonWidth:I

    iget v9, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->buttonHeight:I

    invoke-static/range {v4 .. v9}, Lcom/amazon/device/ads/InAppBrowser;->access$800(Lcom/amazon/device/ads/InAppBrowser;Ljava/lang/String;IIII)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/InAppBrowser;->access$1302(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$1300(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "inAppBrowserRefreshButton"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    iget-object v4, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$700(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/Assets;

    move-result-object v1

    const-string v2, "amazon_ads_refresh.png"

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$900(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v7

    iget v8, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->buttonWidth:I

    iget v9, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->buttonHeight:I

    invoke-static/range {v4 .. v9}, Lcom/amazon/device/ads/InAppBrowser;->access$800(Lcom/amazon/device/ads/InAppBrowser;Ljava/lang/String;IIII)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/InAppBrowser;->access$1302(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$600(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$900(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$1300(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$1000(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$1100(Lcom/amazon/device/ads/InAppBrowser;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$1200(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/InAppBrowser;->access$1400(Lcom/amazon/device/ads/InAppBrowser;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$1500(Lcom/amazon/device/ads/InAppBrowser;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
