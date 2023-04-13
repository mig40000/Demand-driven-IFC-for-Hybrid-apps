.class public Lcom/cmcm/picks/loader/c;
.super Ljava/lang/Object;
.source "BaseRequestBuilder.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lcom/cmcm/picks/loader/g;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/picks/loader/c;->a:Ljava/lang/String;

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmcm/picks/loader/c;->b:I

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/picks/loader/c;->c:Ljava/util/List;

    .line 15
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/loader/c;->a(I)Lcom/cmcm/picks/loader/c;

    .line 16
    return-void
.end method


# virtual methods
.method public a(I)Lcom/cmcm/picks/loader/c;
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cmcm/picks/loader/c;->c:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "v"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-object p0
.end method
