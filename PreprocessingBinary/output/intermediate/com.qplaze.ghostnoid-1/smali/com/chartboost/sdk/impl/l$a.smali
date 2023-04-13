.class public Lcom/chartboost/sdk/impl/l$a;
.super Lcom/chartboost/sdk/impl/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final h:Lcom/chartboost/sdk/impl/r;

.field final i:Lcom/chartboost/sdk/impl/m;

.field final synthetic j:Lcom/chartboost/sdk/impl/l;

.field private final k:Lcom/chartboost/sdk/impl/bf;

.field private l:Lcom/chartboost/sdk/impl/o;

.field private m:Landroid/view/View;

.field private final n:Lcom/chartboost/sdk/impl/j;

.field private final o:Lcom/chartboost/sdk/impl/bf;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/l;Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v3, 0x8

    .line 88
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/k$a;-><init>(Lcom/chartboost/sdk/impl/k;Landroid/content/Context;)V

    .line 90
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v1

    .line 91
    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/l;->O:Z

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->m:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->m:Landroid/view/View;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->m:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/l$a;->addView(Landroid/view/View;)V

    .line 98
    :cond_0
    iget-object v0, p1, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v2, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v2, :cond_1

    .line 99
    new-instance v0, Lcom/chartboost/sdk/impl/o;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/o;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/l;)V

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/o;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->l:Lcom/chartboost/sdk/impl/o;

    .line 100
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->l:Lcom/chartboost/sdk/impl/o;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/o;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->l:Lcom/chartboost/sdk/impl/o;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/l$a;->addView(Landroid/view/View;)V

    .line 104
    :cond_1
    invoke-virtual {v1, p2, p1}, Lcom/chartboost/sdk/g;->a(Landroid/content/Context;Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/r;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    .line 105
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/r;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/l$a;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {v1, p2, p1}, Lcom/chartboost/sdk/g;->b(Landroid/content/Context;Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/j;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->n:Lcom/chartboost/sdk/impl/j;

    .line 108
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->n:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/j;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->n:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/l$a;->addView(Landroid/view/View;)V

    .line 111
    iget-object v0, p1, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v2, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v2, :cond_b

    .line 112
    invoke-virtual {v1, p2, p1}, Lcom/chartboost/sdk/g;->c(Landroid/content/Context;Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->i:Lcom/chartboost/sdk/impl/m;

    .line 113
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->i:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/m;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->i:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/l$a;->addView(Landroid/view/View;)V

    .line 120
    :goto_0
    new-instance v0, Lcom/chartboost/sdk/impl/l$a$1;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/chartboost/sdk/impl/l$a$1;-><init>(Lcom/chartboost/sdk/impl/l$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/l;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->k:Lcom/chartboost/sdk/impl/bf;

    .line 131
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->k:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/bf;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->k:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/l$a;->addView(Landroid/view/View;)V

    .line 135
    new-instance v0, Lcom/chartboost/sdk/impl/l$a$2;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/chartboost/sdk/impl/l$a$2;-><init>(Lcom/chartboost/sdk/impl/l$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/l;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->o:Lcom/chartboost/sdk/impl/bf;

    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->o:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/bf;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->o:Lcom/chartboost/sdk/impl/bf;

    const-string v1, "CBClose"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->o:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/l$a;->addView(Landroid/view/View;)V

    .line 145
    iget-object v0, p1, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 146
    iget-object v1, p1, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    const-string v2, "video-controls-background"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 148
    if-eqz v0, :cond_2

    const-string v2, "background-color"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "border-color"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "progress-color"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "radius"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 153
    iput-boolean v6, p1, Lcom/chartboost/sdk/impl/l;->N:Z

    .line 154
    iget-object v2, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/r;->c()Lcom/chartboost/sdk/impl/n;

    move-result-object v2

    .line 155
    const-string v3, "background-color"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/n;->a(I)V

    .line 156
    const-string v3, "border-color"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/n;->b(I)V

    .line 157
    const-string v3, "progress-color"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/n;->c(I)V

    .line 158
    const-string v3, "radius"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/n;->b(F)V

    .line 161
    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "color"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    const-string v2, "color"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/r;->a(I)V

    .line 165
    :cond_3
    iget-object v0, p1, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v1, :cond_4

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/l;->B:Z

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p1, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    const-string v1, "post-video-toaster"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_4

    .line 168
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l$a;->n:Lcom/chartboost/sdk/impl/j;

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tagline"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_4
    iget-object v0, p1, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v1, :cond_5

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/l;->A:Z

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p1, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    const-string v1, "confirmation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_5

    .line 176
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l$a;->l:Lcom/chartboost/sdk/impl/o;

    const-string v2, "text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "color"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/o;->a(Ljava/lang/String;I)V

    .line 181
    :cond_5
    iget-object v0, p1, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v1, :cond_6

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/l;->C:Z

    if-eqz v0, :cond_6

    .line 182
    iget-object v0, p1, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "post-video-reward-toaster"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_c

    const-string v0, "position"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "inside-top"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/chartboost/sdk/impl/p$a;->a:Lcom/chartboost/sdk/impl/p$a;

    .line 186
    :goto_1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/l$a;->i:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/p$a;)V

    .line 188
    iget-object v2, p0, Lcom/chartboost/sdk/impl/l$a;->i:Lcom/chartboost/sdk/impl/m;

    if-eqz v1, :cond_d

    const-string v0, "text"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/String;)V

    .line 189
    iget-object v0, p1, Lcom/chartboost/sdk/impl/l;->K:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 190
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->i:Lcom/chartboost/sdk/impl/m;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/l;->M:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/Libraries/i;)V

    .line 193
    :cond_6
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/l;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_7

    const-string v0, "video-click-button"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 195
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r;->d()V

    .line 198
    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    const-string v3, "video-progress-timer-enabled"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/r;->d(Z)V

    .line 199
    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/l;->P:Z

    if-nez v0, :cond_9

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/l;->O:Z

    if-eqz v0, :cond_a

    .line 200
    :cond_9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->f:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    :cond_a
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/l;->a()Lcom/chartboost/sdk/Libraries/e;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e;->a()Z

    move-result v0

    .line 203
    new-array v2, v6, [Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, "video-portrait"

    :goto_3
    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_f

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p1, Lcom/chartboost/sdk/impl/l;->v:Ljava/lang/String;

    .line 205
    iget-object v0, p1, Lcom/chartboost/sdk/impl/l;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 206
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/l;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 220
    :goto_5
    return-void

    .line 116
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->i:Lcom/chartboost/sdk/impl/m;

    goto/16 :goto_0

    .line 184
    :cond_c
    sget-object v0, Lcom/chartboost/sdk/impl/p$a;->b:Lcom/chartboost/sdk/impl/p$a;

    goto/16 :goto_1

    .line 188
    :cond_d
    const-string v0, ""

    goto :goto_2

    .line 203
    :cond_e
    const-string v0, "video-landscape"

    goto :goto_3

    .line 204
    :cond_f
    const-string v0, ""

    goto :goto_4

    .line 210
    :cond_10
    iget-object v0, p1, Lcom/chartboost/sdk/impl/l;->u:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 211
    iget-object v0, p1, Lcom/chartboost/sdk/impl/l;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/l;->u:Ljava/lang/String;

    .line 212
    :cond_11
    iget-object v0, p1, Lcom/chartboost/sdk/impl/l;->u:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 213
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/l;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_5

    .line 218
    :cond_12
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/l;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/r;->a(Ljava/lang/String;)V

    goto :goto_5
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/l;Landroid/content/Context;Lcom/chartboost/sdk/impl/l$1;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/l$a;-><init>(Lcom/chartboost/sdk/impl/l;Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/chartboost/sdk/impl/l$b;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 398
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iput-object p1, v0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    .line 399
    sget-object v0, Lcom/chartboost/sdk/impl/l$2;->a:[I

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/l$b;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 446
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l$a;->g()Z

    move-result v0

    .line 447
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/l$a;->d(Z)Lcom/chartboost/sdk/impl/bf;

    move-result-object v3

    .line 448
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 449
    iget-object v4, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v4, v0, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 450
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/l$a;->d(Z)Lcom/chartboost/sdk/impl/bf;

    move-result-object v0

    .line 451
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 452
    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v3, v2, v0, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 455
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->P:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->O:Z

    if-eqz v0, :cond_2

    .line 456
    :cond_1
    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->t()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/chartboost/sdk/impl/l$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 457
    :cond_2
    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->t()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_2
    iget-object v4, p0, Lcom/chartboost/sdk/impl/l$a;->c:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 458
    sget-object v0, Lcom/chartboost/sdk/impl/l$b;->a:Lcom/chartboost/sdk/impl/l$b;

    if-eq p1, v0, :cond_d

    :goto_3
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/l$a;->a(Z)V

    .line 459
    return-void

    .line 401
    :pswitch_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->t()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    iget-object v4, p0, Lcom/chartboost/sdk/impl/l$a;->e:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 402
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v3, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v3, :cond_3

    .line 403
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->l:Lcom/chartboost/sdk/impl/o;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 404
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->O:Z

    if-eqz v0, :cond_4

    .line 405
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->m:Landroid/view/View;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 406
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 407
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->k:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 408
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->n:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 409
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->e:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bf;->setEnabled(Z)V

    .line 410
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->k:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bf;->setEnabled(Z)V

    .line 411
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/r;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 401
    goto :goto_4

    .line 414
    :pswitch_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->e:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 415
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v3, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v3, :cond_6

    .line 416
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->l:Lcom/chartboost/sdk/impl/o;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 417
    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->O:Z

    if-eqz v0, :cond_7

    .line 418
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->m:Landroid/view/View;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 419
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 420
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->k:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 421
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->n:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 422
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->e:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->setEnabled(Z)V

    .line 423
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->k:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bf;->setEnabled(Z)V

    .line 424
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/r;->setEnabled(Z)V

    goto/16 :goto_0

    .line 427
    :pswitch_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->e:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 428
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v3, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v3, :cond_8

    .line 429
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->l:Lcom/chartboost/sdk/impl/o;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 430
    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->O:Z

    if-eqz v0, :cond_9

    .line 431
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->m:Landroid/view/View;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 432
    :cond_9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 433
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->k:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 434
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->L:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->K:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->B:Z

    if-eqz v0, :cond_a

    move v0, v1

    .line 436
    :goto_5
    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/l$a;->n:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;Z)V

    .line 437
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->k:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->setEnabled(Z)V

    .line 438
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->e:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->setEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/r;->setEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->D:Z

    if-eqz v0, :cond_0

    .line 441
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/l$a;->e(Z)V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 434
    goto :goto_5

    :cond_b
    move v0, v2

    .line 456
    goto/16 :goto_1

    :cond_c
    move v0, v2

    .line 457
    goto/16 :goto_2

    :cond_d
    move v1, v2

    .line 458
    goto/16 :goto_3

    .line 399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private e(Z)V
    .locals 4

    .prologue
    .line 386
    if-eqz p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->i:Lcom/chartboost/sdk/impl/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/m;->a(Z)V

    .line 390
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/l$a$4;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/l$a$4;-><init>(Lcom/chartboost/sdk/impl/l$a;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 395
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->i:Lcom/chartboost/sdk/impl/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/m;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(FFFF)V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    sget-object v1, Lcom/chartboost/sdk/impl/l$b;->b:Lcom/chartboost/sdk/impl/l$b;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    sget-object v1, Lcom/chartboost/sdk/impl/l$b;->a:Lcom/chartboost/sdk/impl/l$b;

    if-ne v0, v1, :cond_2

    .line 533
    :cond_1
    :goto_0
    return-void

    .line 530
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chartboost/sdk/impl/l$a;->b(FFFF)V

    goto :goto_0
.end method

.method protected a(II)V
    .locals 11

    .prologue
    .line 247
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/impl/k$a;->a(II)V

    .line 250
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/impl/l$a;->a(Lcom/chartboost/sdk/impl/l$b;Z)V

    .line 252
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->a()Lcom/chartboost/sdk/Libraries/e;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e;->a()Z

    move-result v2

    .line 255
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 257
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 259
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 261
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 263
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 265
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->c:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/be;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 268
    iget-object v8, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/l;->G:Lcom/chartboost/sdk/Libraries/i;

    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v4, v1, v9}, Lcom/chartboost/sdk/impl/l;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/i;F)V

    .line 269
    iget-object v8, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    if-eqz v2, :cond_4

    const-string v1, "replay-portrait"

    :goto_1
    invoke-virtual {v8, v1}, Lcom/chartboost/sdk/impl/l;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 270
    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v8, v8

    iget v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, v1, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 271
    iget v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v9, v9

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v0, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v0, v10

    add-float/2addr v0, v9

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v1, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v1, v9

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 272
    const/4 v1, 0x0

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v8, p1, v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 273
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 274
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->k:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->bringToFront()V

    .line 275
    if-eqz v2, :cond_5

    .line 276
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->k:Lcom/chartboost/sdk/impl/bf;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/l;->G:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/Libraries/i;)V

    .line 280
    :goto_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->e:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 281
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/l;->t()Z

    move-result v1

    if-nez v1, :cond_6

    .line 283
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 284
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 285
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 286
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 288
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 289
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 290
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 291
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 305
    :goto_3
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 306
    const/16 v1, 0x48

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 307
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 308
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x48

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 310
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->O:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v1, :cond_1

    .line 313
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->l:Lcom/chartboost/sdk/impl/o;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/impl/r;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->n:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v0, v7}, Lcom/chartboost/sdk/impl/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->k:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/bf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v1, :cond_2

    .line 319
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->l:Lcom/chartboost/sdk/impl/o;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o;->a()V

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r;->a()V

    .line 321
    return-void

    .line 268
    :cond_3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/l;->F:Lcom/chartboost/sdk/Libraries/i;

    goto/16 :goto_0

    .line 269
    :cond_4
    const-string v1, "replay-landscape"

    goto/16 :goto_1

    .line 278
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->k:Lcom/chartboost/sdk/impl/bf;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/l;->F:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/Libraries/i;)V

    goto/16 :goto_2

    .line 294
    :cond_6
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v9, -0x2

    invoke-direct {v8, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 296
    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/l;->m:Lcom/chartboost/sdk/Libraries/i;

    .line 297
    :goto_4
    iget-object v2, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v2, v8, v1, v9}, Lcom/chartboost/sdk/impl/l;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/i;F)V

    .line 298
    const/4 v2, 0x0

    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 299
    const/4 v2, 0x0

    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 300
    const/16 v2, 0xb

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 301
    iget-object v2, p0, Lcom/chartboost/sdk/impl/l$a;->o:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v2, v8}, Lcom/chartboost/sdk/impl/bf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v2, p0, Lcom/chartboost/sdk/impl/l$a;->o:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/Libraries/i;)V

    goto/16 :goto_3

    .line 296
    :cond_7
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/l;->n:Lcom/chartboost/sdk/Libraries/i;

    goto :goto_4
.end method

.method public b()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->n()V

    .line 486
    invoke-super {p0}, Lcom/chartboost/sdk/impl/k$a;->b()V

    .line 487
    return-void
.end method

.method protected b(FFFF)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 536
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    sget-object v1, Lcom/chartboost/sdk/impl/l$b;->b:Lcom/chartboost/sdk/impl/l$b;

    if-ne v0, v1, :cond_0

    .line 537
    invoke-virtual {p0, v6}, Lcom/chartboost/sdk/impl/l$a;->c(Z)V

    .line 539
    :cond_0
    new-array v0, v5, [Lcom/chartboost/sdk/Libraries/d$a;

    const-string v1, "click_coordinates"

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/chartboost/sdk/Libraries/d$a;

    const-string v3, "x"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "y"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "w"

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "h"

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/d;->a([Lcom/chartboost/sdk/Libraries/d$a;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/d;->a([Lcom/chartboost/sdk/Libraries/d$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 545
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/l;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 546
    return-void
.end method

.method b(Z)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 324
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    sget-object v3, Lcom/chartboost/sdk/impl/l$b;->b:Lcom/chartboost/sdk/impl/l$b;

    if-ne v0, v3, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->A:Z

    if-eqz v0, :cond_2

    .line 329
    sget-object v0, Lcom/chartboost/sdk/impl/l$b;->a:Lcom/chartboost/sdk/impl/l$b;

    invoke-direct {p0, v0, p1}, Lcom/chartboost/sdk/impl/l$a;->a(Lcom/chartboost/sdk/impl/l$b;Z)V

    goto :goto_0

    .line 332
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/impl/l$b;->b:Lcom/chartboost/sdk/impl/l$b;

    invoke-direct {p0, v0, p1}, Lcom/chartboost/sdk/impl/l$a;->a(Lcom/chartboost/sdk/impl/l$b;Z)V

    .line 334
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "timer"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 336
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget v0, v0, Lcom/chartboost/sdk/impl/l;->t:I

    if-ge v0, v1, :cond_4

    if-eqz v3, :cond_4

    const-string v0, "delay"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 337
    const-string v4, "InterstitialVideoViewProtocol"

    const-string v5, "controls starting %s, setting timer"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->z:Z

    if-eqz v0, :cond_3

    const-string v0, "visible"

    :goto_1
    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v2, v2, Lcom/chartboost/sdk/impl/l;->z:Z

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/r;->b(Z)V

    .line 339
    const-wide v4, 0x408f400000000000L    # 1000.0

    const-string v0, "delay"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 340
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    new-instance v5, Lcom/chartboost/sdk/impl/l$a$3;

    invoke-direct {v5, p0}, Lcom/chartboost/sdk/impl/l$a$3;-><init>(Lcom/chartboost/sdk/impl/l$a;)V

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/chartboost/sdk/impl/l;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 354
    :goto_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r;->e()V

    .line 355
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget v0, v0, Lcom/chartboost/sdk/impl/l;->t:I

    if-gt v0, v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->g()V

    goto :goto_0

    .line 337
    :cond_3
    const-string v0, "hidden"

    goto :goto_1

    .line 351
    :cond_4
    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->z:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/impl/r;->b(Z)V

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method c(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 363
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r;->f()V

    .line 365
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    sget-object v1, Lcom/chartboost/sdk/impl/l$b;->b:Lcom/chartboost/sdk/impl/l$b;

    if-eq v0, v1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    if-eqz p1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget v0, v0, Lcom/chartboost/sdk/impl/l;->t:I

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    const-string v1, "post-video-reward-toaster"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->C:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->K:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->L:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/l$a;->e(Z)V

    .line 377
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/impl/l$b;->c:Lcom/chartboost/sdk/impl/l$b;

    invoke-direct {p0, v0, v2}, Lcom/chartboost/sdk/impl/l$a;->a(Lcom/chartboost/sdk/impl/l$b;Z)V

    .line 379
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Lcom/chartboost/sdk/Libraries/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l$a;->requestLayout()V

    goto :goto_0
.end method

.method public d(Z)Lcom/chartboost/sdk/impl/bf;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->t()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->o:Lcom/chartboost/sdk/impl/bf;

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->d:Lcom/chartboost/sdk/impl/bf;

    goto :goto_0
.end method

.method protected d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-super {p0}, Lcom/chartboost/sdk/impl/k$a;->d()V

    .line 226
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    sget-object v1, Lcom/chartboost/sdk/impl/l$b;->a:Lcom/chartboost/sdk/impl/l$b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/l$a;->b(Z)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    invoke-direct {p0, v0, v2}, Lcom/chartboost/sdk/impl/l$a;->a(Lcom/chartboost/sdk/impl/l$b;Z)V

    goto :goto_0
.end method

.method protected e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 491
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->y:Lorg/json/JSONObject;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "cancel-popup"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    sget-object v2, Lcom/chartboost/sdk/impl/l$b;->b:Lcom/chartboost/sdk/impl/l$b;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "confirm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r;->g()V

    .line 498
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget v0, v0, Lcom/chartboost/sdk/impl/l;->t:I

    if-ge v0, v3, :cond_0

    .line 499
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->p()V

    .line 522
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    sget-object v1, Lcom/chartboost/sdk/impl/l$b;->b:Lcom/chartboost/sdk/impl/l$b;

    if-ne v0, v1, :cond_1

    .line 505
    invoke-virtual {p0, v4}, Lcom/chartboost/sdk/impl/l$a;->c(Z)V

    .line 506
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r;->h()V

    .line 507
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget v0, v0, Lcom/chartboost/sdk/impl/l;->t:I

    if-ge v0, v3, :cond_1

    .line 508
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget v1, v0, Lcom/chartboost/sdk/impl/l;->t:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/chartboost/sdk/impl/l;->t:I

    .line 509
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->f()V

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/l$a$5;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/l$a$5;-><init>(Lcom/chartboost/sdk/impl/l$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 235
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/l$a;->c(Z)V

    .line 236
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r;->h()V

    .line 237
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget v1, v0, Lcom/chartboost/sdk/impl/l;->t:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/chartboost/sdk/impl/l;->t:I

    .line 238
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget v0, v0, Lcom/chartboost/sdk/impl/l;->t:I

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget v0, v0, Lcom/chartboost/sdk/impl/l;->w:I

    if-lt v0, v2, :cond_0

    .line 240
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->f()V

    .line 242
    :cond_0
    return-void
.end method

.method protected g()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 462
    .line 463
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    sget-object v3, Lcom/chartboost/sdk/impl/l$b;->b:Lcom/chartboost/sdk/impl/l$b;

    if-ne v0, v3, :cond_4

    .line 465
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget v0, v0, Lcom/chartboost/sdk/impl/l;->t:I

    if-ge v0, v2, :cond_4

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->a()Lcom/chartboost/sdk/Libraries/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "portrait"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/l;->g()Lorg/json/JSONObject;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_1

    const-string v3, "delay"

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 470
    :goto_1
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 471
    :goto_2
    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iput v0, v3, Lcom/chartboost/sdk/impl/l;->E:I

    .line 472
    if-ltz v0, :cond_3

    .line 473
    iget-object v3, p0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/r;->b()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/chartboost/sdk/impl/bb$a;->d()I

    move-result v3

    if-le v0, v3, :cond_4

    move v0, v1

    .line 480
    :goto_3
    return v0

    .line 466
    :cond_0
    const-string v0, "landscape"

    goto :goto_0

    .line 469
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    .line 470
    :cond_2
    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 476
    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/l;->A:Z

    .line 551
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/l$a;->b(Z)V

    .line 552
    return-void
.end method
