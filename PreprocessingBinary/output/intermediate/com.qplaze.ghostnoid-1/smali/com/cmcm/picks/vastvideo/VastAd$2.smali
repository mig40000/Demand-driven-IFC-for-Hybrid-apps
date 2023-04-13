.class Lcom/cmcm/picks/vastvideo/VastAd$2;
.super Ljava/lang/Object;
.source "VastAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/vastvideo/VastAd;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/vastvideo/VastAd;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/vastvideo/VastAd;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastAd$2;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd$2;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastAd;->b(Lcom/cmcm/picks/vastvideo/VastAd;)V

    .line 198
    return-void
.end method
