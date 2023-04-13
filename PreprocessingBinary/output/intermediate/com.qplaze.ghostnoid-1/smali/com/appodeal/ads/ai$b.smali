.class Lcom/appodeal/ads/ai$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Lcom/appodeal/ads/f/c;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "video"

    iput-object v0, p0, Lcom/appodeal/ads/ai$b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/appodeal/ads/f/d;->a()Lcom/appodeal/ads/f/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/ai$b;->c:Lcom/appodeal/ads/f/c;

    iput-object p1, p0, Lcom/appodeal/ads/ai$b;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a(Lcom/appodeal/ads/f/c;)Lcom/appodeal/ads/ai$b;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/ai$b;->c:Lcom/appodeal/ads/f/c;

    return-object p0
.end method

.method a()Z
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/ai$b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appodeal/ads/ai$b;->c:Lcom/appodeal/ads/f/c;

    iget-object v2, p0, Lcom/appodeal/ads/ai$b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ah;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
