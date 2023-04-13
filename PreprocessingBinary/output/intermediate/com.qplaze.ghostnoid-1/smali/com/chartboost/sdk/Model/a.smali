.class public Lcom/chartboost/sdk/Model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Model/a$1;,
        Lcom/chartboost/sdk/Model/a$d;,
        Lcom/chartboost/sdk/Model/a$b;,
        Lcom/chartboost/sdk/Model/a$c;,
        Lcom/chartboost/sdk/Model/a$a;,
        Lcom/chartboost/sdk/Model/a$e;
    }
.end annotation


# instance fields
.field private A:Lorg/json/JSONObject;

.field private B:Z

.field private C:Ljava/lang/Boolean;

.field private D:Lcom/chartboost/sdk/f;

.field private E:Lcom/chartboost/sdk/Model/a$d;

.field private F:Ljava/lang/Runnable;

.field public final a:Lcom/chartboost/sdk/d;

.field public b:Lcom/chartboost/sdk/Model/a$b;

.field public final c:Ljava/util/Date;

.field public d:Lcom/chartboost/sdk/Model/a$e;

.field public final e:Lcom/chartboost/sdk/Model/a$a;

.field public f:Ljava/lang/String;

.field public g:Lcom/chartboost/sdk/Model/a$c;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:J

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Lcom/chartboost/sdk/impl/bk;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Lcom/chartboost/sdk/impl/aj;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a$a;ZLjava/lang/String;ZLcom/chartboost/sdk/Model/a$b;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->C:Ljava/lang/Boolean;

    .line 82
    iput v2, p0, Lcom/chartboost/sdk/Model/a;->h:I

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->i:Ljava/lang/String;

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/Model/a;->l:J

    .line 91
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->m:Z

    .line 111
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->r:Z

    .line 116
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    .line 118
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->t:Z

    .line 120
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->u:Z

    .line 126
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->x:Z

    .line 128
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->y:Z

    .line 130
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->z:Z

    .line 139
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->a:Lcom/chartboost/sdk/d;

    .line 140
    sget-object v0, Lcom/chartboost/sdk/Model/a$e;->a:Lcom/chartboost/sdk/Model/a$e;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    .line 141
    iput-boolean p3, p0, Lcom/chartboost/sdk/Model/a;->n:Z

    .line 142
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Date;

    .line 143
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    .line 144
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->w:Z

    .line 145
    iput-boolean v3, p0, Lcom/chartboost/sdk/Model/a;->y:Z

    .line 146
    iput-object p2, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$a;

    .line 147
    iput-boolean p5, p0, Lcom/chartboost/sdk/Model/a;->q:Z

    .line 148
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->A:Lorg/json/JSONObject;

    .line 149
    sget-object v0, Lcom/chartboost/sdk/Model/a$c;->d:Lcom/chartboost/sdk/Model/a$c;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    .line 150
    iput-object p4, p0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    .line 151
    iput-boolean v3, p0, Lcom/chartboost/sdk/Model/a;->B:Z

    .line 152
    iput-object p6, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 153
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 154
    const-string v0, "Default"

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->E:Lcom/chartboost/sdk/Model/a$d;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->E:Lcom/chartboost/sdk/Model/a$d;

    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/Model/a$d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 321
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->F:Ljava/lang/Runnable;

    .line 441
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 505
    if-nez p1, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    :goto_0
    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->A:Lorg/json/JSONObject;

    .line 508
    return-void

    :cond_0
    move-object v0, p1

    .line 505
    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;Lcom/chartboost/sdk/Model/a$d;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 158
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->A:Lorg/json/JSONObject;

    .line 159
    sget-object v1, Lcom/chartboost/sdk/Model/a$e;->a:Lcom/chartboost/sdk/Model/a$e;

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    .line 160
    iput-object p2, p0, Lcom/chartboost/sdk/Model/a;->E:Lcom/chartboost/sdk/Model/a$d;

    .line 162
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string v2, "native"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v2, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    .line 169
    :goto_1
    if-eqz v1, :cond_3

    .line 170
    sget-object v1, Lcom/chartboost/sdk/Model/a$1;->a:[I

    iget-object v2, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$a;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 254
    :goto_2
    :pswitch_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/f;->a(Lorg/json/JSONObject;)Z

    .line 255
    return-void

    .line 166
    :cond_0
    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->b:Lcom/chartboost/sdk/Model/a$b;

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    goto :goto_0

    :cond_1
    move v1, v0

    .line 168
    goto :goto_1

    .line 172
    :pswitch_1
    const-string v1, "media-type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->b:Lcom/chartboost/sdk/Model/a$c;

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    .line 175
    new-instance v1, Lcom/chartboost/sdk/impl/l;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/l;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    .line 176
    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->B:Z

    goto :goto_2

    .line 179
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Model/a$c;->a:Lcom/chartboost/sdk/Model/a$c;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    .line 180
    new-instance v0, Lcom/chartboost/sdk/impl/k;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/k;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    goto :goto_2

    .line 184
    :pswitch_2
    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    .line 185
    new-instance v1, Lcom/chartboost/sdk/impl/l;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/l;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    .line 186
    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->B:Z

    .line 187
    const-string v0, "reward"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/Model/a;->h:I

    .line 188
    const-string v0, "currency-name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->i:Ljava/lang/String;

    goto :goto_2

    .line 191
    :pswitch_3
    new-instance v1, Lcom/chartboost/sdk/impl/z;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/z;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    .line 192
    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->B:Z

    goto :goto_2

    .line 200
    :cond_3
    sget-object v1, Lcom/chartboost/sdk/Model/a$1;->a:[I

    iget-object v2, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$a;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 252
    :cond_4
    :goto_3
    :pswitch_4
    new-instance v0, Lcom/chartboost/sdk/impl/bo;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->a:Lcom/chartboost/sdk/d;

    iget-object v2, v1, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/impl/b;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->a:Lcom/chartboost/sdk/d;

    iget-object v3, v1, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/impl/af;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->a:Lcom/chartboost/sdk/d;

    iget-object v4, v1, Lcom/chartboost/sdk/d;->i:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->a:Lcom/chartboost/sdk/d;

    iget-object v5, v1, Lcom/chartboost/sdk/d;->j:Lcom/chartboost/sdk/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bo;-><init>(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    goto/16 :goto_2

    .line 202
    :pswitch_5
    const-string v1, "media-type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 205
    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->b:Lcom/chartboost/sdk/Model/a$c;

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    .line 206
    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->B:Z

    goto :goto_3

    .line 207
    :cond_5
    const-string v0, "image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 209
    sget-object v0, Lcom/chartboost/sdk/Model/a$c;->a:Lcom/chartboost/sdk/Model/a$c;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    goto :goto_3

    .line 211
    :cond_6
    const-string v0, "CBImpression"

    const-string v1, "Unknown media type in the response, so have issues determining which ad type to create the view for."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_3

    .line 216
    :pswitch_6
    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    .line 217
    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->B:Z

    .line 218
    const-string v1, "reward"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/chartboost/sdk/Model/a;->h:I

    .line 219
    iget v1, p0, Lcom/chartboost/sdk/Model/a;->h:I

    if-gtz v1, :cond_4

    .line 221
    :try_start_0
    const-string v1, "webview"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_4

    .line 223
    const-string v2, "elements"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_4

    .line 225
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 226
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 227
    if-eqz v2, :cond_8

    .line 228
    const-string v3, "param"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    const-string v4, "reward_amount"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 230
    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/chartboost/sdk/Model/a;->h:I

    .line 232
    :cond_7
    const-string v4, "reward_currency"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 233
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/Model/a;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 239
    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "prepare webview rewarded video"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 245
    :pswitch_7
    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->B:Z

    goto/16 :goto_3

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 200
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->B:Z

    return v0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    sget-object v3, Lcom/chartboost/sdk/Model/a$e;->c:Lcom/chartboost/sdk/Model/a$e;

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 302
    :goto_0
    return v0

    .line 280
    :cond_1
    if-nez p1, :cond_2

    .line 281
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->A:Lorg/json/JSONObject;

    const-string v3, "link"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->A:Lorg/json/JSONObject;

    const-string v3, "deep-link"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 286
    :try_start_0
    invoke-static {v0}, Lcom/chartboost/sdk/impl/al;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 288
    :try_start_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/chartboost/sdk/Model/a;->C:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v0

    .line 297
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->w:Z

    if-eqz v0, :cond_5

    move v0, v1

    .line 298
    goto :goto_0

    .line 290
    :cond_4
    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->C:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 293
    :catch_0
    move-exception v0

    .line 294
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "onClick"

    invoke-static {v3, v4, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 299
    :cond_5
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->w:Z

    .line 300
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->y:Z

    .line 301
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->E:Lcom/chartboost/sdk/Model/a$d;

    invoke-interface {v0, p0, p1, p2}, Lcom/chartboost/sdk/Model/a$d;->a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lorg/json/JSONObject;)V

    move v0, v2

    .line 302
    goto :goto_0

    .line 293
    :catch_1
    move-exception v3

    move-object p1, v0

    move-object v0, v3

    goto :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->E:Lcom/chartboost/sdk/Model/a$d;

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->y:Z

    .line 265
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->E:Lcom/chartboost/sdk/Model/a$d;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$d;->b(Lcom/chartboost/sdk/Model/a;)V

    .line 267
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->E:Lcom/chartboost/sdk/Model/a$d;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->E:Lcom/chartboost/sdk/Model/a$d;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$d;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 273
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->C:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->E:Lcom/chartboost/sdk/Model/a$d;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->E:Lcom/chartboost/sdk/Model/a$d;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$d;->c(Lcom/chartboost/sdk/Model/a;)V

    .line 327
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->E:Lcom/chartboost/sdk/Model/a$d;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->E:Lcom/chartboost/sdk/Model/a$d;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$d;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 334
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->b()Z

    .line 342
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 343
    const/4 v0, 0x1

    .line 349
    :goto_0
    return v0

    .line 345
    :cond_0
    const-string v0, "CBImpression"

    const-string v1, "reinitializing -- no view protocol exists!!"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    :cond_1
    const-string v0, "CBImpression"

    const-string v1, "reinitializing -- view not yet created"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->j()V

    .line 355
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->d()V

    .line 360
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    .line 361
    const-string v0, "CBImpression"

    const-string v1, "Destroying the view and view data"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public j()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->p:Lcom/chartboost/sdk/impl/bk;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->p:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->d()V

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/f$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->p:Lcom/chartboost/sdk/impl/bk;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    invoke-virtual {v1}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->p:Lcom/chartboost/sdk/impl/bk;

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->f()V

    .line 380
    :cond_2
    const-string v0, "CBImpression"

    const-string v1, "Destroying the view"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    const-string v1, "CBImpression"

    const-string v2, "Exception raised while cleaning up views"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "cleanUpViews"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public k()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_0
.end method

.method public l()Lcom/chartboost/sdk/f$a;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    .line 398
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/f$a;->setVisibility(I)V

    .line 409
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    .line 445
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->F:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->F:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->F:Ljava/lang/Runnable;

    .line 452
    :cond_0
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    .line 453
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->r:Z

    .line 454
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->A:Lorg/json/JSONObject;

    const-string v1, "ad_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/chartboost/sdk/d;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->a:Lcom/chartboost/sdk/d;

    return-object v0
.end method

.method public r()V
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/d;->j(Lcom/chartboost/sdk/Model/a;)V

    .line 470
    return-void
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->l()Z

    move-result v0

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 480
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->w:Z

    .line 481
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->x:Z

    if-eqz v0, :cond_0

    .line 482
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->x:Z

    .line 483
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->m()V

    .line 485
    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->w:Z

    .line 489
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->x:Z

    if-nez v0, :cond_0

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->x:Z

    .line 494
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->n()V

    .line 496
    :cond_0
    return-void
.end method

.method public w()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->A:Lorg/json/JSONObject;

    return-object v0
.end method

.method public x()Lcom/chartboost/sdk/f;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->D:Lcom/chartboost/sdk/f;

    return-object v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->y:Z

    return v0
.end method
