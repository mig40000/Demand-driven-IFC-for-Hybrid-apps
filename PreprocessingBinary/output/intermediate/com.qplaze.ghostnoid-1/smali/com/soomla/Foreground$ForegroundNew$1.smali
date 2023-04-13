.class Lcom/soomla/Foreground$ForegroundNew$1;
.super Ljava/lang/Object;
.source "Foreground.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/Foreground$ForegroundNew;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/Foreground$ForegroundNew;


# direct methods
.method constructor <init>(Lcom/soomla/Foreground$ForegroundNew;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/soomla/Foreground$ForegroundNew$1;->this$0:Lcom/soomla/Foreground$ForegroundNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/soomla/Foreground$ForegroundNew$1;->this$0:Lcom/soomla/Foreground$ForegroundNew;

    invoke-static {v0}, Lcom/soomla/Foreground$ForegroundNew;->access$100(Lcom/soomla/Foreground$ForegroundNew;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/soomla/Foreground$ForegroundNew$1;->this$0:Lcom/soomla/Foreground$ForegroundNew;

    invoke-static {v0}, Lcom/soomla/Foreground$ForegroundNew;->access$200(Lcom/soomla/Foreground$ForegroundNew;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/soomla/Foreground$ForegroundNew$1;->this$0:Lcom/soomla/Foreground$ForegroundNew;

    iget-boolean v0, v0, Lcom/soomla/Foreground$ForegroundNew;->OutsideOperation:Z

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/soomla/Foreground$ForegroundNew$1;->this$0:Lcom/soomla/Foreground$ForegroundNew;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/soomla/Foreground$ForegroundNew;->access$102(Lcom/soomla/Foreground$ForegroundNew;Z)Z

    .line 130
    sget-object v0, Lcom/soomla/Foreground;->TAG:Ljava/lang/String;

    const-string v1, "went background"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/events/AppToBackgroundEvent;

    invoke-direct {v1}, Lcom/soomla/events/AppToBackgroundEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    sget-object v0, Lcom/soomla/Foreground;->TAG:Ljava/lang/String;

    const-string v1, "still foreground"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
