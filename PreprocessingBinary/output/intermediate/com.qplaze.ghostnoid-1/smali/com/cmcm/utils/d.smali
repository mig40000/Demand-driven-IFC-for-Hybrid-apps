.class public Lcom/cmcm/utils/d;
.super Ljava/lang/Object;
.source "DownloadCheckDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/utils/d$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/cmcm/utils/d$a;)V
    .locals 4

    .prologue
    .line 24
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-static {p0}, Lcom/cmcm/utils/i;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 30
    sget v1, Lcom/cmcm/adsdk/R$layout;->gps_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 31
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 35
    sget v0, Lcom/cmcm/adsdk/R$id;->tv_cancel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    new-instance v3, Lcom/cmcm/utils/d$1;

    invoke-direct {v3, v2, p1}, Lcom/cmcm/utils/d$1;-><init>(Landroid/app/Dialog;Lcom/cmcm/utils/d$a;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    sget v0, Lcom/cmcm/adsdk/R$id;->tv_download:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    new-instance v3, Lcom/cmcm/utils/d$2;

    invoke-direct {v3, v2, p1}, Lcom/cmcm/utils/d$2;-><init>(Landroid/app/Dialog;Lcom/cmcm/utils/d$a;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-static {}, Lcom/cmcm/utils/Commons;->isMiui()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x7d5

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 57
    :goto_1
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 58
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x7d3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    .line 60
    :cond_3
    invoke-interface {p1}, Lcom/cmcm/utils/d$a;->handleDownload()V

    goto :goto_0
.end method
