.class public Lcom/baidu/resultcard/CardLibrary;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "SDKCard"

.field private static sAppContext:Landroid/content/Context;

.field private static sBdct:Ljava/lang/String;

.field public static sCommonCardSid:I

.field public static sDebug:Z

.field public static sMainCardSid:I

.field private static sMutexReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/resultcard/view/BaseResultCardView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/resultcard/CardLibrary;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/resultcard/CardLibrary;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/resultcard/CardLibrary;->storeDataPipeMess(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/baidu/resultcard/CardLibrary;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getBdct()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/resultcard/CardLibrary;->sBdct:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/resultcard/CardLibrary;->sBdct:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "a"

    goto :goto_0
.end method

.method public static getCards()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/baidu/resultcard/CardLibrary$CardType;",
            "Lcom/baidu/resultcard/view/BaseResultCardView;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/baidu/resultcard/CardLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/baidu/resultcard/MainCardManager;->getMainView(Landroid/content/Context;)Lcom/baidu/resultcard/view/BaseResultCardView;

    move-result-object v2

    sget-object v3, Lcom/baidu/resultcard/CardLibrary$CardType;->CARD_MAIN:Lcom/baidu/resultcard/CardLibrary$CardType;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/baidu/resultcard/view/BaseResultCardView;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/resultcard/CommonCardManager;->getCommonCardView(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/resultcard/view/BaseResultCardView;

    move-result-object v0

    sget-object v2, Lcom/baidu/resultcard/CardLibrary$CardType;->CARD_COMMON:Lcom/baidu/resultcard/CardLibrary$CardType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static getCommonCard()Lcom/baidu/resultcard/view/BaseResultCardView;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/resultcard/CardLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget-object v0, Lcom/baidu/resultcard/CardLibrary;->sMutexReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/resultcard/CardLibrary;->sMutexReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/resultcard/view/BaseResultCardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/resultcard/view/BaseResultCardView;->getPkgName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v3, Lcom/baidu/resultcard/CardLibrary;->sMutexReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->clear()V

    sput-object v1, Lcom/baidu/resultcard/CardLibrary;->sMutexReference:Ljava/lang/ref/WeakReference;

    :goto_1
    invoke-static {v2, v0}, Lcom/baidu/resultcard/CommonCardManager;->getCommonCardView(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/resultcard/view/BaseResultCardView;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static getMainCard()Lcom/baidu/resultcard/view/BaseResultCardView;
    .locals 2

    invoke-static {}, Lcom/baidu/resultcard/CardLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/resultcard/MainCardManager;->getMainView(Landroid/content/Context;)Lcom/baidu/resultcard/view/BaseResultCardView;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/baidu/resultcard/CardLibrary;->sMutexReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static init(Lcom/baidu/resultcard/CardLibrary$CardParameter;)Z
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/resultcard/CardLibrary$CardParameter;->checkParameters()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/resultcard/CardLibrary;->sAppContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->bdct:Ljava/lang/String;

    sput-object v0, Lcom/baidu/resultcard/CardLibrary;->sBdct:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->debug:Z

    sput-boolean v0, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    iget v0, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->mainCardSid:I

    sput v0, Lcom/baidu/resultcard/CardLibrary;->sMainCardSid:I

    iget v0, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->commonCardSid:I

    sput v0, Lcom/baidu/resultcard/CardLibrary;->sCommonCardSid:I

    sget-boolean v0, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    invoke-static {v0}, Lcom/baidu/scenery/utils/LogHelper;->setLogEnabled(Z)V

    sget-boolean v0, Lcom/baidu/resultcard/CardLibrary;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SDKCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CardLibrary:init sDebug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->mobuleEnv:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobula/reportsdk/MobulaCore;->setEnvironment(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/resultcard/CardLibrary;->sAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/resultcard/common/PhotoScanner;->getInstance(Landroid/content/Context;)Lcom/baidu/resultcard/common/PhotoScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/resultcard/common/PhotoScanner;->initPhotoNum()V

    sget-object v0, Lcom/baidu/resultcard/CardLibrary;->sAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/resultcard/CardLibrary;->registerPictureReceiver(Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/resultcard/CardLibrary;->sAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/resultcard/CardLibrary;->registerPackageReceiver(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static initDataPipe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/baidu/resultcard/CardLibrary$1;

    invoke-direct {v0, p1, p0}, Lcom/baidu/resultcard/CardLibrary$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/dianxinos/library/notify/c;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/e;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baidu.sample"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "card_json.txt"

    invoke-static {p0, v0}, Lcom/baidu/scenery/TestGetJson;->getJsonBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-static {p1}, Lcom/dianxinos/library/notify/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/baidu/resultcard/CardLibrary;->storeDataPipeMess(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    return v0
.end method

.method private static registerPackageReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/resultcard/common/PackageChangeReceiver;

    invoke-direct {v1}, Lcom/baidu/resultcard/common/PackageChangeReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static registerPictureReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/baidu/resultcard/common/PhotoReceiver;

    invoke-direct {v1}, Lcom/baidu/resultcard/common/PhotoReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static storeDataPipeMess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/baidu/resultcard/CardDataPipe;->fromJson(Ljava/lang/String;)Lcom/baidu/resultcard/CardDataPipe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/resultcard/CardDataPipe;->save(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/baidu/resultcard/CardLibrary;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SDKCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeDataPipeMess: JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
