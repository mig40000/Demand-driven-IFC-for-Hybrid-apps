.class Lcom/appodeal/ads/native_ad/e$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/native_ad/e$a;-><init>(ILcom/appodeal/ads/ac;Lcom/cmcm/baseapi/ads/INativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/appodeal/ads/ac;

.field final synthetic c:Lcom/appodeal/ads/native_ad/e$a;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/native_ad/e$a;ILcom/appodeal/ads/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/e$a$1;->c:Lcom/appodeal/ads/native_ad/e$a;

    iput p2, p0, Lcom/appodeal/ads/native_ad/e$a$1;->a:I

    iput-object p3, p0, Lcom/appodeal/ads/native_ad/e$a$1;->b:Lcom/appodeal/ads/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/native_ad/e$a$1;->a:I

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/e$a$1;->b:Lcom/appodeal/ads/ac;

    iget-object v2, p0, Lcom/appodeal/ads/native_ad/e$a$1;->c:Lcom/appodeal/ads/native_ad/e$a;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->c(ILcom/appodeal/ads/ac;Lcom/appodeal/ads/NativeAd;)V

    return-void
.end method
