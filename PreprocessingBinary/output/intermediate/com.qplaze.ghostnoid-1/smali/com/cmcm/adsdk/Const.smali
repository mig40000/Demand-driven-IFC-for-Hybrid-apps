.class public final Lcom/cmcm/adsdk/Const;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/Const$pkgName;,
        Lcom/cmcm/adsdk/Const$cacheTime;,
        Lcom/cmcm/adsdk/Const$res;
    }
.end annotation


# static fields
.field public static CM_AD_DETAIL_URL:Ljava/lang/String; = null

.field public static final CONFIG_URL:Ljava/lang/String; = "http://unconf.adkmob.com/b/"

.field public static final CONFIG_URL_CN:Ljava/lang/String; = "http://unconf.mobad.ijinshan.com/b/"

.field public static final CONFIG_URL_UFS:Ljava/lang/String; = "http://ufs.adkmob.com/p/"

.field public static final HOST_NAME:Ljava/lang/String; = "unconf.adkmob.com"

.field public static final HOST_NAME_CN:Ljava/lang/String; = "unconf.mobad.ijinshan.com"

.field public static final HOST_NAME_UFS:Ljava/lang/String; = "ufs.adkmob.com"

.field public static final KEY_AB:Ljava/lang/String; = "ab"

.field public static final KEY_BD:Ljava/lang/String; = "bd"

.field public static final KEY_CB:Ljava/lang/String; = "cb"

.field public static final KEY_CM:Ljava/lang/String; = "cm"

.field public static final KEY_CM_BANNER:Ljava/lang/String; = "cmb"

.field public static final KEY_CM_INTERSTITIAL:Ljava/lang/String; = "cmi"

.field public static final KEY_FACEBOOK_VIDEO:Ljava/lang/String; = "fbv"

.field public static final KEY_FB:Ljava/lang/String; = "fb"

.field public static final KEY_FB_B:Ljava/lang/String; = "fb_b"

.field public static final KEY_FB_H:Ljava/lang/String; = "fb_h"

.field public static final KEY_FB_INTERSTITIAL:Ljava/lang/String; = "fbi"

.field public static final KEY_FB_L:Ljava/lang/String; = "fb_l"

.field public static final KEY_GDT:Ljava/lang/String; = "gdt"

.field public static final KEY_ICLICK:Ljava/lang/String; = "ic"

.field public static final KEY_ICLICK_VIDEO:Ljava/lang/String; = "ic_video"

.field public static final KEY_IM:Ljava/lang/String; = "im"

.field public static final KEY_JUHE:Ljava/lang/String; = "ad"

.field public static final KEY_LOOPME_VIDEO:Ljava/lang/String; = "lpv"

.field public static final KEY_MOPUB_VIDEO:Ljava/lang/String; = "mpv"

.field public static final KEY_MP:Ljava/lang/String; = "mp"

.field public static final KEY_MP_BANNER:Ljava/lang/String; = "mpb"

.field public static final KEY_PM:Ljava/lang/String; = "pm"

.field public static final KEY_VAST_VIDEO:Ljava/lang/String; = "vav"

.field public static final KEY_VUNGLE_VIDEO:Ljava/lang/String; = "vgv"

.field public static final KEY_YH:Ljava/lang/String; = "yh"

.field public static final NET_TIMEOUT:I = 0x3a98

.field public static REPORT_BANNER_SUFFIX:Ljava/lang/String; = null

.field public static REPORT_INTERSTITIAL_SUFFIX:Ljava/lang/String; = null

.field public static REPORT_SPLASH_SUFFIX:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "CMCMADSDK"

.field public static final VERSION:Ljava/lang/String; = "3.4.7"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-string v0, "splash"

    sput-object v0, Lcom/cmcm/adsdk/Const;->REPORT_SPLASH_SUFFIX:Ljava/lang/String;

    .line 104
    const-string v0, "interstitial"

    sput-object v0, Lcom/cmcm/adsdk/Const;->REPORT_INTERSTITIAL_SUFFIX:Ljava/lang/String;

    .line 106
    const-string v0, "banner"

    sput-object v0, Lcom/cmcm/adsdk/Const;->REPORT_BANNER_SUFFIX:Ljava/lang/String;

    .line 108
    const-string v0, "http://ad.cmcm.com/"

    sput-object v0, Lcom/cmcm/adsdk/Const;->CM_AD_DETAIL_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method
