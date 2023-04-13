.class final Lcom/appodeal/ads/y$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/y;->a(ILcom/appodeal/ads/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/appodeal/ads/y$9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/appodeal/ads/y$9;->a:I

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/appodeal/ads/v;->e:I

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/appodeal/ads/v;->s:Lcom/appodeal/ads/v$c;

    sget-object v1, Lcom/appodeal/ads/v$c;->b:Lcom/appodeal/ads/v$c;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/appodeal/ads/v;->s:Lcom/appodeal/ads/v$c;

    sget-object v1, Lcom/appodeal/ads/v$c;->c:Lcom/appodeal/ads/v$c;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/appodeal/ads/v;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    sget-object v1, Lcom/appodeal/ads/v;->w:Lcom/appodeal/ads/f/c;

    invoke-static {v0, v1}, Lcom/appodeal/ads/v;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
