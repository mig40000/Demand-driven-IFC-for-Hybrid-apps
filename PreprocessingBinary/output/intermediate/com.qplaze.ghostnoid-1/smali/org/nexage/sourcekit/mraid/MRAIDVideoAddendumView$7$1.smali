.class Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iput-object p2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$1400(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$1800(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v1, v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$1900(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$1900(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$1900(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v1, v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$2100(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$2002(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v1, v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$2000(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$2200(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Landroid/webkit/WebView;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$2000(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v1, v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$2300(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->val$content:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v1, v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$2000(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$2402(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$2502(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Z)Z

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v1, v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$2400(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    iget-object v2, v2, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$2600(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Landroid/webkit/WebView;Landroid/app/Activity;)V

    return-void
.end method
