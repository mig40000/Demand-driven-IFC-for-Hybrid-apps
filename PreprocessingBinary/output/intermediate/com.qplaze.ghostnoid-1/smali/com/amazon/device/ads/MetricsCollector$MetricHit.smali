.class Lcom/amazon/device/ads/MetricsCollector$MetricHit;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MetricHit"
.end annotation


# instance fields
.field public final metric:Lcom/amazon/device/ads/Metrics$MetricType;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/ads/MetricsCollector$MetricHit;->metric:Lcom/amazon/device/ads/Metrics$MetricType;

    return-void
.end method
