.class Lcom/appodeal/ads/i$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Lcom/appodeal/ads/g$b;

.field private d:Z

.field private e:Lcom/appodeal/ads/f/c;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "banner_320"

    iput-object v0, p0, Lcom/appodeal/ads/i$b;->b:Ljava/lang/String;

    sget-object v0, Lcom/appodeal/ads/g$b;->a:Lcom/appodeal/ads/g$b;

    iput-object v0, p0, Lcom/appodeal/ads/i$b;->c:Lcom/appodeal/ads/g$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/i$b;->d:Z

    invoke-static {}, Lcom/appodeal/ads/f/d;->a()Lcom/appodeal/ads/f/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/i$b;->e:Lcom/appodeal/ads/f/c;

    iput-object p1, p0, Lcom/appodeal/ads/i$b;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a(Lcom/appodeal/ads/f/c;)Lcom/appodeal/ads/i$b;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/i$b;->e:Lcom/appodeal/ads/f/c;

    return-object p0
.end method

.method public a(Lcom/appodeal/ads/g$b;)Lcom/appodeal/ads/i$b;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/i$b;->c:Lcom/appodeal/ads/g$b;

    return-object p0
.end method

.method a()Z
    .locals 5

    iget-object v0, p0, Lcom/appodeal/ads/i$b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appodeal/ads/i$b;->e:Lcom/appodeal/ads/f/c;

    iget-object v2, p0, Lcom/appodeal/ads/i$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/appodeal/ads/i$b;->c:Lcom/appodeal/ads/g$b;

    iget-boolean v4, p0, Lcom/appodeal/ads/i$b;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appodeal/ads/g;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;Ljava/lang/String;Lcom/appodeal/ads/g$b;Z)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/appodeal/ads/i$b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/i$b;->d:Z

    return-object p0
.end method
