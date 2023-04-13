.class public Lcom/appodeal/ads/utils/PermissionsHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/utils/PermissionsHelper$AppodealPermissionCallbacks;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Z

.field private static c:Lcom/appodeal/ads/utils/PermissionsHelper;


# instance fields
.field private d:Lcom/appodeal/ads/utils/PermissionsHelper$AppodealPermissionCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appodeal/ads/utils/PermissionsHelper;->a:Z

    sput-boolean v0, Lcom/appodeal/ads/utils/PermissionsHelper;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/appodeal/ads/utils/PermissionsHelper;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/utils/PermissionsHelper;->c:Lcom/appodeal/ads/utils/PermissionsHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/PermissionsHelper;

    invoke-direct {v0}, Lcom/appodeal/ads/utils/PermissionsHelper;-><init>()V

    sput-object v0, Lcom/appodeal/ads/utils/PermissionsHelper;->c:Lcom/appodeal/ads/utils/PermissionsHelper;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/utils/PermissionsHelper;->c:Lcom/appodeal/ads/utils/PermissionsHelper;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/appodeal/ads/utils/PermissionsHelper;->d:Lcom/appodeal/ads/utils/PermissionsHelper$AppodealPermissionCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/PermissionsHelper;->d:Lcom/appodeal/ads/utils/PermissionsHelper$AppodealPermissionCallbacks;

    invoke-interface {v0, p2}, Lcom/appodeal/ads/utils/PermissionsHelper$AppodealPermissionCallbacks;->writeExternalStorageResponse(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/appodeal/ads/utils/PermissionsHelper;->d:Lcom/appodeal/ads/utils/PermissionsHelper$AppodealPermissionCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/PermissionsHelper;->d:Lcom/appodeal/ads/utils/PermissionsHelper$AppodealPermissionCallbacks;

    invoke-interface {v0, p2}, Lcom/appodeal/ads/utils/PermissionsHelper$AppodealPermissionCallbacks;->accessCoarseLocationResponse(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/app/Activity;Lcom/appodeal/ads/utils/PermissionsHelper$AppodealPermissionCallbacks;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/appodeal/ads/utils/PermissionsHelper;->d:Lcom/appodeal/ads/utils/PermissionsHelper$AppodealPermissionCallbacks;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sget-boolean v2, Lcom/appodeal/ads/utils/PermissionsHelper;->a:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-boolean v2, Lcom/appodeal/ads/utils/PermissionsHelper;->b:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v2, "permissions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/appodeal/ads/utils/PermissionFragment;

    invoke-direct {v2}, Lcom/appodeal/ads/utils/PermissionFragment;-><init>()V

    invoke-virtual {v2, v0}, Lcom/appodeal/ads/utils/PermissionFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "PermissionFragment"

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
