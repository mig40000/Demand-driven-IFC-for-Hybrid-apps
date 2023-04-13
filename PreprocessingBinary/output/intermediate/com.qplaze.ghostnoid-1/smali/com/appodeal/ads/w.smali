.class public Lcom/appodeal/ads/w;
.super Lcom/appodeal/ads/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:I

.field private final f:Lcom/appodeal/ads/z;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/appodeal/ads/z;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/appodeal/ads/c;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/w;->c:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/w;->d:Z

    iput v1, p0, Lcom/appodeal/ads/w;->e:I

    iput-object p1, p0, Lcom/appodeal/ads/w;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/appodeal/ads/w;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/w;->f:Lcom/appodeal/ads/z;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/appodeal/ads/w;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/w;->c:Z

    return-object p0
.end method

.method public d()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/appodeal/ads/w;->c:Z

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

.method public e()Z
    .locals 2

    iget-boolean v0, p0, Lcom/appodeal/ads/w;->d:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/appodeal/ads/w;->e:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/appodeal/ads/z;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/w;->f:Lcom/appodeal/ads/z;

    return-object v0
.end method
