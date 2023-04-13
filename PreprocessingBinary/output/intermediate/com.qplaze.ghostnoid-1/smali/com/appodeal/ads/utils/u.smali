.class public Lcom/appodeal/ads/utils/u;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:D

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/appodeal/ads/utils/u;->a:I

    iput-object p2, p0, Lcom/appodeal/ads/utils/u;->b:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/utils/u;->c:I

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/appodeal/ads/utils/u;->d:D

    iput-boolean p5, p0, Lcom/appodeal/ads/utils/u;->e:Z

    iput-boolean p6, p0, Lcom/appodeal/ads/utils/u;->f:Z

    return-void
.end method
