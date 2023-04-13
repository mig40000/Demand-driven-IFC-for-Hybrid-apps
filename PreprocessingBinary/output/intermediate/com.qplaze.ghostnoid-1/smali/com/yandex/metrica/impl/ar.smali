.class public Lcom/yandex/metrica/impl/ar;
.super Lcom/yandex/metrica/impl/i;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/IReporter;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/IReporter;Lcom/yandex/metrica/impl/i$a;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/i;-><init>(Lcom/yandex/metrica/impl/i$a;)V

    .line 20
    iput-object p1, p0, Lcom/yandex/metrica/impl/ar;->a:Lcom/yandex/metrica/IReporter;

    .line 21
    return-void
.end method


# virtual methods
.method b(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yandex/metrica/impl/ar;->a:Lcom/yandex/metrica/IReporter;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/IReporter;->reportUnhandledException(Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method
