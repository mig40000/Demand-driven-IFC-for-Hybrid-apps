.class final Lcom/flurry/sdk/kl$3;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kl;->b(Lcom/flurry/sdk/mb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/mb;

.field final synthetic b:Lcom/flurry/sdk/kl;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kl;Lcom/flurry/sdk/mb;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/flurry/sdk/kl$3;->b:Lcom/flurry/sdk/kl;

    iput-object p2, p0, Lcom/flurry/sdk/kl$3;->a:Lcom/flurry/sdk/mb;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/flurry/sdk/kl$3;->a:Lcom/flurry/sdk/mb;

    invoke-virtual {v0}, Lcom/flurry/sdk/mb;->h()V

    .line 213
    return-void
.end method
