.class Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;
.super Lcom/amazon/device/ads/MetricsCollector$MetricHit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MetricHitStopTime"
.end annotation


# instance fields
.field public final stopTime:J


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MetricsCollector$MetricHit;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;)V

    iput-wide p2, p0, Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;->stopTime:J

    return-void
.end method
