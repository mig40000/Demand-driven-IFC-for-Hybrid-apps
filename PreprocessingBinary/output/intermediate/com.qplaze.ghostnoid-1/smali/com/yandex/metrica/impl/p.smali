.class public final Lcom/yandex/metrica/impl/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/p$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yandex/metrica/impl/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yandex/metrica/impl/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yandex/metrica/impl/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yandex/metrica/impl/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yandex/metrica/impl/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yandex/metrica/impl/p$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->a:Lcom/yandex/metrica/impl/p$a;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/yandex/metrica/impl/p$a;

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->m:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->j:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->t:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->u:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v7

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->v:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->h:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->w:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->x:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->z:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    .line 113
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/p;->b:Ljava/util/EnumSet;

    .line 126
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->k:Lcom/yandex/metrica/impl/p$a;

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/yandex/metrica/impl/p$a;

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->l:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->r:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->j:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->a:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v7

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->b:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->E:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->h:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->i:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->p:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->q:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->w:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->x:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->z:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    .line 127
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/p;->c:Ljava/util/EnumSet;

    .line 144
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->e:Lcom/yandex/metrica/impl/p$a;

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->k:Lcom/yandex/metrica/impl/p$a;

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->l:Lcom/yandex/metrica/impl/p$a;

    .line 145
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/p;->d:Ljava/util/EnumSet;

    .line 151
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->b:Lcom/yandex/metrica/impl/p$a;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/yandex/metrica/impl/p$a;

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->p:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->C:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->A:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->t:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v7

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->h:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->E:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/p;->a:Ljava/util/EnumSet;

    .line 161
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->q:Lcom/yandex/metrica/impl/p$a;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/yandex/metrica/impl/p$a;

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->j:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->t:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->h:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->u:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v7

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->v:Lcom/yandex/metrica/impl/p$a;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->a:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->i:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->p:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->w:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->x:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/p;->e:Ljava/util/EnumSet;

    .line 175
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->f:Lcom/yandex/metrica/impl/p$a;

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->y:Lcom/yandex/metrica/impl/p$a;

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->g:Lcom/yandex/metrica/impl/p$a;

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->o:Lcom/yandex/metrica/impl/p$a;

    sget-object v4, Lcom/yandex/metrica/impl/p$a;->c:Lcom/yandex/metrica/impl/p$a;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/p;->f:Ljava/util/EnumSet;

    return-void
.end method

.method static a()Lcom/yandex/metrica/impl/h;
    .locals 3

    .prologue
    .line 267
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->j:Lcom/yandex/metrica/impl/p$a;

    .line 268
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->j:Lcom/yandex/metrica/impl/p$a;

    .line 269
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/yandex/metrica/impl/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/yandex/metrica/impl/h;"
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->C:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v1

    invoke-direct {v0, p2, p1, v1, p0}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 293
    invoke-static {p3}, Lcom/yandex/metrica/impl/utils/f;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/e;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/net/Uri;)Lcom/yandex/metrica/impl/h;
    .locals 4

    .prologue
    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 256
    const-string v1, "link"

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v1, Lcom/yandex/metrica/impl/e;

    invoke-static {v0}, Lcom/yandex/metrica/impl/utils/f;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->D:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method public static a(Lcom/yandex/metrica/impl/ak;)Lcom/yandex/metrica/impl/h;
    .locals 4

    .prologue
    .line 261
    if-nez p0, :cond_0

    const-string v0, ""

    .line 262
    :goto_0
    new-instance v1, Lcom/yandex/metrica/impl/e;

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->z:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/p$a;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->z:Lcom/yandex/metrica/impl/p$a;

    .line 263
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ak;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/yandex/metrica/impl/p$a;Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .locals 3

    .prologue
    .line 215
    new-instance v0, Lcom/yandex/metrica/impl/e;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/p$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->c:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->c:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a(I)Z
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/yandex/metrica/impl/p;->d:Ljava/util/EnumSet;

    invoke-static {p0}, Lcom/yandex/metrica/impl/p$a;->a(I)Lcom/yandex/metrica/impl/p$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/yandex/metrica/impl/h;)Z
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/h;->c()I

    move-result v0

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->k:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/h;->c()I

    move-result v0

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->l:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/h;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/yandex/metrica/impl/p$a;)Z
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/yandex/metrica/impl/p;->b:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->B:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->g:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static b(I)Z
    .locals 2

    .prologue
    .line 211
    sget-object v0, Lcom/yandex/metrica/impl/p;->f:Ljava/util/EnumSet;

    invoke-static {p0}, Lcom/yandex/metrica/impl/p$a;->a(I)Lcom/yandex/metrica/impl/p$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Lcom/yandex/metrica/impl/p$a;)Z
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/yandex/metrica/impl/p;->c:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->e:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->y:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static c(Lcom/yandex/metrica/impl/p$a;)Z
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/yandex/metrica/impl/p;->e:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;
    .locals 3

    .prologue
    .line 219
    new-instance v0, Lcom/yandex/metrica/impl/e;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/p$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .locals 3

    .prologue
    .line 251
    new-instance v0, Lcom/yandex/metrica/impl/e;

    const-string v1, ""

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->t:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
