.class Lorg/nexage/sourcekit/vast/activity/VASTActivity$15;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nexage/sourcekit/vast/activity/VASTActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$15;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method private handlePopups(Landroid/webkit/JsResult;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    const-string v0, "JS alert"

    invoke-static {v0, p3}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$15;->handlePopups(Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    const-string v0, "JS confirm"

    invoke-static {v0, p3}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$15;->handlePopups(Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    const-string v0, "JS prompt"

    invoke-static {v0, p3}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$15;->handlePopups(Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method
