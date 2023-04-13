.class public Lcom/chartboost/sdk/impl/bo;
.super Lcom/chartboost/sdk/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bo$a;,
        Lcom/chartboost/sdk/impl/bo$c;,
        Lcom/chartboost/sdk/impl/bo$b;
    }
.end annotation


# instance fields
.field final k:Lcom/chartboost/sdk/Tracking/a;

.field final l:Lcom/chartboost/sdk/e;

.field public m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field protected o:I

.field p:J

.field q:J

.field r:Z

.field private final s:Lcom/chartboost/sdk/impl/b;

.field private final t:Lcom/chartboost/sdk/impl/af;

.field private u:Ljava/lang/String;

.field private v:Lorg/json/JSONObject;

.field private w:F

.field private x:F

.field private y:Z

.field private z:Lcom/chartboost/sdk/impl/bo$b;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/e;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/f;-><init>(Lcom/chartboost/sdk/Model/a;)V

    .line 38
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bo;->m:Ljava/lang/String;

    .line 40
    iput-object v3, p0, Lcom/chartboost/sdk/impl/bo;->u:Ljava/lang/String;

    .line 41
    iput-object v3, p0, Lcom/chartboost/sdk/impl/bo;->n:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/bo;->o:I

    .line 45
    iput v1, p0, Lcom/chartboost/sdk/impl/bo;->w:F

    .line 46
    iput v1, p0, Lcom/chartboost/sdk/impl/bo;->x:F

    .line 48
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/bo;->y:Z

    .line 49
    iput-wide v4, p0, Lcom/chartboost/sdk/impl/bo;->p:J

    .line 50
    iput-wide v4, p0, Lcom/chartboost/sdk/impl/bo;->q:J

    .line 51
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/bo;->r:Z

    .line 53
    sget-object v0, Lcom/chartboost/sdk/impl/bo$b;->a:Lcom/chartboost/sdk/impl/bo$b;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bo;->z:Lcom/chartboost/sdk/impl/bo$b;

    .line 124
    iput-object p2, p0, Lcom/chartboost/sdk/impl/bo;->s:Lcom/chartboost/sdk/impl/b;

    .line 125
    iput-object p3, p0, Lcom/chartboost/sdk/impl/bo;->t:Lcom/chartboost/sdk/impl/af;

    .line 126
    iput-object p4, p0, Lcom/chartboost/sdk/impl/bo;->k:Lcom/chartboost/sdk/Tracking/a;

    .line 127
    iput-object p5, p0, Lcom/chartboost/sdk/impl/bo;->l:Lcom/chartboost/sdk/e;

    .line 128
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .prologue
    .line 334
    iput p1, p0, Lcom/chartboost/sdk/impl/bo;->x:F

    .line 335
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/bo$b;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bo;->z:Lcom/chartboost/sdk/impl/bo$b;

    .line 326
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 138
    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->e()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v2

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    .line 139
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "events"

    aput-object v4, v3, v0

    invoke-static {p1, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/chartboost/sdk/impl/bo;->v:Lorg/json/JSONObject;

    .line 140
    if-nez v2, :cond_0

    .line 141
    const-string v1, "CBWebViewProtocol"

    const-string v2, "External Storage path is unavailable or media not mounted"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/bo;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 171
    :goto_0
    return v0

    .line 146
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/chartboost/sdk/impl/bo;->n:Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v3

    iget-object v4, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v4, v4, Lcom/chartboost/sdk/Model/a;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/chartboost/sdk/impl/g;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    const-string v1, "CBWebViewProtocol"

    const-string v2, "Invalid adId being passed in th response"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/bo;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v3, v3, Lcom/chartboost/sdk/Model/a;->k:Ljava/lang/String;

    .line 153
    if-nez v3, :cond_2

    .line 154
    const-string v1, "CBWebViewProtocol"

    const-string v2, "No html data found in memory"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/bo;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 158
    :cond_2
    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "webview"

    aput-object v5, v4, v0

    invoke-static {p1, v4}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 159
    if-nez v4, :cond_3

    .line 160
    const-string v1, "CBWebViewProtocol"

    const-string v2, "No webview element in response"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/bo;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 164
    :cond_3
    iget-object v5, p0, Lcom/chartboost/sdk/impl/bo;->s:Lcom/chartboost/sdk/impl/b;

    invoke-virtual {v5, v4, v2}, Lcom/chartboost/sdk/impl/b;->a(Lorg/json/JSONObject;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 165
    const-string v1, "CBWebViewProtocol"

    const-string v2, "Missing assets for template"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/bo;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 169
    :cond_4
    iput-object v3, p0, Lcom/chartboost/sdk/impl/bo;->u:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bo;->b()Z

    move v0, v1

    .line 171
    goto/16 :goto_0
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/f$a;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/chartboost/sdk/impl/bo$c;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo;->u:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/bo$c;-><init>(Lcom/chartboost/sdk/impl/bo;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 338
    iput p1, p0, Lcom/chartboost/sdk/impl/bo;->w:F

    .line 339
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 179
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->v:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->v:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_1

    .line 182
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 183
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bo;->t:Lcom/chartboost/sdk/impl/af;

    invoke-interface {v3, v2}, Lcom/chartboost/sdk/impl/af;->a(Ljava/lang/String;)V

    .line 187
    const-string v3, "CBWebViewProtocol"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###### Sending VAST Tracking Event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->k:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/d;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bo;->q()Lcom/chartboost/sdk/impl/bo$c;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_3

    .line 305
    iget-object v1, v0, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    if-eqz v1, :cond_0

    .line 306
    const-string v1, "CBWebViewProtocol"

    const-string v2, "Destroying the webview object and cleaning up the references"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iget-object v1, v0, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bn;->destroy()V

    .line 308
    iput-object v3, v0, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    .line 310
    :cond_0
    iget-object v1, v0, Lcom/chartboost/sdk/impl/bo$c;->d:Lcom/chartboost/sdk/impl/bm;

    if-eqz v1, :cond_1

    .line 311
    iput-object v3, v0, Lcom/chartboost/sdk/impl/bo$c;->d:Lcom/chartboost/sdk/impl/bm;

    .line 312
    :cond_1
    iget-object v1, v0, Lcom/chartboost/sdk/impl/bo$c;->e:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 313
    iput-object v3, v0, Lcom/chartboost/sdk/impl/bo$c;->e:Landroid/widget/RelativeLayout;

    .line 314
    :cond_2
    iget-object v1, v0, Lcom/chartboost/sdk/impl/bo$c;->f:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 315
    iput-object v3, v0, Lcom/chartboost/sdk/impl/bo$c;->f:Landroid/widget/RelativeLayout;

    .line 317
    :cond_3
    invoke-super {p0}, Lcom/chartboost/sdk/f;->d()V

    .line 318
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 198
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/g;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "Unknown Webview error"

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->k:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/d;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 200
    const-string v0, "CBWebViewProtocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview error occurred closing the webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/bo;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 202
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bo;->h()V

    .line 203
    return-void

    :cond_0
    move-object v4, p1

    .line 198
    goto :goto_0
.end method

.method public synthetic e()Lcom/chartboost/sdk/f$a;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bo;->q()Lcom/chartboost/sdk/impl/bo$c;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 206
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/g;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Unknown Webview warning message"

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->k:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/d;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "CBWebViewProtocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview warning occurred closing the webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0}, Lcom/chartboost/sdk/f;->h()V

    .line 176
    return-void
.end method

.method public j()F
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/chartboost/sdk/impl/bo;->w:F

    return v0
.end method

.method public k()F
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/chartboost/sdk/impl/bo;->x:F

    return v0
.end method

.method public l()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 240
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->z:Lcom/chartboost/sdk/impl/bo$b;

    sget-object v1, Lcom/chartboost/sdk/impl/bo$b;->c:Lcom/chartboost/sdk/impl/bo$b;

    if-ne v0, v1, :cond_0

    .line 248
    :goto_0
    return v2

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bo;->q()Lcom/chartboost/sdk/impl/bo$c;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/chartboost/sdk/impl/bo$c;->d:Lcom/chartboost/sdk/impl/bm;

    if-eqz v1, :cond_1

    .line 245
    iget-object v0, v0, Lcom/chartboost/sdk/impl/bo$c;->d:Lcom/chartboost/sdk/impl/bm;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bm;->onHideCustomView()V

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bo;->h()V

    goto :goto_0
.end method

.method public m()V
    .locals 3

    .prologue
    .line 253
    invoke-super {p0}, Lcom/chartboost/sdk/f;->m()V

    .line 254
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bo;->q()Lcom/chartboost/sdk/impl/bo$c;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    if-eqz v1, :cond_0

    .line 256
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/chartboost/sdk/impl/bo$1;

    invoke-direct {v2, p0, v0}, Lcom/chartboost/sdk/impl/bo$1;-><init>(Lcom/chartboost/sdk/impl/bo;Lcom/chartboost/sdk/impl/bo$c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->k:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method

.method public n()V
    .locals 3

    .prologue
    .line 276
    invoke-super {p0}, Lcom/chartboost/sdk/f;->n()V

    .line 277
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bo;->q()Lcom/chartboost/sdk/impl/bo$c;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    if-eqz v1, :cond_0

    .line 279
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/chartboost/sdk/impl/bo$2;

    invoke-direct {v2, p0, v0}, Lcom/chartboost/sdk/impl/bo$2;-><init>(Lcom/chartboost/sdk/impl/bo;Lcom/chartboost/sdk/impl/bo$c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->k:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 294
    iget v0, p0, Lcom/chartboost/sdk/impl/bo;->o:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->f()V

    .line 296
    iget v0, p0, Lcom/chartboost/sdk/impl/bo;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/bo;->o:I

    .line 298
    :cond_0
    return-void
.end method

.method public p()V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->k:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public q()Lcom/chartboost/sdk/impl/bo$c;
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/bo$c;

    return-object v0
.end method

.method public r()V
    .locals 3

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/bo;->y:Z

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, ""

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->r()V

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/bo;->y:Z

    .line 355
    :cond_0
    return-void
.end method
