.class public Lcom/baidu/scenery/SceneryConstants;
.super Ljava/lang/Object;


# static fields
.field public static final DAY_MS:J = 0x5265c00L

.field public static final EXTRA_SOURCE_GALLERY:Ljava/lang/String; = "extra_source_gallery"

.field public static final EXTRA_SOURCE_HOME:Ljava/lang/String; = "extra_source_home"

.field public static final GOOGLE_PLAY_PKG_NAME:Ljava/lang/String; = "com.android.vending"

.field public static final GOOGLE_PLAY_REFERRER_DEFAULT_BDCT:Ljava/lang/String; = "a"

.field public static final GOOGLE_PLAY_REFERRER_FORMAT:Ljava/lang/String; = "utm_source=%s&utm_medium=%s&pid=%s&bdct=%s"

.field public static final GOOGLE_PLAY_SOURCE_MEDIUM:Ljava/lang/String; = "scenesdk"

.field public static final GOOGLE_PLAY_SOURCE_MEDIUM_RESULTCARD:Ljava/lang/String; = "resultsdk"

.field public static final GOOGLE_PLAY_URL_FORMAT:Ljava/lang/String; = "https://play.google.com/store/apps/details?id=%s&referrer=%s"

.field public static final HALF_HOUR_MS:J = 0x1b7740L

.field public static final HOUR_MS:J = 0x36ee80L

.field public static final MINUTE_MS:J = 0xea60L

.field public static final PKG_DU_ANTIVIRUS:Ljava/lang/String; = "com.duapps.antivirus"

.field public static final PKG_DU_BATTERY:Ljava/lang/String; = "com.dianxinos.dxbs"

.field public static final PKG_DU_BOOSTER:Ljava/lang/String; = "com.dianxinos.optimizer.duplay"

.field public static final PKG_DU_CLEANER:Ljava/lang/String; = "com.duapps.cleaner"

.field public static final PKG_DU_ES:Ljava/lang/String; = "com.estrongs.android.pop"

.field public static final PKG_DU_MOTU:Ljava/lang/String; = "cn.jingling.motu.photowonder"

.field public static final PKG_PRIORITY_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PKG_SCENERY_SAMPLE:Ljava/lang/String; = "com.baidu.sample"

.field public static final SCENERY_CHARGE:Ljava/lang/String; = "scenery_charge"

.field public static final SCENERY_CHARGE_PKG:Ljava/lang/String; = "com.dianxinos.dxbs"

.field public static final SCENERY_DISK_USAGE:Ljava/lang/String; = "scenery_disk_usage"

.field public static final SCENERY_DISK_USAGE_PKG:Ljava/lang/String; = "com.estrongs.android.pop"

.field public static final SCENERY_DISPATCHER_VERSION:I = 0x1

.field public static final SCENERY_EXTRA_CHARGE_TIME:Ljava/lang/String; = "scenery_charge_extra_minutes"

.field public static final SCENERY_EXTRA_DISK_USAGE_SIZE:Ljava/lang/String; = "scenery_extra_disk_usage_size"

.field public static final SCENERY_EXTRA_DISK_USAGE_TIME:Ljava/lang/String; = "scenery_extra_disk_usage_day"

.field public static final SCENERY_EXTRA_NAME:Ljava/lang/String; = "scenery_extra_name"

.field public static final SCENERY_EXTRA_RECOMMEND_PACKAGE:Ljava/lang/String; = "scenery_extra_recommend_package"

.field public static final SCENERY_EXTRA_SOURCE:Ljava/lang/String; = "scenery_extra_source"

.field public static final SCENERY_EXTRA_START_TIME:Ljava/lang/String; = "scenery_extra_start_time"

.field public static final SCENERY_EXTRA_UNINSTALL_APPNAME:Ljava/lang/String; = "scenery_extra_uninstall_appname"

.field public static final SCENERY_EXTRA_UNINSTALL_PKGNAME:Ljava/lang/String; = "scenery_extra_uninstall_pkgname"

.field public static final SCENERY_EXTRA_URI:Ljava/lang/String; = "scenery_extra_uri"

.field public static final SCENERY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCENERY_TAKE_PHOTO:Ljava/lang/String; = "scenery_take_photo"

.field public static final SCENERY_TAKE_PHOTO_PKG:Ljava/lang/String; = "cn.jingling.motu.photowonder"

.field public static final SCENERY_UNINSTALL:Ljava/lang/String; = "scenery_uninstall"

.field public static final SCENERY_UNINSTALL_PKG:Ljava/lang/String; = "com.dianxinos.optimizer.duplay"

.field public static final SCENERY_VERSION_META_DATA_KEY:Ljava/lang/String; = "scenery_dispatcher_version"

.field public static final SECOND_MS:J = 0x3e8L

.field public static final TAG:Ljava/lang/String; = "scenery"

.field public static final TEN_MINUTES_MS:J = 0x927c0L

.field public static final WEEK_MS:J = 0x240c8400L


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "scenery_charge"

    aput-object v2, v0, v1

    const-string v1, "scenery_uninstall"

    aput-object v1, v0, v3

    const-string v1, "scenery_disk_usage"

    aput-object v1, v0, v4

    const-string v1, "scenery_take_photo"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/baidu/scenery/SceneryConstants;->SCENERY_LIST:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/scenery/SceneryConstants;->PKG_PRIORITY_MAP:Ljava/util/HashMap;

    sget-object v0, Lcom/baidu/scenery/SceneryConstants;->PKG_PRIORITY_MAP:Ljava/util/HashMap;

    const-string v1, "com.estrongs.android.pop"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/scenery/SceneryConstants;->PKG_PRIORITY_MAP:Ljava/util/HashMap;

    const-string v1, "cn.jingling.motu.photowonder"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/scenery/SceneryConstants;->PKG_PRIORITY_MAP:Ljava/util/HashMap;

    const-string v1, "com.dianxinos.optimizer.duplay"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/scenery/SceneryConstants;->PKG_PRIORITY_MAP:Ljava/util/HashMap;

    const-string v1, "com.dianxinos.dxbs"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/scenery/SceneryConstants;->PKG_PRIORITY_MAP:Ljava/util/HashMap;

    const-string v1, "com.duapps.cleaner"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
