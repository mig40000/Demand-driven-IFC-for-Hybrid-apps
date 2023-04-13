.class Lcom/appodeal/ads/x$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "banner_mrec"

    iput-object v0, p0, Lcom/appodeal/ads/x$a;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/appodeal/ads/x$a;->c:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/x$a;->d:Z

    iput-object p1, p0, Lcom/appodeal/ads/x$a;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/x$a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appodeal/ads/x$a;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/appodeal/ads/x$a;->c:Z

    iget-boolean v3, p0, Lcom/appodeal/ads/x$a;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/appodeal/ads/v;->a(Landroid/app/Activity;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public b()Lcom/appodeal/ads/x$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/x$a;->c:Z

    return-object p0
.end method

.method public c()Lcom/appodeal/ads/x$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/x$a;->d:Z

    return-object p0
.end method
