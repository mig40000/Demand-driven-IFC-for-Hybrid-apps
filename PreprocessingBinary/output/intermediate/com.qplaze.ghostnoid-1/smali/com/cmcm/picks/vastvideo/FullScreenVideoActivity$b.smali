.class Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$b;
.super Landroid/telephony/PhoneStateListener;
.source "FullScreenVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;


# direct methods
.method private constructor <init>(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$b;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$b;-><init>(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 52
    packed-switch p1, :pswitch_data_0

    .line 69
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 58
    :pswitch_1
    invoke-static {}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a()Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$b;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)Lcom/cmcm/picks/vastvideo/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    invoke-static {}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a()Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$b;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)Lcom/cmcm/picks/vastvideo/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/c;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/a;->a(I)V

    .line 63
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$b;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)Lcom/cmcm/picks/vastvideo/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->stop()V

    .line 64
    invoke-static {}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a()Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$b;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-static {v2}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmcm/picks/vastvideo/a;->a(ZIZ)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$b;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->finish()V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
