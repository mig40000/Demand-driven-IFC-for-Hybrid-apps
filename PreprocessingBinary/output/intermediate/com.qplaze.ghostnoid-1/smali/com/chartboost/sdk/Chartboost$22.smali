.class final Lcom/chartboost/sdk/Chartboost$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/Chartboost$CBFramework;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$22;->a:Lcom/chartboost/sdk/Chartboost$CBFramework;

    iput-object p2, p0, Lcom/chartboost/sdk/Chartboost$22;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$22;->a:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v0, :cond_0

    .line 641
    const-string v0, "Chartboost"

    const-string v1, "Pass a valid CBFramework enum value"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    :goto_0
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$22;->a:Lcom/chartboost/sdk/Chartboost$CBFramework;

    sput-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 646
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$22;->b:Ljava/lang/String;

    sput-object v0, Lcom/chartboost/sdk/i;->e:Ljava/lang/String;

    .line 647
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/chartboost/sdk/Chartboost$22;->a:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/chartboost/sdk/Chartboost$22;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/i;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    const-class v1, Lcom/chartboost/sdk/Chartboost;

    const-string v2, "setFramework Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
