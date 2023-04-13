.class final Lcom/appodeal/ads/y$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/y;->a(IILcom/appodeal/ads/w;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appodeal/ads/y$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/MrecCallbacks;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/MrecCallbacks;

    iget-boolean v1, p0, Lcom/appodeal/ads/y$1;->a:Z

    invoke-interface {v0, v1}, Lcom/appodeal/ads/MrecCallbacks;->onMrecLoaded(Z)V

    :cond_0
    return-void
.end method
