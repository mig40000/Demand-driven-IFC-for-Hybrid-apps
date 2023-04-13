.class Lcom/chartboost/sdk/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/h;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/h;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/chartboost/sdk/h$a;->a:Lcom/chartboost/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 763
    const-string v0, "Sdk"

    const-string v1, "######## onActivityCreated callback called"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->a:Lcom/chartboost/sdk/h;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/h;->a(Landroid/app/Activity;)V

    .line 766
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 819
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    .line 820
    const-string v0, "Sdk"

    const-string v1, "######## onActivityDestroyed callback called from developer side"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->a:Lcom/chartboost/sdk/h;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/h;->h(Landroid/app/Activity;)V

    .line 826
    :goto_0
    return-void

    .line 823
    :cond_0
    const-string v0, "Sdk"

    const-string v1, "######## onActivityDestroyed callback called from CBImpressionactivity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->a:Lcom/chartboost/sdk/h;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/h;->i(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 792
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    .line 793
    const-string v0, "Sdk"

    const-string v1, "######## onActivityPaused callback called from developer side"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->a:Lcom/chartboost/sdk/h;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/h;->f(Landroid/app/Activity;)V

    .line 799
    :goto_0
    return-void

    .line 796
    :cond_0
    const-string v0, "Sdk"

    const-string v1, "######## onActivityPaused callback called from CBImpressionactivity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->a:Lcom/chartboost/sdk/h;

    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/j;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/h;->b(Lcom/chartboost/sdk/Libraries/j;)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 781
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    .line 782
    const-string v0, "Sdk"

    const-string v1, "######## onActivityResumed callback called from developer side"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->a:Lcom/chartboost/sdk/h;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/h;->e(Landroid/app/Activity;)V

    .line 788
    :goto_0
    return-void

    .line 785
    :cond_0
    const-string v0, "Sdk"

    const-string v1, "######## onActivityResumed callback called from CBImpressionactivity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->a:Lcom/chartboost/sdk/h;

    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/j;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/h;->a(Lcom/chartboost/sdk/Libraries/j;)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 815
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 770
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    .line 771
    const-string v0, "Sdk"

    const-string v1, "######## onActivityStarted callback called from developer side"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->a:Lcom/chartboost/sdk/h;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/h;->c(Landroid/app/Activity;)V

    .line 777
    :goto_0
    return-void

    .line 774
    :cond_0
    const-string v0, "Sdk"

    const-string v1, "######## onActivityStarted callback called from CBImpressionactivity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->a:Lcom/chartboost/sdk/h;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/h;->d(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 803
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    .line 804
    const-string v0, "Sdk"

    const-string v1, "######## onActivityStopped callback called from developer side"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->a:Lcom/chartboost/sdk/h;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/h;->g(Landroid/app/Activity;)V

    .line 810
    :goto_0
    return-void

    .line 807
    :cond_0
    const-string v0, "Sdk"

    const-string v1, "######## onActivityStopped callback called from CBImpressionactivity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->a:Lcom/chartboost/sdk/h;

    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/j;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/h;->d(Lcom/chartboost/sdk/Libraries/j;)V

    goto :goto_0
.end method
