.class public Lcom/appodeal/ads/networks/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/networks/m$b;,
        Lcom/appodeal/ads/networks/m$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/appodeal/ads/networks/m$a;

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/appodeal/ads/networks/m$a;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/networks/m;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/appodeal/ads/networks/m;->b:Lcom/appodeal/ads/networks/m$a;

    iput p3, p0, Lcom/appodeal/ads/networks/m;->c:I

    iput p4, p0, Lcom/appodeal/ads/networks/m;->d:I

    iput-object p5, p0, Lcom/appodeal/ads/networks/m;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/appodeal/ads/networks/m;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/appodeal/ads/networks/m;->a:Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/m$1;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/m$1;-><init>(Lcom/appodeal/ads/networks/m;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/networks/m;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/m;->g:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic a(Lcom/appodeal/ads/networks/m;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networks/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/appodeal/ads/networks/m;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networks/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/appodeal/ads/networks/m;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networks/m;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/appodeal/ads/networks/m;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networks/m;->g:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic e(Lcom/appodeal/ads/networks/m;)Lcom/appodeal/ads/networks/m$a;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networks/m;->b:Lcom/appodeal/ads/networks/m$a;

    return-object v0
.end method

.method static synthetic f(Lcom/appodeal/ads/networks/m;)I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/networks/m;->c:I

    return v0
.end method

.method static synthetic g(Lcom/appodeal/ads/networks/m;)I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/networks/m;->d:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/networks/m;->a:Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/m$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/appodeal/ads/networks/m$2;-><init>(Lcom/appodeal/ads/networks/m;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
