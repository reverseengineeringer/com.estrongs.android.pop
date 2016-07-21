.class public Lcom/baidu/resultcard/CardDataPipe;
.super Ljava/lang/Object;


# static fields
.field public static DEFAULT_COMMON_PKG_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAUlT_ES_DAYS:I = 0x3

.field public static final DEFAUlT_ES_SIZE:I = 0x12c

.field public static final DEFAUlT_MOTU_DAYS:I = 0x3


# instance fields
.field private mEsDays:I

.field private mEsSize:I

.field private mMotuDays:I

.field private mPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.estrongs.android.pop"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.duapps.cleaner"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/baidu/resultcard/CardDataPipe;->DEFAULT_COMMON_PKG_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/resultcard/CardDataPipe;->mPkgList:Ljava/util/List;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/baidu/resultcard/CardDataPipe;
    .locals 7

    const/4 v6, 0x3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/resultcard/CardDataPipe;

    invoke-direct {v2}, Lcom/baidu/resultcard/CardDataPipe;-><init>()V

    const-string v0, "card_app_list"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, v2, Lcom/baidu/resultcard/CardDataPipe;->mPkgList:Ljava/util/List;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "card_es"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "days"

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/baidu/resultcard/CardDataPipe;->mEsDays:I

    const-string v3, "size_mb"

    const/16 v4, 0x12c

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/baidu/resultcard/CardDataPipe;->mEsSize:I

    :cond_1
    const-string v0, "card_motu"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "days"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/baidu/resultcard/CardDataPipe;->mMotuDays:I

    :cond_2
    return-object v2
.end method


# virtual methods
.method public save(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/resultcard/CardDataPipe;->mPkgList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/baidu/resultcard/CardPreferences;->setCloudCommonCardPkgs(Landroid/content/Context;Ljava/util/List;)V

    iget v0, p0, Lcom/baidu/resultcard/CardDataPipe;->mEsDays:I

    invoke-static {p1, v0}, Lcom/baidu/resultcard/CardPreferences;->setEsCardDays(Landroid/content/Context;I)V

    iget v0, p0, Lcom/baidu/resultcard/CardDataPipe;->mEsSize:I

    invoke-static {p1, v0}, Lcom/baidu/resultcard/CardPreferences;->setEsCardSizeMB(Landroid/content/Context;I)V

    iget v0, p0, Lcom/baidu/resultcard/CardDataPipe;->mMotuDays:I

    invoke-static {p1, v0}, Lcom/baidu/resultcard/CardPreferences;->setMotuCardDays(Landroid/content/Context;I)V

    return-void
.end method
