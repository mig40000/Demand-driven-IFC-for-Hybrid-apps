.class public Lcom/appodeal/ads/networks/a$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/networks/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field final b:Lcom/appodeal/ads/networks/a$a;

.field final c:I

.field final d:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;IILcom/appodeal/ads/networks/a$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/networks/a$b;->a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/appodeal/ads/networks/a$b;->b:Lcom/appodeal/ads/networks/a$a;

    iput p2, p0, Lcom/appodeal/ads/networks/a$b;->c:I

    iput p3, p0, Lcom/appodeal/ads/networks/a$b;->d:I

    new-instance v0, Lcom/appodeal/ads/networks/a$b$1;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/networks/a$b$1;-><init>(Lcom/appodeal/ads/networks/a$b;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/networks/a$b;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/a$b;->b:Lcom/appodeal/ads/networks/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/networks/a$b;->b:Lcom/appodeal/ads/networks/a$a;

    iget-object v1, p0, Lcom/appodeal/ads/networks/a$b;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/appodeal/ads/networks/a$b;->c:I

    iget v3, p0, Lcom/appodeal/ads/networks/a$b;->d:I

    invoke-interface {v0, v1, v2, v3}, Lcom/appodeal/ads/networks/a$a;->a(Landroid/app/Activity;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/networks/a$b;->b:Lcom/appodeal/ads/networks/a$a;

    iget v1, p0, Lcom/appodeal/ads/networks/a$b;->c:I

    iget v2, p0, Lcom/appodeal/ads/networks/a$b;->d:I

    invoke-interface {v0, v1, v2}, Lcom/appodeal/ads/networks/a$a;->a(II)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/networks/a$b;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/networks/a$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
