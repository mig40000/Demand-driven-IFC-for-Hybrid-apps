.class final Lcom/appodeal/ads/Native$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/Native;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/Native$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/Native$2;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/appodeal/ads/Native$2;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/appodeal/ads/Native;->u:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/appodeal/ads/Native$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/Native$2;->b:Ljava/lang/Class;

    iget-object v1, p0, Lcom/appodeal/ads/Native$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/appodeal/ads/Native$2;->c:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/Native;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/appodeal/ads/Native;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
