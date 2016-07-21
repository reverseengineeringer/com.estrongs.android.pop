.class Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;
.super Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;


# static fields
.field private static final DEBUG:Z

.field public static final DEF_CHECK_FACE:Z = true

.field public static final DEF_NOT_SUPPORT_CHECK_DESKTOP_FUN_ON:Z = false

.field public static final MINI_IMAGE_SIZE:J = 0x4b000L

.field private static final TAG:Ljava/lang/String; = "scenery"


# instance fields
.field mCheckFace:Z

.field mSwitch4Android51:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->mCheckFace:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->mSwitch4Android51:Z

    const-string v0, "cn.jingling.motu.photowonder"

    iput-object v0, p0, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->mCloudRecommendPkg:Ljava/lang/String;

    return-void
.end method

.method private checkPhotoFile(Landroid/os/Bundle;)Z
    .locals 8

    const-wide/32 v6, 0x4b000

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "scenery_extra_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": file url is empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/dispatcher/RuleUtils;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": file path is empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": file not exist, file path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": file is too small, file size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", we need "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->mCheckFace:Z

    if-eqz v0, :cond_5

    invoke-static {v1, v2}, Lcom/baidu/scenery/dispatcher/RuleUtils;->isFaceImage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": check face failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget-boolean v0, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "scenery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": not need check face"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public checkConfigRules(Landroid/os/Bundle;)Z
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "scenery_extra_start_time"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v6, v4, v2

    const-wide/32 v8, 0x493e0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "task start time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->checkConfigRules(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-ge v3, v4, :cond_2

    invoke-static {}, Lcom/baidu/scenery/utils/DevicesUtils;->isGalaxyNoteEdge()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-boolean v2, p0, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->mSwitch4Android51:Z

    if-nez v2, :cond_3

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": switch for android5.1 off"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lcom/baidu/scenery/dispatcher/RuleUtils;->isGalleryFirst(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, "scenery_extra_source"

    const-string v2, "extra_source_gallery"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_5
    sget-boolean v3, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "scenery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": gallery is not at the top of screen"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {v2}, Lcom/baidu/scenery/dispatcher/RuleUtils;->isHomeFirst(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "scenery_extra_source"

    const-string v2, "extra_source_home"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_7
    sget-boolean v1, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": home is not at the top of screen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->getInstance()Lcom/baidu/scenery/dispatcher/SceneryDispatcher;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, p1, v4, v5}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->onSceneryOccurDelay(Ljava/lang/String;Landroid/os/Bundle;J)V

    goto/16 :goto_0
.end method

.method protected childHandleScenery(Landroid/os/Bundle;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->checkPhotoFile(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "scenery_extra_name"

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "scenery_extra_recommend_package"

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->getRecommendPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-ge v1, v3, :cond_2

    const-string v1, "scenery_extra_source"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "scenery_extra_source"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v3, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "scenery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " source "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "scenery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": childHandleScenery:Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "scenery_take_photo"

    return-object v0
.end method

.method protected getRecommendPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->mCloudRecommendPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->mCloudRecommendPkg:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cn.jingling.motu.photowonder"

    goto :goto_0
.end method
