.class Lcom/baidu/mobstat/ae;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:I

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Android"

    sput-object v0, Lcom/baidu/mobstat/ae;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/ae;->d:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/mobstat/ae;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mobstat/ae;->g:I

    iput-object v1, p0, Lcom/baidu/mobstat/ae;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/util/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/util/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/util/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/util/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/ae;->b:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->getOSSysVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/ae;->c:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getPhoneModel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/ae;->n:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/baidu/mobstat/CooperService;->getDeviceId(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/ae;->i:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/r;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    :goto_0
    iput-object v1, p0, Lcom/baidu/mobstat/ae;->e:Ljava/lang/String;

    sget-object v1, Lcom/baidu/mobstat/Build;->d:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/mobstat/ae;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/Build;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/ae;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/CooperService;->getMacID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/ae;->r:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/baidu/mobstat/aw;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/ae;->t:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/CooperService;->getCUID(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/CooperService;->getOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ae;->m:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    :try_start_5
    invoke-static {p1}, Lcom/baidu/mobstat/aw;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/ae;->j:I

    invoke-static {p1}, Lcom/baidu/mobstat/aw;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/ae;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "sdkstat"

    const-string v1, "Configuration.ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/baidu/mobstat/ae;->j:I

    iget v1, p0, Lcom/baidu/mobstat/ae;->k:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/ae;->j:I

    iget v0, p0, Lcom/baidu/mobstat/ae;->j:I

    iget v1, p0, Lcom/baidu/mobstat/ae;->k:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/ae;->k:I

    iget v0, p0, Lcom/baidu/mobstat/ae;->j:I

    iget v1, p0, Lcom/baidu/mobstat/ae;->k:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/ae;->j:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :goto_4
    :try_start_6
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ae;->l:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ae;->d:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/ae;->g:I

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ae;->h:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_5
    :try_start_8
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->checkCellLocationSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/baidu/mobstat/aw;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ae;->o:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_6
    :try_start_9
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->checkGPSLocationSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/baidu/mobstat/aw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ae;->p:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_7
    :try_start_a
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getLinkedWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ae;->q:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_8
    monitor-exit p0

    return-void

    :cond_2
    :try_start_b
    const-string v1, "0"

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    :try_start_c
    invoke-static {v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    :cond_3
    :try_start_d
    const-string v0, "0_0_0"

    iput-object v0, p0, Lcom/baidu/mobstat/ae;->o:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    :catch_5
    move-exception v0

    :try_start_e
    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_6

    :cond_4
    :try_start_f
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/ae;->p:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_7

    :catch_6
    move-exception v0

    :try_start_10
    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_7
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_8
.end method

.method public declared-synchronized a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const-string v0, "sdkstat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***** have been installHeader header="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "sdkstat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installHeader header="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ae;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "o"

    sget-object v0, Lcom/baidu/mobstat/ae;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "s"

    iget-object v0, p0, Lcom/baidu/mobstat/ae;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sv"

    iget-object v0, p0, Lcom/baidu/mobstat/ae;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "k"

    iget-object v0, p0, Lcom/baidu/mobstat/ae;->d:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pt"

    iget-object v0, p0, Lcom/baidu/mobstat/ae;->e:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "0"

    :goto_5
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "i"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "v"

    sget-object v1, Lcom/baidu/mobstat/t;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "a"

    iget v1, p0, Lcom/baidu/mobstat/ae;->g:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "n"

    iget-object v0, p0, Lcom/baidu/mobstat/ae;->h:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_6
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "d"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mc"

    iget-object v0, p0, Lcom/baidu/mobstat/ae;->r:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_7
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bm"

    iget-object v0, p0, Lcom/baidu/mobstat/ae;->t:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_8
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dd"

    iget-object v0, p0, Lcom/baidu/mobstat/ae;->i:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_9
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ii"

    iget-object v0, p0, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_a
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tg"

    sget v1, Lcom/baidu/mobstat/t;->b:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "w"

    iget v1, p0, Lcom/baidu/mobstat/ae;->j:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "h"

    iget v1, p0, Lcom/baidu/mobstat/ae;->k:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "c"

    iget-object v0, p0, Lcom/baidu/mobstat/ae;->l:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_b
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "op"

    iget-object v0, p0, Lcom/baidu/mobstat/ae;->m:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_c
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "m"

    iget-object v0, p0, Lcom/baidu/mobstat/ae;->n:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_d
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cl"

    iget-object v1, p0, Lcom/baidu/mobstat/ae;->o:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gl"

    iget-object v0, p0, Lcom/baidu/mobstat/ae;->p:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    :goto_e
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "l"

    iget-object v0, p0, Lcom/baidu/mobstat/ae;->q:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_f
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "sq"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "pn"

    invoke-static {p1}, Lcom/baidu/mobstat/aw;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pl"

    invoke-static {p1}, Lcom/baidu/mobstat/aw;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdkstat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*******"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "header ini error"

    const-string v1, "sdkstat"

    invoke-static {v1, v0}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    sget-object v0, Lcom/baidu/mobstat/ae;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/ae;->b:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/ae;->c:Ljava/lang/String;

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/ae;->d:Ljava/lang/String;

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lcom/baidu/mobstat/ae;->e:Ljava/lang/String;

    goto/16 :goto_5

    :cond_6
    iget-object v0, p0, Lcom/baidu/mobstat/ae;->h:Ljava/lang/String;

    goto/16 :goto_6

    :cond_7
    iget-object v0, p0, Lcom/baidu/mobstat/ae;->r:Ljava/lang/String;

    goto/16 :goto_7

    :cond_8
    iget-object v0, p0, Lcom/baidu/mobstat/ae;->t:Ljava/lang/String;

    goto/16 :goto_8

    :cond_9
    iget-object v0, p0, Lcom/baidu/mobstat/ae;->i:Ljava/lang/String;

    goto/16 :goto_9

    :cond_a
    iget-object v0, p0, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;

    goto/16 :goto_a

    :cond_b
    iget-object v0, p0, Lcom/baidu/mobstat/ae;->l:Ljava/lang/String;

    goto/16 :goto_b

    :cond_c
    iget-object v0, p0, Lcom/baidu/mobstat/ae;->m:Ljava/lang/String;

    goto/16 :goto_c

    :cond_d
    iget-object v0, p0, Lcom/baidu/mobstat/ae;->n:Ljava/lang/String;

    goto/16 :goto_d

    :cond_e
    iget-object v0, p0, Lcom/baidu/mobstat/ae;->p:Ljava/lang/String;

    goto/16 :goto_e

    :cond_f
    iget-object v0, p0, Lcom/baidu/mobstat/ae;->q:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_f
.end method
