.class final Lcom/cmcm/utils/d$2;
.super Ljava/lang/Object;
.source "DownloadCheckDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/utils/d;->a(Landroid/content/Context;Lcom/cmcm/utils/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/cmcm/utils/d$a;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Lcom/cmcm/utils/d$a;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cmcm/utils/d$2;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/cmcm/utils/d$2;->b:Lcom/cmcm/utils/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cmcm/utils/d$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 49
    iget-object v0, p0, Lcom/cmcm/utils/d$2;->b:Lcom/cmcm/utils/d$a;

    invoke-interface {v0}, Lcom/cmcm/utils/d$a;->handleDownload()V

    .line 50
    return-void
.end method
