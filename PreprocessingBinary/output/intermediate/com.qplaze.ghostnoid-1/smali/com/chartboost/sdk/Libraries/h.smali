.class public Lcom/chartboost/sdk/Libraries/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public final e:Ljava/io/File;

.field public final f:Ljava/io/File;

.field public final g:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/io/File;

    const-string v1, ".chartboost"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    .line 18
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    sget-object v1, Lcom/chartboost/sdk/Libraries/g$a;->d:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    .line 22
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    sget-object v1, Lcom/chartboost/sdk/Libraries/g$a;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->c:Ljava/io/File;

    .line 23
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    sget-object v1, Lcom/chartboost/sdk/Libraries/g$a;->c:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    .line 24
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    sget-object v1, Lcom/chartboost/sdk/Libraries/g$a;->e:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->e:Ljava/io/File;

    .line 25
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    sget-object v1, Lcom/chartboost/sdk/Libraries/g$a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->f:Ljava/io/File;

    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    sget-object v1, Lcom/chartboost/sdk/Libraries/g$a;->b:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->g:Ljava/io/File;

    .line 27
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 34
    :cond_0
    return-object v0
.end method
