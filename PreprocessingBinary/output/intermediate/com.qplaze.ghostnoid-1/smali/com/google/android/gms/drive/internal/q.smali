.class abstract Lcom/google/android/gms/drive/internal/q;
.super Lcom/google/android/gms/common/api/BaseImplementation$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/internal/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/BaseImplementation$a",
        "<TR;",
        "Lcom/google/android/gms/drive/internal/r;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/drive/Drive;->DQ:Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/BaseImplementation$a;-><init>(Lcom/google/android/gms/common/api/Api$c;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method
