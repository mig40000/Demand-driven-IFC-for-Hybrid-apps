.class final Lcom/appodeal/ads/y$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/y;->a(Z)V
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
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/v;->s:Lcom/appodeal/ads/v$c;

    sget-object v1, Lcom/appodeal/ads/v$c;->b:Lcom/appodeal/ads/v$c;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/appodeal/ads/v;->s:Lcom/appodeal/ads/v$c;

    sget-object v1, Lcom/appodeal/ads/v$c;->c:Lcom/appodeal/ads/v$c;

    if-ne v0, v1, :cond_3

    :cond_0
    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/appodeal/ads/v;->b(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/appodeal/ads/f/g;->a()Lcom/appodeal/ads/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f;->b()Lcom/appodeal/ads/f/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f$a;->k()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    sget v0, Lcom/appodeal/ads/v;->n:I

    int-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/appodeal/ads/v;->n:I

    :goto_1
    sget v0, Lcom/appodeal/ads/v;->n:I

    if-lt v0, v4, :cond_2

    const v0, 0x186a0

    sput v0, Lcom/appodeal/ads/v;->n:I

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/appodeal/ads/x$a;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/x$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/x$a;->b()Lcom/appodeal/ads/x$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/x$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    :try_start_1
    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/appodeal/ads/v;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_5
    sget v0, Lcom/appodeal/ads/v;->n:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/appodeal/ads/v;->n:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
