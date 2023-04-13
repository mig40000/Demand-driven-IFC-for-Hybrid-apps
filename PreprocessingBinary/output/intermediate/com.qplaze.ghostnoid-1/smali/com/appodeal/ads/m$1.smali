.class Lcom/appodeal/ads/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/m;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/m;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/m;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/m$1;->a:Lcom/appodeal/ads/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/appodeal/ads/m$1;->a:Lcom/appodeal/ads/m;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/appodeal/ads/m;->a(Lcom/appodeal/ads/m;Ljava/lang/Throwable;Z)V

    iget-object v0, p0, Lcom/appodeal/ads/m$1;->a:Lcom/appodeal/ads/m;

    invoke-static {v0}, Lcom/appodeal/ads/m;->a(Lcom/appodeal/ads/m;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/m$1;->a:Lcom/appodeal/ads/m;

    invoke-static {v0}, Lcom/appodeal/ads/m;->a(Lcom/appodeal/ads/m;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/m$1;->a:Lcom/appodeal/ads/m;

    invoke-static {v0}, Lcom/appodeal/ads/m;->a(Lcom/appodeal/ads/m;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
