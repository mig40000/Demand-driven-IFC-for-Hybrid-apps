.class Lcom/cmcm/utils/k$a$1$1;
.super Ljava/lang/Object;
.source "ParseUrlUtils.java"

# interfaces
.implements Lcom/cmcm/utils/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/utils/k$a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/utils/k$a$1;


# direct methods
.method constructor <init>(Lcom/cmcm/utils/k$a$1;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cmcm/utils/k$a$1$1;->a:Lcom/cmcm/utils/k$a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cmcm/utils/k$a$1$1;->a:Lcom/cmcm/utils/k$a$1;

    iget-object v0, v0, Lcom/cmcm/utils/k$a$1;->b:Lcom/cmcm/utils/k$a;

    iget-object v0, v0, Lcom/cmcm/utils/k$a;->d:Lcom/cmcm/utils/k;

    invoke-static {v0, p1}, Lcom/cmcm/utils/k;->a(Lcom/cmcm/utils/k;Ljava/lang/String;)V

    .line 79
    return-void
.end method
