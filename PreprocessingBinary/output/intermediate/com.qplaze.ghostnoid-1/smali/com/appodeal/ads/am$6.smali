.class final Lcom/appodeal/ads/am$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/am;->d(ILcom/appodeal/ads/ap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/ar;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/am$6;->a:Lcom/appodeal/ads/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/ak;->e:Lcom/appodeal/ads/NonSkippableVideoCallbacks;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/ak;->e:Lcom/appodeal/ads/NonSkippableVideoCallbacks;

    iget-object v1, p0, Lcom/appodeal/ads/am$6;->a:Lcom/appodeal/ads/ar;

    iget-boolean v1, v1, Lcom/appodeal/ads/ar;->i:Z

    invoke-interface {v0, v1}, Lcom/appodeal/ads/NonSkippableVideoCallbacks;->onNonSkippableVideoClosed(Z)V

    :cond_0
    return-void
.end method
