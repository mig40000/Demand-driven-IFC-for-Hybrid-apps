.class Lcom/cmcm/picks/vastvideo/VastView$c;
.super Landroid/telephony/PhoneStateListener;
.source "VastView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/picks/vastvideo/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/vastvideo/VastView;


# direct methods
.method private constructor <init>(Lcom/cmcm/picks/vastvideo/VastView;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastView$c;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$1;)V
    .locals 0

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/VastView$c;-><init>(Lcom/cmcm/picks/vastvideo/VastView;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 612
    packed-switch p1, :pswitch_data_0

    .line 629
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 618
    :pswitch_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$c;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->e(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$c;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->e(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$c;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->j(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$c;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->j(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/vastvideo/e;->a(IZ)V

    goto :goto_0

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$c;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0, v2}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;Z)V

    goto :goto_0

    .line 612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
