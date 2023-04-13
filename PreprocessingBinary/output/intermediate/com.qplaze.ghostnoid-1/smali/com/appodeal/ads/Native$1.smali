.class final Lcom/appodeal/ads/Native$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/Native;->a(IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/appodeal/ads/ac;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I


# direct methods
.method constructor <init>(ILcom/appodeal/ads/ac;Ljava/lang/String;I)V
    .locals 0

    iput p1, p0, Lcom/appodeal/ads/Native$1;->a:I

    iput-object p2, p0, Lcom/appodeal/ads/Native$1;->b:Lcom/appodeal/ads/ac;

    iput-object p3, p0, Lcom/appodeal/ads/Native$1;->c:Ljava/lang/String;

    iput p4, p0, Lcom/appodeal/ads/Native$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    iget v1, p0, Lcom/appodeal/ads/Native$1;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ag;

    iget-boolean v0, v0, Lcom/appodeal/ads/ag;->t:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/16 v1, 0x200

    iget-object v2, p0, Lcom/appodeal/ads/Native$1;->b:Lcom/appodeal/ads/ac;

    invoke-virtual {v2}, Lcom/appodeal/ads/ac;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appodeal/ads/Native$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/appodeal/ads/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/Native$1;->b:Lcom/appodeal/ads/ac;

    invoke-virtual {v0}, Lcom/appodeal/ads/ac;->f()Lcom/appodeal/ads/af;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget v2, p0, Lcom/appodeal/ads/Native$1;->a:I

    iget v3, p0, Lcom/appodeal/ads/Native$1;->d:I

    sget v4, Lcom/appodeal/ads/Native;->m:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/appodeal/ads/af;->a(Landroid/app/Activity;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/appodeal/ads/Native$1$1;

    invoke-direct {v2, p0}, Lcom/appodeal/ads/Native$1$1;-><init>(Lcom/appodeal/ads/Native$1;)V

    const-wide v4, 0x40bb580000000000L    # 7000.0

    sget v0, Lcom/appodeal/ads/Native;->m:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    sget-object v0, Lcom/appodeal/ads/Native;->A:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v3, Lcom/appodeal/ads/Native$NativeAdType;->Video:Lcom/appodeal/ads/Native$NativeAdType;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x3

    :goto_1
    int-to-long v6, v0

    mul-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    iget v0, p0, Lcom/appodeal/ads/Native$1;->a:I

    iget v1, p0, Lcom/appodeal/ads/Native$1;->d:I

    iget-object v2, p0, Lcom/appodeal/ads/Native$1;->b:Lcom/appodeal/ads/ac;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
