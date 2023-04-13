.class Lcom/appodeal/ads/ad$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "native"

    iput-object v0, p0, Lcom/appodeal/ads/ad$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/appodeal/ads/ad$a;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/ad$a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appodeal/ads/ad$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Native;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
