.class Lcom/appodeal/ads/g/z;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;


# instance fields
.field private final a:Lcom/appodeal/ads/ap;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:J

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/ap;II)V
    .locals 8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/appodeal/ads/g/z;-><init>(Lcom/appodeal/ads/ap;IILjava/lang/String;J)V

    return-void
.end method

.method constructor <init>(Lcom/appodeal/ads/ap;IILjava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/g/z;->a:Lcom/appodeal/ads/ap;

    iput p2, p0, Lcom/appodeal/ads/g/z;->b:I

    iput p3, p0, Lcom/appodeal/ads/g/z;->c:I

    iput-object p4, p0, Lcom/appodeal/ads/g/z;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcom/appodeal/ads/g/z;->e:J

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/g/z;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/g/z;->f:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public vastClick(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/g/z;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/g/z;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appodeal/ads/g/z;->d:Ljava/lang/String;

    iget-wide v2, p0, Lcom/appodeal/ads/g/z;->e:J

    invoke-static {v0, v1, v2, v3}, Lcom/appodeal/ads/utils/n;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "appodeal://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appodeal/ads/g/z;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/g/z;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/g/z;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/g/z;->f:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v0, p2, Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->showProgressBar()V

    :cond_3
    iget v0, p0, Lcom/appodeal/ads/g/z;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/g/z;->a:Lcom/appodeal/ads/ap;

    new-instance v2, Lcom/appodeal/ads/g/z$1;

    invoke-direct {v2, p0, p2}, Lcom/appodeal/ads/g/z$1;-><init>(Lcom/appodeal/ads/g/z;Landroid/app/Activity;)V

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/aj;->a(ILcom/appodeal/ads/ap;Lcom/appodeal/ads/t$a;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/appodeal/ads/g/z;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/g/z;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/aj;->c(ILcom/appodeal/ads/ap;)V

    iput-object p1, p0, Lcom/appodeal/ads/g/z;->f:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public vastComplete()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/g/z;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/g/z;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/aj;->b(ILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public vastDismiss()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/g/z;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/g/z;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/aj;->d(ILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public vastError(I)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/g/z;->b:I

    iget v1, p0, Lcom/appodeal/ads/g/z;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/g/z;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public vastReady()V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/g/z;->b:I

    iget v1, p0, Lcom/appodeal/ads/g/z;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/g/z;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/aj;->a(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public vastShown()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/g/z;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/g/z;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/aj;->a(ILcom/appodeal/ads/ap;)V

    return-void
.end method
