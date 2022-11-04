.class public Lpotsdam/uni/com/myapplication/MainActivity;
.method protected onCreate(Landroid/os/Bundle;)V
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V
    const v0, 0x7f09001b
    invoke-virtual {p0, v0}, Lpotsdam/uni/com/myapplication/MainActivity;->setContentView(I)V
    const v0, 0x7f070086
    invoke-virtual {p0, v0}, Lpotsdam/uni/com/myapplication/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/webkit/WebView;
    .local v0, "myWebView":Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v1
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    const/4 v2, 0x1
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    new-instance v2, Lpotsdam/uni/com/myapplication/Main2Activity;
    invoke-direct {v2, p0}, Lpotsdam/uni/com/myapplication/Main2Activity;-><init>(Landroid/content/Context;)V
    const-string v3, "Android"
    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    const-string v2, "javascript:window.Android.showToast(\'Hello Abhishek\')"
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    const-string v2, "console.log(4262676);"
    const/4 v3, 0x0
    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

Interface Methods:
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


Invoked Methods:
