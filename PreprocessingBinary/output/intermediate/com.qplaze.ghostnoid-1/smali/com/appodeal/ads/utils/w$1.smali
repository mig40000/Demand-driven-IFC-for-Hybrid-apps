.class final Lcom/appodeal/ads/utils/w$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/utils/w;->a(Landroid/view/ViewGroup;Lcom/appodeal/ads/d/h;Lcom/appodeal/ads/utils/w$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/utils/w$a;

.field final synthetic b:Lcom/appodeal/ads/d/h;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/utils/w$a;Lcom/appodeal/ads/d/h;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/utils/w$1;->a:Lcom/appodeal/ads/utils/w$a;

    iput-object p2, p0, Lcom/appodeal/ads/utils/w$1;->b:Lcom/appodeal/ads/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/w$1;->a:Lcom/appodeal/ads/utils/w$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/w$1;->a:Lcom/appodeal/ads/utils/w$a;

    invoke-static {p1}, Lcom/appodeal/ads/utils/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/utils/w$1;->b:Lcom/appodeal/ads/d/h;

    invoke-interface {v0, v1, v2}, Lcom/appodeal/ads/utils/w$a;->a(Ljava/lang/String;Lcom/appodeal/ads/d/h;)V

    :cond_0
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/utils/w$1;->a(Ljava/lang/String;)V

    return-void
.end method
