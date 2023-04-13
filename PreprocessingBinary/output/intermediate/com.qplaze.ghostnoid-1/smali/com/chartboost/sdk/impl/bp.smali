.class public Lcom/chartboost/sdk/impl/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/bm;

.field private final b:Lcom/chartboost/sdk/impl/bo;

.field private final c:I

.field private final d:Lorg/json/JSONObject;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bm;Lcom/chartboost/sdk/impl/bo;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bp;->a:Lcom/chartboost/sdk/impl/bm;

    .line 45
    iput-object p2, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    .line 46
    iput p3, p0, Lcom/chartboost/sdk/impl/bp;->c:I

    .line 47
    iput-object p4, p0, Lcom/chartboost/sdk/impl/bp;->e:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/chartboost/sdk/impl/bp;->d:Lorg/json/JSONObject;

    .line 49
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 54
    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/impl/bp;->c:I

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/bo;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bp;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 60
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bo;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 65
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->d:Lorg/json/JSONObject;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 66
    const-string v1, "NativeBridgeCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "######### JS->Native Video current player duration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-float v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    mul-float/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bo;->a(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 68
    :catch_1
    move-exception v0

    .line 69
    :try_start_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    const-string v1, "Parsing exception unknown field for current player duration"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bo;->e(Ljava/lang/String;)V

    .line 70
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find duration parameter for the video"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 76
    :pswitch_3
    :try_start_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->d:Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    const-class v1, Lcom/chartboost/sdk/impl/bn;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Debug message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bo;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 79
    :catch_2
    move-exception v0

    .line 80
    :try_start_5
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Exception occured while parsing the message for webview debug track event"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    const-string v1, "Exception occured while parsing the message for webview debug track event"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bo;->c(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 87
    :pswitch_4
    :try_start_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->d:Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-class v1, Lcom/chartboost/sdk/impl/bn;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bo;->d(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 90
    :catch_3
    move-exception v0

    .line 91
    :try_start_7
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Error message is empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bo;->d(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 98
    :pswitch_5
    :try_start_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->d:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bo;->q()Lcom/chartboost/sdk/impl/bo$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bo$c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 103
    const-class v1, Lcom/chartboost/sdk/impl/bn;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Track MRAID openUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 104
    :catch_4
    move-exception v0

    .line 105
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "ActivityNotFoundException occured when opening a url in a browser"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 106
    const-string v0, "NativeBridgeCommand"

    const-string v1, "ActivityNotFoundException occured when opening a url in a browser"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :catch_5
    move-exception v0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Exception while opening a browser view with MRAID url"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 109
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Exception while opening a browser view with MRAID url"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :pswitch_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bo;->r()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 119
    :pswitch_7
    :try_start_a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->d:Lorg/json/JSONObject;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 120
    const-string v1, "NativeBridgeCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "######### JS->Native Video total player duration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-float v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    mul-float/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bo;->b(F)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    .line 122
    :catch_6
    move-exception v0

    .line 123
    :try_start_b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    const-string v1, "Parsing exception unknown field for total player duration"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bo;->e(Ljava/lang/String;)V

    .line 124
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find duration parameter for the video"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    .line 130
    :pswitch_8
    :try_start_c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->d:Lorg/json/JSONObject;

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bo;->b(Ljava/lang/String;)V

    .line 132
    const-class v1, Lcom/chartboost/sdk/impl/bn;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Track VAST event message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_0

    .line 133
    :catch_7
    move-exception v0

    .line 134
    :try_start_d
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Exception occured while parsing the message for webview tracking VAST events"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :pswitch_9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->a:Lcom/chartboost/sdk/impl/bm;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bm;->onHideCustomView()V

    .line 140
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    sget-object v1, Lcom/chartboost/sdk/impl/bo$b;->b:Lcom/chartboost/sdk/impl/bo$b;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bo;->a(Lcom/chartboost/sdk/impl/bo$b;)V

    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bo;->o()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_0

    .line 146
    :pswitch_a
    :try_start_e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->d:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/g;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    iput-object v0, v1, Lcom/chartboost/sdk/impl/bo;->m:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 153
    :cond_1
    :goto_1
    :try_start_f
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    sget-object v1, Lcom/chartboost/sdk/impl/bo$b;->d:Lcom/chartboost/sdk/impl/bo$b;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bo;->a(Lcom/chartboost/sdk/impl/bo$b;)V

    goto/16 :goto_0

    .line 149
    :catch_8
    move-exception v0

    .line 150
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find video file name"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    const-string v1, "Parsing exception unknown field for video pause"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bo;->e(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_1

    .line 158
    :pswitch_b
    :try_start_10
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->d:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/g;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    iput-object v0, v1, Lcom/chartboost/sdk/impl/bo;->m:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    .line 165
    :cond_2
    :goto_2
    :try_start_11
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    sget-object v1, Lcom/chartboost/sdk/impl/bo$b;->c:Lcom/chartboost/sdk/impl/bo$b;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bo;->a(Lcom/chartboost/sdk/impl/bo$b;)V

    goto/16 :goto_0

    .line 161
    :catch_9
    move-exception v0

    .line 162
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find video file name"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    const-string v1, "Parsing exception unknown field for video play"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bo;->e(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    goto :goto_2

    .line 170
    :pswitch_c
    :try_start_12
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->d:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/g;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 172
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    iput-object v0, v1, Lcom/chartboost/sdk/impl/bo;->m:Ljava/lang/String;

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bo;->p()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    goto/16 :goto_0

    .line 174
    :catch_a
    move-exception v0

    .line 175
    :try_start_13
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find video file name"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    const-string v1, "Parsing exception unknown field for video replay"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bo;->e(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_0

    .line 182
    :pswitch_d
    :try_start_14
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->d:Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    const-class v1, Lcom/chartboost/sdk/impl/bn;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Warning message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bo;->e(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    goto/16 :goto_0

    .line 185
    :catch_b
    move-exception v0

    .line 186
    :try_start_15
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Warning message is empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bp;->b:Lcom/chartboost/sdk/impl/bo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bo;->e(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    goto/16 :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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
