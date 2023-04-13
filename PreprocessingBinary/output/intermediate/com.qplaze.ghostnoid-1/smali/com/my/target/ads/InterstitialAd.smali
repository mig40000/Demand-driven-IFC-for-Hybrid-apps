.class public Lcom/my/target/ads/InterstitialAd;
.super Lcom/my/target/core/facades/a;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;
    }
.end annotation


# instance fields
.field private ad:Lcom/my/target/core/facades/c;

.field private adDialog:Lcom/my/target/core/ui/a;

.field private final adListener:Lcom/my/target/core/facades/c$a;

.field private final dialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private hideStatusBarInDialog:Z

.field private listener:Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/my/target/ads/InterstitialAd;-><init>(ILandroid/content/Context;Lcom/my/target/ads/CustomParams;)V

    .line 39
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/my/target/ads/CustomParams;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/my/target/core/facades/a;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/ads/InterstitialAd;->hideStatusBarInDialog:Z

    .line 176
    new-instance v0, Lcom/my/target/ads/InterstitialAd$1;

    invoke-direct {v0, p0}, Lcom/my/target/ads/InterstitialAd$1;-><init>(Lcom/my/target/ads/InterstitialAd;)V

    iput-object v0, p0, Lcom/my/target/ads/InterstitialAd;->adListener:Lcom/my/target/core/facades/c$a;

    .line 223
    new-instance v0, Lcom/my/target/ads/InterstitialAd$2;

    invoke-direct {v0, p0}, Lcom/my/target/ads/InterstitialAd$2;-><init>(Lcom/my/target/ads/InterstitialAd;)V

    iput-object v0, p0, Lcom/my/target/ads/InterstitialAd;->dialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 43
    new-instance v0, Lcom/my/target/core/a;

    const-string v1, "fullscreen"

    invoke-direct {v0, p1, v1}, Lcom/my/target/core/a;-><init>(ILjava/lang/String;)V

    .line 45
    if-eqz p3, :cond_0

    .line 46
    invoke-virtual {v0, p3}, Lcom/my/target/core/a;->a(Lcom/my/target/ads/CustomParams;)V

    .line 48
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/my/target/ads/InterstitialAd;->init(Lcom/my/target/core/a;Landroid/content/Context;)V

    .line 49
    const-string v0, "InterstitialAd created. Version: 4.5.10"

    invoke-static {v0}, Lcom/my/target/Tracer;->i(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->listener:Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/core/ui/a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->adDialog:Lcom/my/target/core/ui/a;

    return-object v0
.end method

.method static synthetic access$102(Lcom/my/target/ads/InterstitialAd;Lcom/my/target/core/ui/a;)Lcom/my/target/core/ui/a;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/my/target/ads/InterstitialAd;->adDialog:Lcom/my/target/core/ui/a;

    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/my/target/ads/InterstitialAd;->dismiss()V

    .line 153
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->ad:Lcom/my/target/core/facades/c;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->ad:Lcom/my/target/core/facades/c;

    invoke-interface {v0, v1}, Lcom/my/target/core/facades/c;->a(Lcom/my/target/core/facades/c$a;)V

    .line 157
    iput-object v1, p0, Lcom/my/target/ads/InterstitialAd;->ad:Lcom/my/target/core/facades/c;

    .line 159
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->adDialog:Lcom/my/target/core/ui/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->dismiss()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.my.target.ACTION_CLOSE_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public dismissDialog()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->adDialog:Lcom/my/target/core/ui/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->dismiss()V

    .line 133
    :cond_0
    return-void
.end method

.method public isHideStatusBarInDialog()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/my/target/ads/InterstitialAd;->hideStatusBarInDialog:Z

    return v0
.end method

.method protected onLoad(Lcom/my/target/core/models/c;)V
    .locals 5

    .prologue
    .line 55
    iget-object v2, p0, Lcom/my/target/ads/InterstitialAd;->context:Landroid/content/Context;

    .line 1024
    invoke-virtual {p1}, Lcom/my/target/core/models/c;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/sections/f;

    .line 1026
    invoke-interface {v0}, Lcom/my/target/core/models/sections/f;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fullscreen"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v0, Lcom/my/target/core/models/sections/c;

    if-eqz v3, :cond_0

    .line 1028
    check-cast v0, Lcom/my/target/core/models/sections/c;

    .line 1029
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/c;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/a;

    .line 1031
    const-string v3, "banner"

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1033
    new-instance v1, Lcom/my/target/core/facades/e;

    check-cast v0, Lcom/my/target/core/models/banners/d;

    invoke-direct {v1, v0, p1, v2}, Lcom/my/target/core/facades/e;-><init>(Lcom/my/target/core/models/banners/d;Lcom/my/target/core/models/c;Landroid/content/Context;)V

    move-object v0, v1

    .line 55
    :goto_0
    iput-object v0, p0, Lcom/my/target/ads/InterstitialAd;->ad:Lcom/my/target/core/facades/c;

    .line 56
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->ad:Lcom/my/target/core/facades/c;

    if-nez v0, :cond_5

    .line 58
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->listener:Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->listener:Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    const-string v1, "No ad"

    invoke-interface {v0, v1, p0}, Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/InterstitialAd;)V

    .line 64
    :cond_2
    :goto_1
    return-void

    .line 1034
    :cond_3
    const-string v3, "promo"

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1036
    new-instance v1, Lcom/my/target/core/facades/f;

    check-cast v0, Lcom/my/target/core/models/banners/e;

    invoke-direct {v1, v0, p1, v2}, Lcom/my/target/core/facades/f;-><init>(Lcom/my/target/core/models/banners/e;Lcom/my/target/core/models/c;Landroid/content/Context;)V

    move-object v0, v1

    goto :goto_0

    .line 1045
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_5
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->ad:Lcom/my/target/core/facades/c;

    iget-object v1, p0, Lcom/my/target/ads/InterstitialAd;->adListener:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, v1}, Lcom/my/target/core/facades/c;->a(Lcom/my/target/core/facades/c$a;)V

    .line 63
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->ad:Lcom/my/target/core/facades/c;

    invoke-interface {v0}, Lcom/my/target/core/facades/c;->load()V

    goto :goto_1
.end method

.method protected onLoadError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->listener:Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->listener:Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/InterstitialAd;)V

    .line 71
    :cond_0
    return-void
.end method

.method public setHideStatusBarInDialog(Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/my/target/ads/InterstitialAd;->hideStatusBarInDialog:Z

    .line 148
    return-void
.end method

.method public setListener(Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/my/target/ads/InterstitialAd;->listener:Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    .line 138
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->ad:Lcom/my/target/core/facades/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->ad:Lcom/my/target/core/facades/c;

    invoke-interface {v0}, Lcom/my/target/core/facades/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    const-string v0, "InterstitialAd.show: No ad"

    invoke-static {v0}, Lcom/my/target/Tracer;->i(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->ad:Lcom/my/target/core/facades/c;

    sput-object v0, Lcom/my/target/ads/MyTargetActivity;->ad:Lcom/my/target/core/facades/g;

    .line 83
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/my/target/ads/InterstitialAd;->context:Landroid/content/Context;

    const-class v2, Lcom/my/target/ads/MyTargetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const-string v1, "com.my.target.actions.interstitial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/my/target/ads/InterstitialAd;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public showDialog()V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->adDialog:Lcom/my/target/core/ui/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const-string v0, "InterstitialAd.showDialog: dialog already showing"

    invoke-static {v0}, Lcom/my/target/Tracer;->i(Ljava/lang/String;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->ad:Lcom/my/target/core/facades/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->ad:Lcom/my/target/core/facades/c;

    invoke-interface {v0}, Lcom/my/target/core/facades/c;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    :cond_2
    const-string v0, "InterstitialAd.showDialog: No ad"

    invoke-static {v0}, Lcom/my/target/Tracer;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_3
    new-instance v0, Lcom/my/target/core/ui/a;

    iget-object v1, p0, Lcom/my/target/ads/InterstitialAd;->ad:Lcom/my/target/core/facades/c;

    iget-boolean v2, p0, Lcom/my/target/ads/InterstitialAd;->hideStatusBarInDialog:Z

    iget-object v3, p0, Lcom/my/target/ads/InterstitialAd;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/my/target/core/ui/a;-><init>(Lcom/my/target/core/facades/g;ZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/ads/InterstitialAd;->adDialog:Lcom/my/target/core/ui/a;

    .line 105
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->adDialog:Lcom/my/target/core/ui/a;

    iget-object v1, p0, Lcom/my/target/ads/InterstitialAd;->dialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 106
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->show()V

    .line 108
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->ad:Lcom/my/target/core/facades/c;

    instance-of v0, v0, Lcom/my/target/core/facades/f;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 111
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 112
    iget-object v1, p0, Lcom/my/target/ads/InterstitialAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v1}, Lcom/my/target/core/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 113
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method
