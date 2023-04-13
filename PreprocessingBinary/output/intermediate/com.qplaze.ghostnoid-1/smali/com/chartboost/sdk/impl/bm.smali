.class public Lcom/chartboost/sdk/impl/bm;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bm$a;
    }
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/impl/bo;

.field private b:Landroid/view/View;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/View;

.field private e:Lcom/chartboost/sdk/impl/bn;

.field private f:Z

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private i:Lcom/chartboost/sdk/impl/bm$a;

.field private final j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 56
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bm;->j:Landroid/os/Handler;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bm;->a:Lcom/chartboost/sdk/impl/bo;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/chartboost/sdk/impl/bn;Lcom/chartboost/sdk/impl/bo;)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 56
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bm;->j:Landroid/os/Handler;

    .line 122
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bm;->b:Landroid/view/View;

    .line 123
    iput-object p2, p0, Lcom/chartboost/sdk/impl/bm;->c:Landroid/view/ViewGroup;

    .line 124
    iput-object p3, p0, Lcom/chartboost/sdk/impl/bm;->d:Landroid/view/View;

    .line 125
    iput-object p4, p0, Lcom/chartboost/sdk/impl/bm;->e:Lcom/chartboost/sdk/impl/bn;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/bm;->f:Z

    .line 127
    iput-object p5, p0, Lcom/chartboost/sdk/impl/bm;->a:Lcom/chartboost/sdk/impl/bo;

    .line 128
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 188
    const/4 v5, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 248
    const-string v0, "CBWebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JavaScript to native "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback not recognized."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v0, "Function name not recognized."

    .line 257
    :goto_1
    return-object v0

    .line 188
    :sswitch_0
    const-string v6, "click"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_1
    const-string v6, "close"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_2
    const-string v6, "videoCompleted"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_3
    const-string v6, "videoPlaying"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto :goto_0

    :sswitch_4
    const-string v6, "videoPaused"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_5
    const-string v6, "videoReplay"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6
    const-string v6, "currentVideoDuration"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_0

    :sswitch_7
    const-string v6, "totalVideoDuration"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :sswitch_8
    const-string v6, "show"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_9
    const-string v6, "error"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v6, "warning"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v6, "debug"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v6, "tracking"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "openUrl"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_0

    :pswitch_0
    move v3, v0

    .line 252
    :goto_2
    :pswitch_1
    const-string v0, "CBWebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JavaScript to native "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback triggered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v0, Lcom/chartboost/sdk/impl/bp;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bm;->a:Lcom/chartboost/sdk/impl/bo;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bp;-><init>(Lcom/chartboost/sdk/impl/bm;Lcom/chartboost/sdk/impl/bo;ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 255
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bm;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    const-string v0, "Native function successfully called."

    goto/16 :goto_1

    .line 198
    :pswitch_2
    const/16 v3, 0x9

    .line 199
    goto :goto_2

    .line 202
    :pswitch_3
    const/16 v3, 0xb

    .line 203
    goto :goto_2

    .line 206
    :pswitch_4
    const/16 v3, 0xa

    .line 207
    goto :goto_2

    .line 210
    :pswitch_5
    const/16 v3, 0xc

    .line 211
    goto :goto_2

    :pswitch_6
    move v3, v1

    .line 215
    goto :goto_2

    .line 218
    :pswitch_7
    const/4 v3, 0x7

    .line 219
    goto :goto_2

    .line 222
    :pswitch_8
    const/4 v3, 0x6

    .line 223
    goto :goto_2

    .line 226
    :pswitch_9
    const-class v0, Lcom/chartboost/sdk/impl/bn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Javascript Error occured"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 228
    goto :goto_2

    .line 231
    :pswitch_a
    const-class v0, Lcom/chartboost/sdk/impl/bn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Javascript warning occurred"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/16 v3, 0xd

    .line 233
    goto :goto_2

    :pswitch_b
    move v3, v4

    .line 237
    goto :goto_2

    .line 240
    :pswitch_c
    const/16 v3, 0x8

    .line 241
    goto :goto_2

    .line 244
    :pswitch_d
    const/4 v3, 0x5

    .line 245
    goto :goto_2

    .line 188
    :sswitch_data_0
    .sparse-switch
        -0x5ca105ca -> :sswitch_6
        -0x4b4af53b -> :sswitch_d
        -0x40bd23f0 -> :sswitch_2
        -0x26309ccd -> :sswitch_3
        0x35dafd -> :sswitch_8
        0x5a5c588 -> :sswitch_0
        0x5a5ddf8 -> :sswitch_1
        0x5b09653 -> :sswitch_b
        0x5c4d208 -> :sswitch_9
        0x38011189 -> :sswitch_4
        0x3ba0c042 -> :sswitch_5
        0x4089de4b -> :sswitch_7
        0x4305af9c -> :sswitch_a
        0x4bba1eb7 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3
    .param p1, "cm"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 150
    const-class v0, Lcom/chartboost/sdk/impl/bm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chartboost Webview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- From line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public onHideCustomView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 298
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/bm;->f:Z

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bm;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bm;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bm;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 303
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bm;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bm;->h:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bm;->h:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".chromium."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bm;->h:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 312
    :cond_0
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/bm;->f:Z

    .line 313
    iput-object v3, p0, Lcom/chartboost/sdk/impl/bm;->g:Landroid/widget/FrameLayout;

    .line 314
    iput-object v3, p0, Lcom/chartboost/sdk/impl/bm;->h:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 317
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bm;->i:Lcom/chartboost/sdk/impl/bm$a;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bm;->i:Lcom/chartboost/sdk/impl/bm$a;

    invoke-interface {v0, v2}, Lcom/chartboost/sdk/impl/bm$a;->a(Z)V

    .line 322
    :cond_1
    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    const/4 v3, 0x1

    .line 173
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/chartboost/sdk/impl/g;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 174
    const-string v1, "eventType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    const-string v2, "eventArgs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 181
    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/bm;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 183
    :goto_0
    return v3

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v0, "CBWebChromeClient"

    const-string v1, "Exception caught parsing the function name from js to native"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 289
    invoke-virtual {p0, p1, p3}, Lcom/chartboost/sdk/impl/bm;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 290
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 263
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 266
    check-cast p1, Landroid/widget/FrameLayout;

    .line 269
    .end local p1    # "view":Landroid/view/View;
    iput-boolean v4, p0, Lcom/chartboost/sdk/impl/bm;->f:Z

    .line 270
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bm;->g:Landroid/widget/FrameLayout;

    .line 271
    iput-object p2, p0, Lcom/chartboost/sdk/impl/bm;->h:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 274
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bm;->b:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bm;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bm;->g:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bm;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bm;->i:Lcom/chartboost/sdk/impl/bm$a;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bm;->i:Lcom/chartboost/sdk/impl/bm$a;

    invoke-interface {v0, v4}, Lcom/chartboost/sdk/impl/bm$a;->a(Z)V

    .line 284
    :cond_0
    return-void
.end method
