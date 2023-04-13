.class public Lcom/appodeal/ads/ap;
.super Lcom/appodeal/ads/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:I

.field private final g:Lcom/appodeal/ads/aq;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/aq;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/appodeal/ads/c;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/ap;->d:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/ap;->e:Z

    iput v1, p0, Lcom/appodeal/ads/ap;->f:I

    iput-object p1, p0, Lcom/appodeal/ads/ap;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/appodeal/ads/ap;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/ap;->c:[Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/ap;->g:Lcom/appodeal/ads/aq;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/appodeal/ads/ap;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/ap;->e:Z

    iput p1, p0, Lcom/appodeal/ads/ap;->f:I

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/ap;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/ap;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/ap;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/appodeal/ads/ap;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/ap;->d:Z

    return-object p0
.end method

.method public e()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/appodeal/ads/ap;->d:Z

    if-nez v2, :cond_0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "org.apache.http.HttpResponse"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public f()Z
    .locals 2

    iget-boolean v0, p0, Lcom/appodeal/ads/ap;->e:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/appodeal/ads/ap;->f:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lcom/appodeal/ads/aq;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/ap;->g:Lcom/appodeal/ads/aq;

    return-object v0
.end method
