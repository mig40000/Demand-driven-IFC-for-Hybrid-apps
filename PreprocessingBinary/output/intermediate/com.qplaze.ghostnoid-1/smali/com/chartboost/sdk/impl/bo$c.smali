.class public Lcom/chartboost/sdk/impl/bo$c;
.super Lcom/chartboost/sdk/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public c:Lcom/chartboost/sdk/impl/bn;

.field public d:Lcom/chartboost/sdk/impl/bm;

.field public e:Landroid/widget/RelativeLayout;

.field public f:Landroid/widget/RelativeLayout;

.field final synthetic g:Lcom/chartboost/sdk/impl/bo;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/bo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 69
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bo$c;->g:Lcom/chartboost/sdk/impl/bo;

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/f$a;-><init>(Lcom/chartboost/sdk/f;Landroid/content/Context;)V

    .line 71
    invoke-virtual {p0, v10}, Lcom/chartboost/sdk/impl/bo$c;->setFocusable(Z)V

    .line 72
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v6

    .line 73
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bo$c;->e:Landroid/widget/RelativeLayout;

    .line 74
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bo$c;->f:Landroid/widget/RelativeLayout;

    .line 75
    new-instance v0, Lcom/chartboost/sdk/impl/bn;

    invoke-direct {v0, p2}, Lcom/chartboost/sdk/impl/bn;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/bn;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    .line 76
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    new-instance v1, Lcom/chartboost/sdk/impl/bo$a;

    invoke-direct {v1, p1, v3}, Lcom/chartboost/sdk/impl/bo$a;-><init>(Lcom/chartboost/sdk/impl/bo;Lcom/chartboost/sdk/impl/bo$1;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bn;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 77
    new-instance v0, Lcom/chartboost/sdk/impl/bm;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo$c;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bo$c;->f:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bm;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/chartboost/sdk/impl/bn;Lcom/chartboost/sdk/impl/bo;)V

    invoke-virtual {v6, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/bm;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bo$c;->d:Lcom/chartboost/sdk/impl/bm;

    .line 78
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo$c;->d:Lcom/chartboost/sdk/impl/bm;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bn;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 79
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bn;->setWebContentsDebuggingEnabled(Z)V

    .line 82
    :cond_0
    iget-object v4, p0, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    iget-object v5, p1, Lcom/chartboost/sdk/impl/bo;->n:Ljava/lang/String;

    const-string v7, "text/html"

    const-string v8, "utf-8"

    move-object v6, p3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/chartboost/sdk/impl/bn;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$c;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bn;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 86
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 88
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo$c;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bn;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    invoke-virtual {v1, v10}, Lcom/chartboost/sdk/impl/bn;->setBackgroundColor(I)V

    .line 94
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo$c;->f:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo$c;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$c;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/bo$c;->addView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$c;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/bo$c;->addView(Landroid/view/View;)V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/chartboost/sdk/impl/bo;->p:J

    .line 100
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/impl/bo$c$1;

    invoke-direct {v1, p0, p1}, Lcom/chartboost/sdk/impl/bo$c$1;-><init>(Lcom/chartboost/sdk/impl/bo$c;Lcom/chartboost/sdk/impl/bo;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method
