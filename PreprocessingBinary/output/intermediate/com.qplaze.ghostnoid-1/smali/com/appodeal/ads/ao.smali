.class public Lcom/appodeal/ads/ao;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/ao$a;,
        Lcom/appodeal/ads/ao$b;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/appodeal/ads/ao;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/appodeal/ads/ao;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/ao;->a:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/ao;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
