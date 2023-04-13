.class Lcom/appodeal/ads/native_ad/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/native_ad/a;->a(Landroid/app/Activity;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/native_ad/a;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/native_ad/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/a$1;->a:Lcom/appodeal/ads/native_ad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/native_ad/a;->c()Lcom/appodeal/ads/ac;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/a$1;->a:Lcom/appodeal/ads/native_ad/a;

    invoke-static {v0, p1, p2, p3}, Lcom/appodeal/ads/native_ad/a;->a(Lcom/appodeal/ads/native_ad/a;Landroid/app/Activity;II)V

    return-void
.end method
