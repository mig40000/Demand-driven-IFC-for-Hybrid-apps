.class Lcom/cmcm/picks/mixad/MixBeans$1;
.super Ljava/util/ArrayList;
.source "MixBeans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/mixad/MixBeans;->getCalculatedUrl(I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/picks/mixad/MixBeans;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/mixad/MixBeans;)V
    .locals 1

    .prologue
    .line 193
    iput-object p1, p0, Lcom/cmcm/picks/mixad/MixBeans$1;->this$0:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x438

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/mixad/MixBeans$1;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x2d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/mixad/MixBeans$1;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x21c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/mixad/MixBeans$1;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x1e0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/mixad/MixBeans$1;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x190

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/mixad/MixBeans$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
