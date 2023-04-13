.class public Lorg/nexage/sourcekit/mraid/rtb/ReportView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nexage/sourcekit/mraid/rtb/ReportView$ComplainedCallback;
    }
.end annotation


# instance fields
.field private adView:Landroid/view/View;

.field complainedCallback:Lorg/nexage/sourcekit/mraid/rtb/ReportView$ComplainedCallback;

.field private rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->adView:Landroid/view/View;

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->init()V

    return-void
.end method

.method static synthetic access$000(Lorg/nexage/sourcekit/mraid/rtb/ReportView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->sendReport(I)V

    return-void
.end method

.method private createButton(I)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    const-string v0, "Inappropriate"

    :goto_0
    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v2, 0x2

    const/high16 v3, 0x41100000    # 9.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lorg/nexage/sourcekit/mraid/rtb/ReportView$2;

    invoke-direct {v0, p0, p1}, Lorg/nexage/sourcekit/mraid/rtb/ReportView$2;-><init>(Lorg/nexage/sourcekit/mraid/rtb/ReportView;I)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->addView(Landroid/view/View;)V

    return-void

    :pswitch_0
    const-string v0, "Irrelevant"

    goto :goto_0

    :pswitch_1
    const-string v0, "Repetitive"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendReport(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->adView:Landroid/view/View;

    invoke-static {v2}, Lcom/appodeal/ads/an;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;->getReportInfo(ILandroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/nexage/sourcekit/mraid/rtb/ReportView$3;

    invoke-direct {v1, p0, v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView$3;-><init>(Lorg/nexage/sourcekit/mraid/rtb/ReportView;Lorg/json/JSONObject;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method init()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lorg/nexage/sourcekit/mraid/rtb/BackButton;

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/nexage/sourcekit/mraid/rtb/BackButton;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/nexage/sourcekit/mraid/rtb/ReportView$1;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView$1;-><init>(Lorg/nexage/sourcekit/mraid/rtb/ReportView;)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/mraid/rtb/BackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->createButton(I)V

    invoke-direct {p0, v2}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->createButton(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->createButton(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public registerCallback(Lorg/nexage/sourcekit/mraid/rtb/ReportView$ComplainedCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->complainedCallback:Lorg/nexage/sourcekit/mraid/rtb/ReportView$ComplainedCallback;

    return-void
.end method

.method public setInfo(Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    return-void
.end method
