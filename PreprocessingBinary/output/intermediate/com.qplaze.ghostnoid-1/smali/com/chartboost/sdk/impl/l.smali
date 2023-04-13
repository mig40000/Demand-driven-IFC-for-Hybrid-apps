.class public Lcom/chartboost/sdk/impl/l;
.super Lcom/chartboost/sdk/impl/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/l$2;,
        Lcom/chartboost/sdk/impl/l$a;,
        Lcom/chartboost/sdk/impl/l$b;
    }
.end annotation


# instance fields
.field protected A:Z

.field protected B:Z

.field protected C:Z

.field protected D:Z

.field protected E:I

.field protected F:Lcom/chartboost/sdk/Libraries/i;

.field protected G:Lcom/chartboost/sdk/Libraries/i;

.field protected H:Lcom/chartboost/sdk/Libraries/i;

.field protected I:Lcom/chartboost/sdk/Libraries/i;

.field protected J:Lcom/chartboost/sdk/Libraries/i;

.field protected K:Lcom/chartboost/sdk/Libraries/i;

.field protected L:Lcom/chartboost/sdk/Libraries/i;

.field protected M:Lcom/chartboost/sdk/Libraries/i;

.field protected N:Z

.field protected O:Z

.field protected P:Z

.field private final Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field protected s:Lcom/chartboost/sdk/impl/l$b;

.field protected t:I

.field protected u:Ljava/lang/String;

.field protected v:Ljava/lang/String;

.field protected w:I

.field protected x:I

.field y:Lorg/json/JSONObject;

.field protected z:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 562
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/k;-><init>(Lcom/chartboost/sdk/Model/a;)V

    .line 40
    sget-object v0, Lcom/chartboost/sdk/impl/l$b;->a:Lcom/chartboost/sdk/impl/l$b;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/l;->Q:Z

    .line 46
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/l;->R:Z

    .line 47
    iput v1, p0, Lcom/chartboost/sdk/impl/l;->w:I

    .line 48
    iput v1, p0, Lcom/chartboost/sdk/impl/l;->x:I

    .line 49
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/l;->S:Z

    .line 50
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/l;->T:Z

    .line 60
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/l;->D:Z

    .line 61
    iput v1, p0, Lcom/chartboost/sdk/impl/l;->E:I

    .line 72
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/l;->N:Z

    .line 74
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/l;->O:Z

    .line 75
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/l;->P:Z

    .line 564
    sget-object v0, Lcom/chartboost/sdk/impl/l$b;->a:Lcom/chartboost/sdk/impl/l$b;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    .line 566
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->F:Lcom/chartboost/sdk/Libraries/i;

    .line 567
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->G:Lcom/chartboost/sdk/Libraries/i;

    .line 568
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->H:Lcom/chartboost/sdk/Libraries/i;

    .line 569
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->I:Lcom/chartboost/sdk/Libraries/i;

    .line 570
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->J:Lcom/chartboost/sdk/Libraries/i;

    .line 571
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->K:Lcom/chartboost/sdk/Libraries/i;

    .line 572
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->L:Lcom/chartboost/sdk/Libraries/i;

    .line 573
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->M:Lcom/chartboost/sdk/Libraries/i;

    .line 575
    iput v1, p0, Lcom/chartboost/sdk/impl/l;->t:I

    .line 576
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 769
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/l;->S:Z

    .line 770
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 656
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/k;->a(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 694
    :cond_0
    :goto_0
    return v0

    .line 659
    :cond_1
    const-string v2, "ux"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    .line 660
    iget-object v2, p0, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 663
    iget-object v2, p0, Lcom/chartboost/sdk/impl/l;->e:Lorg/json/JSONObject;

    const-string v3, "video-landscape"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/chartboost/sdk/impl/l;->e:Lorg/json/JSONObject;

    const-string v3, "replay-landscape"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 664
    :cond_2
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/l;->j:Z

    .line 666
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->F:Lcom/chartboost/sdk/Libraries/i;

    const-string v2, "replay-landscape"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->G:Lcom/chartboost/sdk/Libraries/i;

    const-string v2, "replay-portrait"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->J:Lcom/chartboost/sdk/Libraries/i;

    const-string v2, "video-click-button"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->K:Lcom/chartboost/sdk/Libraries/i;

    const-string v2, "post-video-reward-icon"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->L:Lcom/chartboost/sdk/Libraries/i;

    const-string v2, "post-video-button"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->H:Lcom/chartboost/sdk/Libraries/i;

    const-string v2, "video-confirmation-button"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->I:Lcom/chartboost/sdk/Libraries/i;

    const-string v2, "video-confirmation-icon"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->M:Lcom/chartboost/sdk/Libraries/i;

    const-string v2, "post-video-reward-icon"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    const-string v2, "video-controls-togglable"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/l;->z:Z

    .line 676
    const-string v0, "fullscreen"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/l;->O:Z

    .line 677
    const-string v0, "preroll_popup_fullscreen"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/l;->P:Z

    .line 679
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v2, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v2, :cond_6

    .line 680
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    const-string v2, "confirmation"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 681
    iget-object v2, p0, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    const-string v3, "post-video-toaster"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 683
    if-eqz v2, :cond_4

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "tagline"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 684
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/l;->B:Z

    .line 685
    :cond_4
    if-eqz v0, :cond_5

    const-string v2, "text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "color"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 686
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/l;->A:Z

    .line 687
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    const-string v2, "post-video-reward-toaster"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 688
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/l;->C:Z

    :cond_6
    move v0, v1

    .line 694
    goto/16 :goto_0
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/f$a;
    .locals 2

    .prologue
    .line 621
    new-instance v0, Lcom/chartboost/sdk/impl/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/l$a;-><init>(Lcom/chartboost/sdk/impl/l;Landroid/content/Context;Lcom/chartboost/sdk/impl/l$1;)V

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 714
    invoke-super {p0}, Lcom/chartboost/sdk/impl/k;->d()V

    .line 715
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->F:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 716
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->G:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 717
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->J:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 718
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->K:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 719
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->L:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 720
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->H:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 721
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->I:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 722
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->M:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 723
    iput-object v1, p0, Lcom/chartboost/sdk/impl/l;->F:Lcom/chartboost/sdk/Libraries/i;

    .line 724
    iput-object v1, p0, Lcom/chartboost/sdk/impl/l;->G:Lcom/chartboost/sdk/Libraries/i;

    .line 725
    iput-object v1, p0, Lcom/chartboost/sdk/impl/l;->J:Lcom/chartboost/sdk/Libraries/i;

    .line 726
    iput-object v1, p0, Lcom/chartboost/sdk/impl/l;->K:Lcom/chartboost/sdk/Libraries/i;

    .line 727
    iput-object v1, p0, Lcom/chartboost/sdk/impl/l;->L:Lcom/chartboost/sdk/Libraries/i;

    .line 728
    iput-object v1, p0, Lcom/chartboost/sdk/impl/l;->H:Lcom/chartboost/sdk/Libraries/i;

    .line 729
    iput-object v1, p0, Lcom/chartboost/sdk/impl/l;->I:Lcom/chartboost/sdk/Libraries/i;

    .line 730
    iput-object v1, p0, Lcom/chartboost/sdk/impl/l;->M:Lcom/chartboost/sdk/Libraries/i;

    .line 731
    return-void
.end method

.method public synthetic e()Lcom/chartboost/sdk/f$a;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/l;->A:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->H:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->I:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 702
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/l;->A:Z

    .line 705
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 706
    invoke-super {p0}, Lcom/chartboost/sdk/impl/k;->i()V

    .line 710
    return-void
.end method

.method public j()F
    .locals 1

    .prologue
    .line 783
    iget v0, p0, Lcom/chartboost/sdk/impl/l;->x:I

    int-to-float v0, v0

    return v0
.end method

.method public k()F
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Lcom/chartboost/sdk/impl/l;->w:I

    int-to-float v0, v0

    return v0
.end method

.method public l()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 626
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/l$a;->d(Z)Lcom/chartboost/sdk/impl/bf;

    move-result-object v0

    .line 627
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->getVisibility()I

    move-result v0

    .line 628
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 631
    :cond_0
    :goto_0
    return v2

    .line 630
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l$a;->e()V

    goto :goto_0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 636
    invoke-super {p0}, Lcom/chartboost/sdk/impl/k;->m()V

    .line 637
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    sget-object v1, Lcom/chartboost/sdk/impl/l$b;->b:Lcom/chartboost/sdk/impl/l$b;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/l;->R:Z

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r;->b()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/l;->w:I

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/bb$a;->a(I)V

    .line 639
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r;->e()V

    .line 641
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/l;->R:Z

    .line 643
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 647
    invoke-super {p0}, Lcom/chartboost/sdk/impl/k;->n()V

    .line 648
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    sget-object v1, Lcom/chartboost/sdk/impl/l$b;->b:Lcom/chartboost/sdk/impl/l$b;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/l;->R:Z

    if-nez v0, :cond_0

    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/l;->R:Z

    .line 650
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r;->g()V

    .line 652
    :cond_0
    return-void
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->b:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()V
    .locals 4

    .prologue
    .line 585
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "cancel-popup"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 586
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v2, Lcom/chartboost/sdk/impl/bg$a;

    invoke-direct {v2}, Lcom/chartboost/sdk/impl/bg$a;-><init>()V

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/bg$a;

    .line 587
    if-eqz v1, :cond_0

    .line 588
    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bg$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/bg$a;->b(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v2

    const-string v3, "confirm"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/bg$a;->d(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v2

    const-string v3, "cancel"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/bg$a;->c(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bg$a;

    .line 593
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/l$a;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/chartboost/sdk/impl/l$1;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/impl/l$1;-><init>(Lcom/chartboost/sdk/impl/l;)V

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/bg$a;->a(Landroid/content/Context;Lcom/chartboost/sdk/impl/bg$b;)Lcom/chartboost/sdk/impl/bg;

    .line 617
    return-void
.end method

.method public q()Z
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    sget-object v1, Lcom/chartboost/sdk/impl/l$b;->b:Lcom/chartboost/sdk/impl/l$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Lcom/chartboost/sdk/impl/l$a;
    .locals 1

    .prologue
    .line 739
    invoke-super {p0}, Lcom/chartboost/sdk/impl/k;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/l$a;

    return-object v0
.end method

.method protected s()V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->r()V

    .line 744
    return-void
.end method

.method protected t()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 748
    iget-object v2, p0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    sget-object v3, Lcom/chartboost/sdk/impl/l$b;->c:Lcom/chartboost/sdk/impl/l$b;

    if-ne v2, v3, :cond_1

    .line 761
    :cond_0
    :goto_0
    return v0

    .line 751
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Lcom/chartboost/sdk/Libraries/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/e;->a()Z

    move-result v2

    .line 754
    iget-object v3, p0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    sget-object v4, Lcom/chartboost/sdk/impl/l$b;->a:Lcom/chartboost/sdk/impl/l$b;

    if-ne v3, v4, :cond_3

    .line 755
    iget-boolean v3, p0, Lcom/chartboost/sdk/impl/l;->P:Z

    if-nez v3, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 758
    :cond_3
    iget-object v3, p0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    sget-object v4, Lcom/chartboost/sdk/impl/l$b;->b:Lcom/chartboost/sdk/impl/l$b;

    if-ne v3, v4, :cond_5

    .line 759
    iget-boolean v3, p0, Lcom/chartboost/sdk/impl/l;->O:Z

    if-nez v3, :cond_4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    .line 761
    goto :goto_0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/l;->S:Z

    return v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/l;->T:Z

    return v0
.end method

.method public w()V
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/l;->T:Z

    .line 778
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/l;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 779
    return-void
.end method
