.class Lcom/appodeal/ads/utils/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/utils/h;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/appodeal/ads/utils/u;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/utils/h;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/utils/h;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/utils/h$2;->a:Lcom/appodeal/ads/utils/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/appodeal/ads/utils/u;Lcom/appodeal/ads/utils/u;)I
    .locals 2

    iget v0, p1, Lcom/appodeal/ads/utils/u;->a:I

    iget v1, p2, Lcom/appodeal/ads/utils/u;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/appodeal/ads/utils/u;

    check-cast p2, Lcom/appodeal/ads/utils/u;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/utils/h$2;->a(Lcom/appodeal/ads/utils/u;Lcom/appodeal/ads/utils/u;)I

    move-result v0

    return v0
.end method
