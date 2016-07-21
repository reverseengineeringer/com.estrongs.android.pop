.class public Lcom/estrongs/android/pop/FexApplication;
.super Landroid/support/multidex/MultiDexApplication;

# interfaces
.implements Lcom/estrongs/android/pop/app/d/b;


# static fields
.field public static a:Z

.field private static e:Lcom/estrongs/android/pop/FexApplication;

.field private static r:Z


# instance fields
.field b:Z

.field c:Z

.field d:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private f:Z

.field private g:Landroid/content/pm/PackageManager;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/h;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/estrongs/android/pop/app/service/b;

.field private n:Landroid/os/Handler;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/preference/q;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/FexApplication;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/FexApplication;->e:Lcom/estrongs/android/pop/FexApplication;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/FexApplication;->r:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    iput-boolean v2, p0, Lcom/estrongs/android/pop/FexApplication;->f:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/FexApplication;->i:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/FexApplication;->j:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/FexApplication;->k:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/FexApplication;->l:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/pop/FexApplication;->q:J

    iput-boolean v2, p0, Lcom/estrongs/android/pop/FexApplication;->b:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/FexApplication;->c:Z

    new-instance v0, Lcom/estrongs/android/pop/g;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/g;-><init>(Lcom/estrongs/android/pop/FexApplication;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method public static a()Lcom/estrongs/android/pop/FexApplication;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/FexApplication;->e:Lcom/estrongs/android/pop/FexApplication;

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/FexApplication;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->o:Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    sget-boolean v0, Lcom/estrongs/android/pop/FexApplication;->r:Z

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/baidu/sapi2/SapiConfiguration$Builder;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "esfb"

    const-string v2, "1"

    const-string v3, "3e504de3df373ce5e1080f3b9c33afba"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->setProductLineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    const/4 v2, 0x0

    sget-object v3, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->SINA_WEIBO_WEBVIEW:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->TX_QQ_WEBVIEW:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->RENREN_WEBVIEW:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->fastLoginSupport([Lcom/baidu/sapi2/utils/enums/FastLoginFeature;)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->enableB2CSync(Z)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_ONLINE:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->setRuntimeEnvironment(Lcom/baidu/sapi2/utils/enums/Domain;)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->SILENT:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->initialShareStrategy(Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;

    sget-object v2, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    sget-object v3, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    sget-object v4, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    invoke-direct {v1, v2, v3, v4}, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;-><init>(Lcom/baidu/sapi2/utils/enums/Switch;Lcom/baidu/sapi2/utils/enums/Switch;Lcom/baidu/sapi2/utils/enums/Switch;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->smsLoginConfig(Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->debug(Z)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->build()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/SapiAccountManager;->init(Lcom/baidu/sapi2/SapiConfiguration;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/FexApplication;->r:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-boolean v5, Lcom/estrongs/android/pop/FexApplication;->r:Z

    goto :goto_0
.end method

.method public static e()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v2, "Market"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/FexApplication;->e:Lcom/estrongs/android/pop/FexApplication;

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/FexApplication;->e:Lcom/estrongs/android/pop/FexApplication;

    :cond_1
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/estrongs/android/util/ao;

    invoke-direct {v2, v0}, Lcom/estrongs/android/util/ao;-><init>(Ljava/lang/Object;)V

    const-string v0, "isUserAMonkey"

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private p()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/z;->a()V

    sget-boolean v0, Lcom/estrongs/android/pop/z;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->f:Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->h:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private q()V
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/g;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/m;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/estrongs/android/pop/a;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bm;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/y;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/estrongs/android/util/ax;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_3
    return-void

    :cond_2
    const-string v2, "files"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/android/pop/FexApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/g;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/m;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_2
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/estrongs/android/pop/a;->g:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_5
    invoke-static {}, Lcom/estrongs/android/pop/b;->d()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "exteral database not writable"

    invoke-static {v0}, Lcom/estrongs/android/util/x;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_6
    sget-object v0, Lcom/estrongs/android/pop/a;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bm;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/pop/a;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/y;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/estrongs/android/pop/a;->g:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v2, v0}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/estrongs/android/pop/a;->g:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v2, v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->setPath(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/estrongs/android/util/ax;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/estrongs/android/pop/a;->g:Ljava/lang/String;

    goto :goto_4

    :cond_8
    sget-object v0, Lcom/estrongs/android/pop/a;->g:Ljava/lang/String;

    goto :goto_5

    :cond_9
    sget-object v0, Lcom/estrongs/android/pop/a;->g:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :cond_a
    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/a;->g:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    sget-object v0, Lcom/estrongs/android/pop/a;->g:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_3
.end method

.method private r()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/e;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/e;-><init>(Lcom/estrongs/android/pop/FexApplication;)V

    invoke-static {v0}, Lcom/baidu/sapi2/SapiAccountManager;->registerSilentShareListener(Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;)V

    new-instance v0, Lcom/estrongs/android/pop/f;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/f;-><init>(Lcom/estrongs/android/pop/FexApplication;)V

    invoke-static {v0}, Lcom/baidu/sapi2/SapiAccountManager;->registerReceiveShareListener(Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;)V

    return-void
.end method

.method private s()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const-string v1, "oem"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const-string v1, "channel"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/a;->b:Ljava/lang/String;

    return-void
.end method

.method private t()V
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/pop/app/messagebox/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/messagebox/n;

    move-result-object v0

    const-string v1, "prod"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/n;->a(Ljava/lang/String;)V

    const-string v0, "others"

    invoke-static {v0}, Lcom/dianxinos/dxservice/core/e;->a(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "prod"

    invoke-static {v0}, Lcom/dianxinos/dxservice/core/e;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/FexApplication;->u()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/messagebox/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/messagebox/n;->a()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private u()V
    .locals 2

    new-instance v0, Lcom/dianxinos/library/notify/g;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/g;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/dianxinos/library/notify/g;->a:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dianxinos/library/notify/g;->b:Z

    const-string v1, "others"

    iput-object v1, v0, Lcom/dianxinos/library/notify/g;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/dianxinos/library/notify/c;->a(Lcom/dianxinos/library/notify/g;)V

    return-void
.end method

.method private v()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/k/d;

    const-string v1, "lock_realtimemonitor"

    invoke-direct {v0, v1}, Lcom/estrongs/android/k/d;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/k/h;->a()Lcom/estrongs/android/k/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/k/h;->a(Lcom/estrongs/android/k/d;)V

    new-instance v0, Lcom/estrongs/android/k/d;

    const-string v1, "lock_nomedia"

    invoke-direct {v0, v1}, Lcom/estrongs/android/k/d;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/k/h;->a()Lcom/estrongs/android/k/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/k/h;->a(Lcom/estrongs/android/k/d;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/estrongs/android/pop/app/service/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/FexApplication;->m:Lcom/estrongs/android/pop/app/service/b;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/h;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/estrongs/android/ui/preference/q;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/FexApplication;->o:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->n:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->n:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/estrongs/android/pop/d;-><init>(Lcom/estrongs/android/pop/FexApplication;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->f:Z

    iput-boolean p1, p0, Lcom/estrongs/android/pop/FexApplication;->f:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/h;

    invoke-interface {v0}, Lcom/estrongs/android/pop/h;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/support/multidex/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public declared-synchronized b(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/estrongs/android/ui/preference/q;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/FexApplication;->o:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/FexApplication;->i:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->p:Z

    return v0
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->p:Z

    iget-wide v0, p0, Lcom/estrongs/android/pop/FexApplication;->q:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/pop/FexApplication;->q:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/c;-><init>(Lcom/estrongs/android/pop/FexApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/FexApplication;->j:Z

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->p:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/FexApplication;->q:J

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/FexApplication;->k:Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/FexApplication;->l:Z

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->f:Z

    return v0
.end method

.method public declared-synchronized getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->g:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->g:Landroid/content/pm/PackageManager;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->g:Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/p;->a(Landroid/content/res/Resources;)Lcom/estrongs/android/pop/esclasses/p;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized k()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/FexApplication;->o:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()Lcom/estrongs/android/pop/app/service/b;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->m:Lcom/estrongs/android/pop/app/service/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->m:Lcom/estrongs/android/pop/app/service/b;

    return-object v0
.end method

.method public m()Z
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->c:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/android/pop/view/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/estrongs/android/pop/view/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "com.android.vending"

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/w;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->b:Z

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->c:Z

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->b:Z

    return v0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->b:Z

    goto :goto_0
.end method

.method public n()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public o()V
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->I()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/FexApplication;->c(Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->J()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/FexApplication;->d(Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->K()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/FexApplication;->e(Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->t()Z

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/h/f;->a(Z)V

    return-void
.end method

.method public onCreate()V
    .locals 10

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    sput-object p0, Lcom/estrongs/android/pop/FexApplication;->e:Lcom/estrongs/android/pop/FexApplication;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/FexApplication;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ".esfm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/b;->c()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/FexApplication;->u()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ai;->c()V

    sget-object v0, Lcom/estrongs/android/pop/FexApplication;->e:Lcom/estrongs/android/pop/FexApplication;

    invoke-static {v0}, Lcom/b/a/a;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/FexApplication;->s()V

    invoke-static {}, Lcom/estrongs/android/ui/view/ak;->a()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->n:Landroid/os/Handler;

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/i;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->a(Z)V

    invoke-static {p0}, Lcom/estrongs/android/pop/view/a;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/FexApplication;->p()V

    invoke-static {}, Lcom/estrongs/android/pop/b;->c()V

    invoke-static {p0}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/estrongs/android/h/f;->a(Landroid/content/Context;)Lcom/estrongs/android/h/f;

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->t()Z

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/h/f;->a(Z)V

    new-instance v0, Lcom/estrongs/fs/impl/m/b;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/m/b;-><init>()V

    const-string v2, "http"

    invoke-static {v2, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/u;)V

    const-string v2, "https"

    invoke-static {v2, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/u;)V

    const-string v0, "flashair"

    new-instance v2, Lcom/estrongs/fs/impl/k/c;

    invoke-direct {v2}, Lcom/estrongs/fs/impl/k/c;-><init>()V

    invoke-static {v0, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/u;)V

    new-instance v0, Lcom/estrongs/fs/impl/l/a;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/l/a;-><init>()V

    new-instance v2, Lcom/estrongs/fs/impl/l/c;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/estrongs/fs/impl/l/c;-><init>(Landroid/content/ContentResolver;)V

    const-string v3, "local"

    invoke-virtual {v0, v3, v2}, Lcom/estrongs/fs/impl/l/a;->a(Ljava/lang/String;Lcom/estrongs/fs/impl/l/a;)V

    const-string v2, "gallery"

    invoke-static {v2, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/u;)V

    const-string v0, "adb"

    new-instance v2, Lcom/estrongs/fs/impl/adb/c;

    invoke-direct {v2}, Lcom/estrongs/fs/impl/adb/c;-><init>()V

    invoke-static {v0, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/u;)V

    invoke-static {}, Lcom/estrongs/fs/d;->c()V

    const-string v0, "flashair://"

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/estrongs/fs/impl/k/c;

    invoke-direct {v2}, Lcom/estrongs/fs/impl/k/c;-><init>()V

    invoke-static {v0, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/u;)V

    const-string v0, "search://"

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/impl/s/b;->a()Lcom/estrongs/fs/impl/s/b;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/u;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/bi;->b()V

    invoke-static {}, Lcom/estrongs/android/i/a;->a()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/FexApplication;->q()V

    invoke-static {}, Lcom/estrongs/android/ui/notification/d;->b()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->o:Ljava/util/List;

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->I()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/FexApplication;->c(Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->J()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/FexApplication;->d(Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->K()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/FexApplication;->e(Z)V

    invoke-static {}, Lcom/estrongs/android/nativetool/NativeAuth;->a()V

    sput-boolean v4, Lcom/estrongs/android/nativetool/NativeAuth;->a:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/FexApplication;->r()V

    invoke-static {}, Lcom/estrongs/android/pop/app/ad/a;->a()Lcom/estrongs/android/pop/app/ad/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/ad/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/ad/a/a;->a()Lcom/estrongs/android/pop/app/ad/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/ad/a/a;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/j/c;->c()V

    invoke-static {p0}, Lcom/estrongs/android/c/c/a;->a(Landroid/content/Context;)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/FexApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/estrongs/android/pop/app/ReportAliveReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x8000000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const v4, 0x5265c00

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v8, v4

    add-long/2addr v2, v8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    invoke-static {p0}, Lcom/estrongs/android/c/b/a;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/FexApplication;->v()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/FexApplication;->t()V

    invoke-static {p0}, Lcom/estrongs/android/pop/app/a/a;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/estrongs/android/scanner/service/FileScannerService;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/FexApplication;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/FexApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onLowMemory()V

    invoke-static {}, Lcom/estrongs/android/h/a/e;->c()V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/multidex/MultiDexApplication;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
