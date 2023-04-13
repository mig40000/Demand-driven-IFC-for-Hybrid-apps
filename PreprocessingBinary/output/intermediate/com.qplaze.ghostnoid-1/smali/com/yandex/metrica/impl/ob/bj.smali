.class public final Lcom/yandex/metrica/impl/ob/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/bj$b;,
        Lcom/yandex/metrica/impl/ob/bj$a;,
        Lcom/yandex/metrica/impl/ob/bj$f;,
        Lcom/yandex/metrica/impl/ob/bj$e;,
        Lcom/yandex/metrica/impl/ob/bj$d;,
        Lcom/yandex/metrica/impl/ob/bj$c;,
        Lcom/yandex/metrica/impl/ob/bj$r;,
        Lcom/yandex/metrica/impl/ob/bj$q;,
        Lcom/yandex/metrica/impl/ob/bj$p;,
        Lcom/yandex/metrica/impl/ob/bj$o;,
        Lcom/yandex/metrica/impl/ob/bj$n;,
        Lcom/yandex/metrica/impl/ob/bj$j;,
        Lcom/yandex/metrica/impl/ob/bj$i;,
        Lcom/yandex/metrica/impl/ob/bj$h;,
        Lcom/yandex/metrica/impl/ob/bj$g;,
        Lcom/yandex/metrica/impl/ob/bj$m;,
        Lcom/yandex/metrica/impl/ob/bj$l;,
        Lcom/yandex/metrica/impl/ob/bj$t;,
        Lcom/yandex/metrica/impl/ob/bj$s;,
        Lcom/yandex/metrica/impl/ob/bj$k;,
        Lcom/yandex/metrica/impl/ob/bj$u;,
        Lcom/yandex/metrica/impl/ob/bj$y;,
        Lcom/yandex/metrica/impl/ob/bj$v;,
        Lcom/yandex/metrica/impl/ob/bj$x;,
        Lcom/yandex/metrica/impl/ob/bj$w;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Boolean;

.field public static final b:I

.field static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yandex/metrica/impl/ob/bj$k;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yandex/metrica/impl/ob/bj$k;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x32

    const/16 v5, 0x2f

    const/16 v4, 0x1d

    const/4 v3, 0x0

    .line 50
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/bj;->a:Ljava/lang/Boolean;

    .line 53
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryApiLevel()I

    move-result v0

    sput v0, Lcom/yandex/metrica/impl/ob/bj;->b:I

    .line 446
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 447
    sput-object v0, Lcom/yandex/metrica/impl/ob/bj;->c:Landroid/util/SparseArray;

    const/4 v1, 0x6

    new-instance v2, Lcom/yandex/metrica/impl/ob/bj$s;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/bj$s;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    sget-object v0, Lcom/yandex/metrica/impl/ob/bj;->c:Landroid/util/SparseArray;

    const/4 v1, 0x7

    new-instance v2, Lcom/yandex/metrica/impl/ob/bj$t;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/bj$t;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    sget-object v0, Lcom/yandex/metrica/impl/ob/bj;->c:Landroid/util/SparseArray;

    const/16 v1, 0xe

    new-instance v2, Lcom/yandex/metrica/impl/ob/bj$l;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/bj$l;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    sget-object v0, Lcom/yandex/metrica/impl/ob/bj;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bj$m;

    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/bj$m;-><init>(B)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    sget-object v0, Lcom/yandex/metrica/impl/ob/bj;->c:Landroid/util/SparseArray;

    const/16 v1, 0x25

    new-instance v2, Lcom/yandex/metrica/impl/ob/bj$n;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/bj$n;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    sget-object v0, Lcom/yandex/metrica/impl/ob/bj;->c:Landroid/util/SparseArray;

    const/16 v1, 0x27

    new-instance v2, Lcom/yandex/metrica/impl/ob/bj$o;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/bj$o;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    sget-object v0, Lcom/yandex/metrica/impl/ob/bj;->c:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    new-instance v2, Lcom/yandex/metrica/impl/ob/bj$p;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/bj$p;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    sget-object v0, Lcom/yandex/metrica/impl/ob/bj;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bj$q;

    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/bj$q;-><init>(B)V

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    sget-object v0, Lcom/yandex/metrica/impl/ob/bj;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bj$r;

    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/bj$r;-><init>(B)V

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 458
    sput-object v0, Lcom/yandex/metrica/impl/ob/bj;->d:Landroid/util/SparseArray;

    const/16 v1, 0xc

    new-instance v2, Lcom/yandex/metrica/impl/ob/bj$g;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/bj$g;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    sget-object v0, Lcom/yandex/metrica/impl/ob/bj;->d:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bj$h;

    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/bj$h;-><init>(B)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    sget-object v0, Lcom/yandex/metrica/impl/ob/bj;->d:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bj$i;

    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/bj$i;-><init>(B)V

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    sget-object v0, Lcom/yandex/metrica/impl/ob/bj;->d:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bj$j;

    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/bj$j;-><init>(B)V

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 464
    sput-object v0, Lcom/yandex/metrica/impl/ob/bj;->e:Ljava/util/HashMap;

    const-string v1, "reports"

    sget-object v2, Lcom/yandex/metrica/impl/ob/bj$w;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/yandex/metrica/impl/ob/bj;->e:Ljava/util/HashMap;

    const-string v1, "sessions"

    sget-object v2, Lcom/yandex/metrica/impl/ob/bj$x;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/yandex/metrica/impl/ob/bj;->e:Ljava/util/HashMap;

    const-string v1, "preferences"

    sget-object v2, Lcom/yandex/metrica/impl/ob/bj$v;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/bo;
    .locals 6

    .prologue
    .line 470
    new-instance v0, Lcom/yandex/metrica/impl/ob/bo;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bj$c;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/bj$c;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/bj$d;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/bj$d;-><init>()V

    sget-object v3, Lcom/yandex/metrica/impl/ob/bj;->c:Landroid/util/SparseArray;

    new-instance v4, Lcom/yandex/metrica/impl/ob/bq;

    sget-object v5, Lcom/yandex/metrica/impl/ob/bj;->e:Ljava/util/HashMap;

    invoke-direct {v4, v5}, Lcom/yandex/metrica/impl/ob/bq;-><init>(Ljava/util/HashMap;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/bo;-><init>(Lcom/yandex/metrica/impl/ob/bj$k;Lcom/yandex/metrica/impl/ob/bj$k;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/bp;)V

    return-object v0
.end method

.method public static b()Lcom/yandex/metrica/impl/ob/bo;
    .locals 6

    .prologue
    .line 480
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 481
    const-string v1, "preferences"

    sget-object v2, Lcom/yandex/metrica/impl/ob/bj$v;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string v1, "startup"

    sget-object v2, Lcom/yandex/metrica/impl/ob/bj$y;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    new-instance v1, Lcom/yandex/metrica/impl/ob/bo;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bj$e;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/bj$e;-><init>()V

    new-instance v3, Lcom/yandex/metrica/impl/ob/bj$f;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/bj$f;-><init>()V

    sget-object v4, Lcom/yandex/metrica/impl/ob/bj;->d:Landroid/util/SparseArray;

    new-instance v5, Lcom/yandex/metrica/impl/ob/bq;

    invoke-direct {v5, v0}, Lcom/yandex/metrica/impl/ob/bq;-><init>(Ljava/util/HashMap;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/bo;-><init>(Lcom/yandex/metrica/impl/ob/bj$k;Lcom/yandex/metrica/impl/ob/bj$k;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/bp;)V

    return-object v1
.end method

.method public static c()Lcom/yandex/metrica/impl/ob/bo;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 494
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 495
    const-string v1, "preferences"

    sget-object v2, Lcom/yandex/metrica/impl/ob/bj$v;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    new-instance v1, Lcom/yandex/metrica/impl/ob/bo;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bj$a;

    invoke-direct {v2, v4}, Lcom/yandex/metrica/impl/ob/bj$a;-><init>(B)V

    new-instance v3, Lcom/yandex/metrica/impl/ob/bj$b;

    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/bj$b;-><init>(B)V

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/bq;

    invoke-direct {v5, v0}, Lcom/yandex/metrica/impl/ob/bq;-><init>(Ljava/util/HashMap;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/bo;-><init>(Lcom/yandex/metrica/impl/ob/bj$k;Lcom/yandex/metrica/impl/ob/bj$k;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/bp;)V

    return-object v1
.end method
