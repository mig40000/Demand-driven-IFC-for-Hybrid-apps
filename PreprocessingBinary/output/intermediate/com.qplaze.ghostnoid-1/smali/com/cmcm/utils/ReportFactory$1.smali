.class final Lcom/cmcm/utils/ReportFactory$1;
.super Ljava/lang/Object;
.source "ReportFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/utils/ReportFactory;->report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmcm/picks/loader/Ad;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cmcm/utils/ReportFactory$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cmcm/utils/ReportFactory$1;->b:Lcom/cmcm/picks/loader/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lcom/cmcm/picks/loader/i;->a()Lcom/cmcm/picks/loader/i;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/utils/ReportFactory$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcm/utils/ReportFactory$1;->b:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/loader/i;->a(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;)V

    .line 67
    return-void
.end method
