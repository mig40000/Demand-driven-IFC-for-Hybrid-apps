.class public Lcom/cmcm/picks/vastvideo/g;
.super Ljava/lang/Object;
.source "VastXmlParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/picks/vastvideo/g$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/cmcm/picks/vastvideo/VastModel$a;
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 235
    .line 236
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "delivery"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    const/4 v1, 0x0

    const-string v3, "type"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    const/4 v1, 0x0

    const-string v3, "bitrate"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    const/4 v1, 0x0

    const-string v4, "width"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    const/4 v1, 0x0

    const-string v5, "height"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 241
    const/4 v1, 0x0

    const-string v6, "id"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 242
    const/4 v1, 0x0

    const-string v7, "scalable"

    invoke-interface {p1, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 243
    const/4 v1, 0x0

    const-string v8, "maintainAspectRatio"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 245
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 246
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-object v0

    .line 249
    :cond_1
    const-string v1, "."

    invoke-virtual {v9, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 250
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    const-string v1, "mp4"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3gp"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    :cond_2
    new-instance v1, Lcom/cmcm/picks/vastvideo/VastModel$a;

    invoke-direct {v1}, Lcom/cmcm/picks/vastvideo/VastModel$a;-><init>()V

    .line 255
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "[0-9]+"

    invoke-virtual {v3, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 256
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/cmcm/picks/vastvideo/VastModel$a;->c(I)V

    .line 258
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "[0-9]+"

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 259
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/cmcm/picks/vastvideo/VastModel$a;->a(I)V

    .line 261
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "[0-9]+"

    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 262
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/cmcm/picks/vastvideo/VastModel$a;->b(I)V

    .line 264
    :cond_5
    const-string v3, "true"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 265
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/cmcm/picks/vastvideo/VastModel$a;->a(Z)V

    .line 269
    :goto_1
    const-string v3, "true"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 270
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/cmcm/picks/vastvideo/VastModel$a;->b(Z)V

    .line 274
    :goto_2
    invoke-virtual {v1, v2}, Lcom/cmcm/picks/vastvideo/VastModel$a;->a(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1, v6}, Lcom/cmcm/picks/vastvideo/VastModel$a;->b(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v1, v10}, Lcom/cmcm/picks/vastvideo/VastModel$a;->d(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1, v9}, Lcom/cmcm/picks/vastvideo/VastModel$a;->c(Ljava/lang/String;)V

    move-object v0, v1

    .line 279
    goto/16 :goto_0

    .line 267
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/cmcm/picks/vastvideo/VastModel$a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 281
    :catch_0
    move-exception v1

    .line 282
    sget-object v2, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xml parse failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_0

    .line 284
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 272
    :cond_7
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/cmcm/picks/vastvideo/VastModel$a;->b(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private a(Lcom/cmcm/picks/vastvideo/VastModel;Ljava/lang/String;)Lcom/cmcm/picks/vastvideo/VastModel;
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->z()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cmcm/picks/vastvideo/g;->b(Lcom/cmcm/picks/vastvideo/VastModel;Ljava/lang/String;)Lcom/cmcm/picks/vastvideo/VastModel;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/VastModel;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/VastModel;->y()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/VastModel;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/VastModel;->y()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/cmcm/picks/vastvideo/g;->a(Lcom/cmcm/picks/vastvideo/VastModel;Ljava/lang/String;)Lcom/cmcm/picks/vastvideo/VastModel;

    :cond_1
    move-object v0, v1

    .line 79
    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/g;Lcom/cmcm/picks/vastvideo/VastModel;Ljava/lang/String;)Lcom/cmcm/picks/vastvideo/VastModel;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/cmcm/picks/vastvideo/g;->a(Lcom/cmcm/picks/vastvideo/VastModel;Ljava/lang/String;)Lcom/cmcm/picks/vastvideo/VastModel;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 367
    :cond_0
    return-object p1
.end method

.method private a(Lcom/cmcm/picks/vastvideo/VastModel;ZLcom/cmcm/picks/vastvideo/g$a;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 31
    if-eqz p3, :cond_0

    .line 32
    new-instance v0, Lcom/cmcm/picks/vastvideo/g$1;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cmcm/picks/vastvideo/g$1;-><init>(Lcom/cmcm/picks/vastvideo/g;ZLcom/cmcm/picks/vastvideo/g$a;Lcom/cmcm/picks/vastvideo/VastModel;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 43
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/g;Lcom/cmcm/picks/vastvideo/VastModel;ZLcom/cmcm/picks/vastvideo/g$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cmcm/picks/vastvideo/g;->a(Lcom/cmcm/picks/vastvideo/VastModel;ZLcom/cmcm/picks/vastvideo/g$a;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/cmcm/picks/vastvideo/VastModel;Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 150
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 151
    const-string v3, "AdTitle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/cmcm/picks/vastvideo/VastModel;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    move v0, v1

    .line 230
    :cond_1
    :goto_1
    return v0

    .line 153
    :cond_2
    const-string v3, "Error"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 154
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->c()Ljava/util/List;

    move-result-object v2

    .line 155
    if-nez v2, :cond_3

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p1, v2}, Lcom/cmcm/picks/vastvideo/VastModel;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 224
    sget-object v2, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xml parse failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_1

    .line 226
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 160
    :cond_4
    :try_start_1
    const-string v3, "Impression"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 161
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->d()Ljava/util/List;

    move-result-object v2

    .line 162
    if-nez v2, :cond_5

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 165
    :cond_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {p1, v2}, Lcom/cmcm/picks/vastvideo/VastModel;->b(Ljava/util/List;)V

    goto :goto_0

    .line 167
    :cond_6
    const-string v3, "Tracking"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/cmcm/picks/vastvideo/g;->b(Lcom/cmcm/picks/vastvideo/VastModel;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    .line 169
    if-nez v2, :cond_0

    goto :goto_1

    .line 172
    :cond_7
    const-string v3, "ClickThrough"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 173
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/cmcm/picks/vastvideo/VastModel;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_8
    const-string v3, "MediaFile"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 175
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->t()Ljava/util/List;

    move-result-object v2

    .line 176
    if-nez v2, :cond_9

    .line 177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    :cond_9
    invoke-direct {p0, p2}, Lcom/cmcm/picks/vastvideo/g;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/cmcm/picks/vastvideo/VastModel$a;

    move-result-object v3

    .line 180
    if-eqz v3, :cond_a

    .line 181
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_a
    invoke-virtual {p1, v2}, Lcom/cmcm/picks/vastvideo/VastModel;->q(Ljava/util/List;)V

    goto/16 :goto_0

    .line 184
    :cond_b
    const-string v3, "Ad"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 185
    const/4 v2, 0x0

    const-string v3, "id"

    invoke-interface {p2, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/cmcm/picks/vastvideo/VastModel;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_c
    const-string v3, "ClickTracking"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 187
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->s()Ljava/util/List;

    move-result-object v2

    .line 188
    if-nez v2, :cond_d

    .line 189
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    :cond_d
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {p1, v2}, Lcom/cmcm/picks/vastvideo/VastModel;->p(Ljava/util/List;)V

    goto/16 :goto_0

    .line 193
    :cond_e
    const-string v3, "Companion"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 194
    const/4 v2, 0x0

    const-string v3, "id"

    invoke-interface {p2, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmcm/picks/vastvideo/g;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 195
    :cond_f
    const-string v3, "Icon"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 196
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/cmcm/picks/vastvideo/VastModel;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_10
    const-string v3, "StaticResource"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 198
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/cmcm/picks/vastvideo/g;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    const-string v3, "pre-roll"

    iget-object v4, p0, Lcom/cmcm/picks/vastvideo/g;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 201
    invoke-virtual {p1, v2}, Lcom/cmcm/picks/vastvideo/VastModel;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_11
    const-string v3, "post-roll"

    iget-object v4, p0, Lcom/cmcm/picks/vastvideo/g;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    invoke-virtual {p1, v2}, Lcom/cmcm/picks/vastvideo/VastModel;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :cond_12
    const-string v3, "Wrapper"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 207
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/cmcm/picks/vastvideo/VastModel;->b(Z)V

    .line 208
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->z()I

    move-result v2

    .line 209
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Lcom/cmcm/picks/vastvideo/VastModel;->a(I)V

    goto/16 :goto_0

    .line 210
    :cond_13
    const-string v3, "VASTAdTagURI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->y()Ljava/util/List;

    move-result-object v2

    .line 213
    if-nez v2, :cond_14

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 216
    :cond_14
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 220
    :cond_15
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {p1, v2}, Lcom/cmcm/picks/vastvideo/VastModel;->r(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private b(Lcom/cmcm/picks/vastvideo/VastModel;Ljava/lang/String;)Lcom/cmcm/picks/vastvideo/VastModel;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 145
    :goto_0
    return-object v0

    .line 86
    :cond_0
    const/4 v2, 0x0

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/g;->a:Ljava/lang/String;

    .line 91
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    const v3, 0x2bf20

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 94
    const v3, 0x2bf20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 95
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_2

    .line 134
    if-eqz v1, :cond_1

    .line 136
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 137
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v0, v1

    .line 142
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 98
    :cond_2
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 99
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    :try_start_4
    const-string v2, "utf-8"

    invoke-interface {v5, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 101
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    move v4, v2

    move-object v2, p1

    .line 102
    :goto_2
    const/4 v6, 0x1

    if-eq v4, v6, :cond_9

    .line 103
    packed-switch v4, :pswitch_data_0

    .line 125
    :cond_3
    :goto_3
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_2

    .line 105
    :pswitch_1
    if-nez v2, :cond_4

    .line 106
    new-instance v2, Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-direct {v2}, Lcom/cmcm/picks/vastvideo/VastModel;-><init>()V

    .line 108
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/cmcm/picks/vastvideo/VastModel;->b(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 127
    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    .line 128
    :goto_4
    :try_start_5
    sget-object v4, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xml parse failed :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-boolean v4, Lcom/cmcm/utils/g;->a:Z

    if-eqz v4, :cond_5

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 134
    :cond_5
    if-eqz v3, :cond_6

    .line 136
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 137
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_6
    :goto_5
    move-object v0, v1

    .line 142
    goto/16 :goto_0

    .line 111
    :pswitch_2
    :try_start_7
    invoke-direct {p0, v2, v5}, Lcom/cmcm/picks/vastvideo/g;->a(Lcom/cmcm/picks/vastvideo/VastModel;Lorg/xmlpull/v1/XmlPullParser;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v4

    .line 112
    if-nez v4, :cond_3

    .line 134
    if-eqz v3, :cond_7

    .line 136
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 137
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_7
    :goto_6
    move-object v0, v1

    .line 142
    goto/16 :goto_0

    .line 138
    :catch_2
    move-exception v0

    .line 139
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_7

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 117
    :pswitch_3
    :try_start_9
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 118
    const-string v6, "VAST"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    if-eqz v2, :cond_3

    .line 134
    if-eqz v3, :cond_8

    .line 136
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 137
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_8
    :goto_7
    move-object v0, v2

    .line 142
    goto/16 :goto_0

    .line 138
    :catch_3
    move-exception v0

    .line 139
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_8

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 134
    :cond_9
    if-eqz v3, :cond_a

    .line 136
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 137
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_a
    :goto_8
    move-object v0, v2

    .line 145
    goto/16 :goto_0

    .line 138
    :catch_4
    move-exception v0

    .line 139
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_a

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 138
    :catch_5
    move-exception v0

    .line 139
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_6

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 134
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_9
    if-eqz v3, :cond_b

    .line 136
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 137
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 142
    :cond_b
    :goto_a
    throw v0

    .line 138
    :catch_6
    move-exception v1

    .line 139
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_b

    .line 140
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 134
    :catchall_1
    move-exception v2

    move-object v3, v1

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    goto :goto_9

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_9

    .line 127
    :catch_7
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_4

    :catch_8
    move-exception v2

    move-object v3, v1

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    goto/16 :goto_4

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Lcom/cmcm/picks/vastvideo/VastModel;Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 4

    .prologue
    .line 294
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "event"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    const-string v1, "creativeView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->e()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 297
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual {p1, v0}, Lcom/cmcm/picks/vastvideo/VastModel;->c(Ljava/util/List;)V

    .line 360
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 299
    :cond_1
    const-string v1, "start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->f()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 301
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {p1, v0}, Lcom/cmcm/picks/vastvideo/VastModel;->d(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    sget-object v1, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xml parse failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_2

    .line 356
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 358
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 303
    :cond_3
    :try_start_1
    const-string v1, "firstQuartile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 304
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->g()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 305
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {p1, v0}, Lcom/cmcm/picks/vastvideo/VastModel;->e(Ljava/util/List;)V

    goto :goto_0

    .line 308
    :cond_4
    const-string v1, "midpoint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 309
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->h()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 310
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-virtual {p1, v0}, Lcom/cmcm/picks/vastvideo/VastModel;->f(Ljava/util/List;)V

    goto :goto_0

    .line 313
    :cond_5
    const-string v1, "thirdQuartile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 314
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->i()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 315
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {p1, v0}, Lcom/cmcm/picks/vastvideo/VastModel;->g(Ljava/util/List;)V

    goto/16 :goto_0

    .line 318
    :cond_6
    const-string v1, "complete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 319
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->j()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 320
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {p1, v0}, Lcom/cmcm/picks/vastvideo/VastModel;->h(Ljava/util/List;)V

    goto/16 :goto_0

    .line 323
    :cond_7
    const-string v1, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 324
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->k()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 325
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {p1, v0}, Lcom/cmcm/picks/vastvideo/VastModel;->i(Ljava/util/List;)V

    goto/16 :goto_0

    .line 328
    :cond_8
    const-string v1, "pause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 329
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->l()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 330
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual {p1, v0}, Lcom/cmcm/picks/vastvideo/VastModel;->j(Ljava/util/List;)V

    goto/16 :goto_0

    .line 332
    :cond_9
    const-string v1, "resume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 333
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->o()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 334
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-virtual {p1, v0}, Lcom/cmcm/picks/vastvideo/VastModel;->m(Ljava/util/List;)V

    goto/16 :goto_0

    .line 336
    :cond_a
    const-string v1, "mute"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 337
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->m()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 338
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {p1, v0}, Lcom/cmcm/picks/vastvideo/VastModel;->k(Ljava/util/List;)V

    goto/16 :goto_0

    .line 340
    :cond_b
    const-string v1, "unmute"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 341
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->n()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 342
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {p1, v0}, Lcom/cmcm/picks/vastvideo/VastModel;->l(Ljava/util/List;)V

    goto/16 :goto_0

    .line 344
    :cond_c
    const-string v1, "fullscreen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 345
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->p()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 346
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {p1, v0}, Lcom/cmcm/picks/vastvideo/VastModel;->n(Ljava/util/List;)V

    goto/16 :goto_0

    .line 348
    :cond_d
    const-string v1, "exitFullscreen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->q()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 350
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-virtual {p1, v0}, Lcom/cmcm/picks/vastvideo/VastModel;->o(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/cmcm/picks/vastvideo/g$a;)V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/cmcm/picks/vastvideo/g$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmcm/picks/vastvideo/g$2;-><init>(Lcom/cmcm/picks/vastvideo/g;Ljava/lang/String;Lcom/cmcm/picks/vastvideo/g$a;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method
