.class public Lcom/appodeal/ads/an$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/an$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/an$a;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/appodeal/ads/an$a;->c:Z

    return-void
.end method
