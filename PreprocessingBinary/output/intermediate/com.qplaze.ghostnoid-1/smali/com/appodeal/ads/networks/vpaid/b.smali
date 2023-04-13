.class public Lcom/appodeal/ads/networks/vpaid/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/networks/vpaid/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/nexage/sourcekit/vast/model/VASTModel;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/appodeal/ads/networks/vpaid/b;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Lorg/nexage/sourcekit/util/DefaultMediaPicker;

    sget-object v2, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lorg/nexage/sourcekit/util/DefaultMediaPicker;-><init>(Landroid/content/Context;)V

    new-instance v2, Lorg/nexage/sourcekit/vast/processor/VASTProcessor;

    invoke-direct {v2, v1}, Lorg/nexage/sourcekit/vast/processor/VASTProcessor;-><init>(Lorg/nexage/sourcekit/vast/processor/VASTMediaPicker;)V

    iget-object v1, p0, Lcom/appodeal/ads/networks/vpaid/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/nexage/sourcekit/vast/processor/VASTProcessor;->process(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lorg/nexage/sourcekit/vast/processor/VASTProcessor;->getModel()Lorg/nexage/sourcekit/vast/model/VASTModel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getPickedMediaFileType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/javascript"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/16 v2, 0x193

    invoke-virtual {v1, v2}, Lorg/nexage/sourcekit/vast/model/VASTModel;->sendError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
