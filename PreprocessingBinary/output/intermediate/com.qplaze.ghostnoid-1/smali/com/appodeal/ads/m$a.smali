.class Lcom/appodeal/ads/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/appodeal/ads/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appodeal/ads/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appodeal/ads/m;-><init>(Lcom/appodeal/ads/m$1;)V

    sput-object v0, Lcom/appodeal/ads/m$a;->a:Lcom/appodeal/ads/m;

    return-void
.end method
