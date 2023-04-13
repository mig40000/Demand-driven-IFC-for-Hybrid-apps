.class final Lcom/appodeal/ads/q$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const v4, 0x186a0

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    invoke-virtual {v0}, Lcom/appodeal/ads/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/appodeal/ads/n;->b(Landroid/app/Activity;)V

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/f/g;->a()Lcom/appodeal/ads/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f;->b()Lcom/appodeal/ads/f/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f$a;->i()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    sget v0, Lcom/appodeal/ads/n;->o:I

    int-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/appodeal/ads/n;->o:I

    :goto_0
    sget v0, Lcom/appodeal/ads/n;->o:I

    if-lt v0, v4, :cond_1

    const v0, 0x186a0

    sput v0, Lcom/appodeal/ads/n;->o:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget v0, Lcom/appodeal/ads/n;->o:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/appodeal/ads/n;->o:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/appodeal/ads/q;->a(Z)V

    goto :goto_1
.end method
