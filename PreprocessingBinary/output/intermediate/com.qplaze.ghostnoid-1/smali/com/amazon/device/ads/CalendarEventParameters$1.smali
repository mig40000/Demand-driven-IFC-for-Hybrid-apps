.class final Lcom/amazon/device/ads/CalendarEventParameters$1;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/CalendarEventParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "yyyy-MM-dd\'T\'HH:mmZZZZZ"

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/CalendarEventParameters$1;->add(Ljava/lang/Object;)Z

    const-string v0, "yyyy-MM-dd\'T\'HH:mmZ"

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/CalendarEventParameters$1;->add(Ljava/lang/Object;)Z

    const-string v0, "yyyy-MM-dd\'T\'HH:mm"

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/CalendarEventParameters$1;->add(Ljava/lang/Object;)Z

    const-string v0, "yyyy-MM-dd"

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/CalendarEventParameters$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
