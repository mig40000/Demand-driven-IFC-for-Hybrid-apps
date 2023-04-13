.class public Lcom/chartboost/sdk/impl/bg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bg$a;->a:Landroid/os/Bundle;

    .line 146
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bg$a;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg$a;->a:Landroid/os/Bundle;

    const-string v1, "arg:title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-object p0
.end method

.method public a(Landroid/content/Context;Lcom/chartboost/sdk/impl/bg$b;)Lcom/chartboost/sdk/impl/bg;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Lcom/chartboost/sdk/impl/bg;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg$a;->a:Landroid/os/Bundle;

    invoke-direct {v0, p1, v1, p2}, Lcom/chartboost/sdk/impl/bg;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/chartboost/sdk/impl/bg$b;)V

    .line 182
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bg$a;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg$a;->a:Landroid/os/Bundle;

    const-string v1, "arg:message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bg$a;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg$a;->a:Landroid/os/Bundle;

    const-string v1, "arg:left"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bg$a;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg$a;->a:Landroid/os/Bundle;

    const-string v1, "arg:right"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-object p0
.end method
