.class Lorg/nexage/sourcekit/mraid/MRAIDView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/mraid/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/nexage/sourcekit/mraid/MRAIDViewListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;ZIILorg/nexage/sourcekit/mraid/rtb/RtbInfo;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$2;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$2;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$300(Lorg/nexage/sourcekit/mraid/MRAIDView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$2;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$400(Lorg/nexage/sourcekit/mraid/MRAIDView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$2;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-virtual {v1, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Ad was complained before"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
