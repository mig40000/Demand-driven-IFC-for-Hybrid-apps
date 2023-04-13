.class Lcom/appodeal/ads/utils/t$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/utils/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/appodeal/ads/utils/t$b;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>(Landroid/view/View;ILcom/appodeal/ads/utils/t$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/utils/t$a;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/appodeal/ads/utils/t$a;->b:Lcom/appodeal/ads/utils/t$b;

    iput p2, p0, Lcom/appodeal/ads/utils/t$a;->d:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appodeal/ads/utils/t$a;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/appodeal/ads/an;->a(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/appodeal/ads/utils/t$a;->c:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/appodeal/ads/utils/t$a;->c:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/appodeal/ads/utils/t$a;->c:I

    iget v1, p0, Lcom/appodeal/ads/utils/t$a;->d:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/appodeal/ads/utils/t$a;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/appodeal/ads/utils/t;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appodeal/ads/utils/t$a;->b:Lcom/appodeal/ads/utils/t$b;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/appodeal/ads/utils/t$a;->d:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/utils/t$a;->b:Lcom/appodeal/ads/utils/t$b;

    invoke-interface {v0}, Lcom/appodeal/ads/utils/t$b;->b()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/appodeal/ads/utils/t$a;->c:I

    add-int/lit16 v0, v0, 0xfa

    iput v0, p0, Lcom/appodeal/ads/utils/t$a;->c:I

    iget-boolean v0, p0, Lcom/appodeal/ads/utils/t$a;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/t$a;->b:Lcom/appodeal/ads/utils/t$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/utils/t$a;->e:Z

    iget-object v0, p0, Lcom/appodeal/ads/utils/t$a;->b:Lcom/appodeal/ads/utils/t$b;

    invoke-interface {v0}, Lcom/appodeal/ads/utils/t$b;->a()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/appodeal/ads/utils/t;->a()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
