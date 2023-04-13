.class final Lcom/my/target/core/controllers/a$2;
.super Ljava/lang/Object;
.source "NativeAdVideoController.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/controllers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/controllers/a;


# direct methods
.method constructor <init>(Lcom/my/target/core/controllers/a;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    .prologue
    .line 74
    packed-switch p1, :pswitch_data_0

    .line 94
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->c(Lcom/my/target/core/controllers/a;)V

    .line 79
    const-string v0, "Audiofocus loss, pausing"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->d(Lcom/my/target/core/controllers/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "Audiofocus gain, unmuting"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->e(Lcom/my/target/core/controllers/a;)V

    goto :goto_0

    .line 91
    :pswitch_3
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->f(Lcom/my/target/core/controllers/a;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
