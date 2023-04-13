.class Lcom/chartboost/sdk/impl/am$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Libraries/i$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/chartboost/sdk/impl/am$b;

.field e:Ljava/lang/String;

.field final f:Landroid/os/Bundle;

.field final synthetic g:Lcom/chartboost/sdk/impl/am;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/am;Landroid/widget/ImageView;Lcom/chartboost/sdk/impl/am$b;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lcom/chartboost/sdk/impl/am$b;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Libraries/i$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Lcom/chartboost/sdk/impl/am$a;->g:Lcom/chartboost/sdk/impl/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p7, p0, Lcom/chartboost/sdk/impl/am$a;->a:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/am$a;->c:Ljava/lang/ref/WeakReference;

    .line 116
    new-instance v0, Lcom/chartboost/sdk/impl/am$c;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/am$c;-><init>(Lcom/chartboost/sdk/impl/am$a;)V

    .line 117
    if-eqz p2, :cond_0

    .line 118
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_0
    iput-object p4, p0, Lcom/chartboost/sdk/impl/am$a;->e:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/chartboost/sdk/impl/am$a;->d:Lcom/chartboost/sdk/impl/am$b;

    .line 121
    iput-object p5, p0, Lcom/chartboost/sdk/impl/am$a;->f:Landroid/os/Bundle;

    .line 122
    iput-object p6, p0, Lcom/chartboost/sdk/impl/am$a;->b:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am$a;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/am$a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/i$a;

    .line 209
    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/chartboost/sdk/impl/am$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 211
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/chartboost/sdk/impl/am;->a(Landroid/widget/ImageView;)Lcom/chartboost/sdk/impl/am$a;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i$a;->b()V

    .line 217
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/chartboost/sdk/impl/am$a$3;

    invoke-direct {v2, p0, v0}, Lcom/chartboost/sdk/impl/am$a$3;-><init>(Lcom/chartboost/sdk/impl/am$a;Lcom/chartboost/sdk/Libraries/i$a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am$a;->g:Lcom/chartboost/sdk/impl/am;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/am$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/am;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/am$a;->a()V

    .line 202
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v4, Lcom/chartboost/sdk/impl/am$a$1;

    invoke-direct {v4, p0}, Lcom/chartboost/sdk/impl/am$a$1;-><init>(Lcom/chartboost/sdk/impl/am$a;)V

    .line 146
    const-string v0, "CBWebImageCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloading image to cache... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/am$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/chartboost/sdk/impl/am$a$2;

    sget-object v2, Lcom/chartboost/sdk/impl/ac$a;->a:Lcom/chartboost/sdk/impl/ac$a;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/am$a;->b:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/am$a$2;-><init>(Lcom/chartboost/sdk/impl/am$a;Lcom/chartboost/sdk/impl/ac$a;Ljava/lang/String;Lcom/chartboost/sdk/impl/ab;Ljava/io/File;)V

    .line 198
    iget-object v1, p0, Lcom/chartboost/sdk/impl/am$a;->g:Lcom/chartboost/sdk/impl/am;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/am;->a:Lcom/chartboost/sdk/impl/af;

    invoke-interface {v1, v0}, Lcom/chartboost/sdk/impl/af;->a(Lcom/chartboost/sdk/impl/ac;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
