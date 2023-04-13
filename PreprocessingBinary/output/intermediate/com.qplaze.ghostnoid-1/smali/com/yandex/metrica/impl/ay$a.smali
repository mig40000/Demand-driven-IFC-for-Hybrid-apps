.class Lcom/yandex/metrica/impl/ay$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1118
    const-string v0, "native"

    .line 1120
    const-string v1, "com.unity3d.player.UnityPlayer"

    invoke-static {v1}, Lcom/yandex/metrica/impl/ay;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1121
    const-string v0, "unity"

    .line 115
    :cond_0
    :goto_0
    sput-object v0, Lcom/yandex/metrica/impl/ay$a;->a:Ljava/lang/String;

    return-void

    .line 1122
    :cond_1
    const-string v1, "mono.MonoPackageManager"

    invoke-static {v1}, Lcom/yandex/metrica/impl/ay;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1123
    const-string v0, "xamarin"

    goto :goto_0
.end method
