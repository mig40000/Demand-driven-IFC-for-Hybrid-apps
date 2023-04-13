.class abstract Lcom/yandex/metrica/impl/ob/do$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# static fields
.field static final a:Ljava/lang/Integer;

.field static final b:Ljava/lang/Integer;

.field static final c:Ljava/lang/Integer;

.field static final d:Ljava/lang/Integer;

.field static final e:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/do$b;->a:Ljava/lang/Integer;

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/do$b;->b:Ljava/lang/Integer;

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/do$b;->c:Ljava/lang/Integer;

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/do$b;->d:Ljava/lang/Integer;

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/do$b;->e:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Landroid/telephony/CellInfo;)Lcom/yandex/metrica/impl/ob/do;
.end method

.method protected a(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/telephony/CellSignalStrength;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Integer;)Lcom/yandex/metrica/impl/ob/do;
    .locals 12

    .prologue
    .line 53
    const/4 v5, 0x0

    .line 54
    if-eqz p1, :cond_0

    .line 55
    sget-object v1, Lcom/yandex/metrica/impl/ob/do$b;->a:Ljava/lang/Integer;

    if-eq p1, v1, :cond_4

    :goto_0
    move-object v5, p1

    .line 57
    :cond_0
    const/4 v4, 0x0

    .line 58
    if-eqz p2, :cond_1

    .line 59
    sget-object v1, Lcom/yandex/metrica/impl/ob/do$b;->b:Ljava/lang/Integer;

    if-eq p2, v1, :cond_5

    :goto_1
    move-object v4, p2

    .line 61
    :cond_1
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 63
    :goto_2
    const/4 v2, 0x0

    .line 64
    if-eqz p5, :cond_2

    .line 65
    sget-object v1, Lcom/yandex/metrica/impl/ob/do$b;->c:Ljava/lang/Integer;

    move-object/from16 v0, p5

    if-eq v0, v1, :cond_7

    :goto_3
    move-object/from16 v2, p5

    .line 67
    :cond_2
    const/4 v3, 0x0

    .line 68
    if-eqz p4, :cond_3

    .line 69
    sget-object v1, Lcom/yandex/metrica/impl/ob/do$b;->d:Ljava/lang/Integer;

    move-object/from16 v0, p4

    if-eq v0, v1, :cond_8

    :goto_4
    move-object/from16 v3, p4

    .line 71
    :cond_3
    if-eqz p8, :cond_9

    sget-object v1, Lcom/yandex/metrica/impl/ob/do$b;->e:Ljava/lang/Integer;

    move-object/from16 v0, p8

    if-eq v0, v1, :cond_9

    move-object/from16 v11, p8

    .line 73
    :goto_5
    new-instance v1, Lcom/yandex/metrica/impl/ob/do;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v11}, Lcom/yandex/metrica/impl/ob/do;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Integer;)V

    .line 77
    return-object v1

    .line 55
    :cond_4
    const/4 p1, 0x0

    goto :goto_0

    .line 59
    :cond_5
    const/4 p2, 0x0

    goto :goto_1

    .line 61
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 65
    :cond_7
    const/16 p5, 0x0

    goto :goto_3

    .line 69
    :cond_8
    const/16 p4, 0x0

    goto :goto_4

    .line 71
    :cond_9
    const/4 v11, 0x0

    goto :goto_5
.end method
