.class Lcom/appodeal/ads/ai$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "video"

    iput-object v0, p0, Lcom/appodeal/ads/ai$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/ai$a;->c:Z

    iput-object p1, p0, Lcom/appodeal/ads/ai$a;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/ai$a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appodeal/ads/ai$a;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/appodeal/ads/ai$a;->c:Z

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ah;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method public b()Lcom/appodeal/ads/ai$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/ai$a;->c:Z

    return-object p0
.end method
