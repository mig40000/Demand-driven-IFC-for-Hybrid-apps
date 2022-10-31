.class public Lpotsdam/uni/com/myapplication/Main2Activity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Main2Activity.java"


# instance fields
.field context:Landroid/content/Context;

.field temp:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 20
    const/16 v0, 0x1a4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lpotsdam/uni/com/myapplication/Main2Activity;->temp:Ljava/lang/Integer;

    .line 30
    iput-object p1, p0, Lpotsdam/uni/com/myapplication/Main2Activity;->context:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 24
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lpotsdam/uni/com/myapplication/Main2Activity;->setContentView(I)V

    .line 26
    return-void
.end method

.method public sendSms()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 36
    const-string v0, "abhi"

    const-string v1, "hellllppppppp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "toast"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 46
    iget-object v0, p0, Lpotsdam/uni/com/myapplication/Main2Activity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 47
    const-string v0, "Abhi"

    const-string v1, "here hellooooo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method
