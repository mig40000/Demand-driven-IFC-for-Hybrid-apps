.class public final Lcom/flurry/sdk/ks;
.super Lcom/flurry/sdk/ku;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ks$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestObjectType:",
        "Ljava/lang/Object;",
        "ResponseObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/ku;"
    }
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/ks$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ks$a",
            "<TRequestObjectType;TResponseObjectType;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestObjectType;"
        }
    .end annotation
.end field

.field public c:Lcom/flurry/sdk/lg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/lg",
            "<TRequestObjectType;>;"
        }
    .end annotation
.end field

.field public d:Lcom/flurry/sdk/lg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/lg",
            "<TResponseObjectType;>;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponseObjectType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/flurry/sdk/ku;-><init>()V

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ks;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/flurry/sdk/ks;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ks;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/flurry/sdk/ks;->v:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/ks;)Lcom/flurry/sdk/lg;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/flurry/sdk/ks;->c:Lcom/flurry/sdk/lg;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/ks;)Lcom/flurry/sdk/lg;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/flurry/sdk/ks;->d:Lcom/flurry/sdk/lg;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/ks;)V
    .locals 2

    .prologue
    .line 13
    .line 2082
    iget-object v0, p0, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    if-eqz v0, :cond_0

    .line 2086
    invoke-virtual {p0}, Lcom/flurry/sdk/ks;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    iget-object v1, p0, Lcom/flurry/sdk/ks;->v:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/flurry/sdk/ks$a;->a(Lcom/flurry/sdk/ks;Ljava/lang/Object;)V

    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 46
    .line 1054
    new-instance v0, Lcom/flurry/sdk/ks$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ks$1;-><init>(Lcom/flurry/sdk/ks;)V

    .line 1149
    iput-object v0, p0, Lcom/flurry/sdk/ku;->l:Lcom/flurry/sdk/ku$c;

    .line 49
    invoke-super {p0}, Lcom/flurry/sdk/ku;->a()V

    .line 50
    return-void
.end method
