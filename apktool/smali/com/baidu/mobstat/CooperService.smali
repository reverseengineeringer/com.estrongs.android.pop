.class public Lcom/baidu/mobstat/CooperService;
.super Lcom/baidu/mobstat/s;

# interfaces
.implements Lcom/baidu/mobstat/ICooperService;


# static fields
.field private static a:Lcom/baidu/mobstat/ae;

.field private static b:Lcom/baidu/mobstat/CooperService;

.field private static c:Lorg/json/JSONObject;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/ae;

    invoke-direct {v0}, Lcom/baidu/mobstat/ae;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/CooperService;->c:Lorg/json/JSONObject;

    const-string v0, "activehead"

    sput-object v0, Lcom/baidu/mobstat/CooperService;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/CooperService;->e:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mobstat/s;-><init>()V

    return-void
.end method

.method static a()Lcom/baidu/mobstat/CooperService;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/CooperService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mobstat/CooperService;

    invoke-direct {v0}, Lcom/baidu/mobstat/CooperService;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/CooperService;

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/CooperService;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/baidu/mobstat/aw;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "000000000000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "sdkstat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imei=null,mac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static b()Lcom/baidu/mobstat/ae;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "META-INF/BDPChannelID.xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    if-nez v0, :cond_3

    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/util/e;->b(Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v2, "BDPData"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    move v0, v3

    :goto_2
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "chl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/util/e;->b(Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_6
    :goto_3
    const-string v0, ""

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->b(Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_6
    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->b(Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->b(Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_7

    :try_start_8
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_7
    :goto_6
    throw v0

    :catch_5
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/util/e;->b(Ljava/lang/Throwable;)I

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :cond_8
    move-object v0, v2

    goto/16 :goto_1
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "sdkstat"

    const-string v1, "----------getAppChannel"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->l:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/r;->h(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "sdkstat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------setChannelWithCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/mobstat/r;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/mobstat/ae;->l:Ljava/lang/String;

    const-string v1, "sdkstat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------mHeadObject.channel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v3, v3, Lcom/baidu/mobstat/ae;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->l:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    const-string v1, "BaiduMobAd_CHANNEL"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/aw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/ae;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->l:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getOSSysVersion()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v1, v1, Lcom/baidu/mobstat/ae;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/ae;->c:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public checkCellLocationSetting(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "BaiduMobAd_CELL_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/aw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkGPSLocationSetting(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "BaiduMobAd_GPS_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/aw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkWifiLocationSetting(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "BaiduMobAd_WIFI_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/aw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAppChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/baidu/mobstat/t;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/CooperService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/CooperService;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    const-string v1, "BaiduMobAd_STAT_ID"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/aw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/ae;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionCode(Landroid/content/Context;)I
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget v0, v0, Lcom/baidu/mobstat/ae;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    invoke-static {p1}, Lcom/baidu/mobstat/aw;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mobstat/ae;->g:I

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget v0, v0, Lcom/baidu/mobstat/ae;->g:I

    return v0
.end method

.method public getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v1, v1, Lcom/baidu/mobstat/ae;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    invoke-static {p1}, Lcom/baidu/mobstat/aw;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/ae;->h:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->h:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCUID(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/r;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v1, v1, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    invoke-static {p1}, Lcom/baidu/mobstat/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;

    const-string v0, "\\s*|\t|\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v1, v1, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v1, v1, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v1, v1, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/r;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sdkstat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/baidu/mobstat/util/e;->c([Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/mobstat/t;->e:Ljava/lang/String;

    sget-object v2, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v2, v2, Lcom/baidu/mobstat/ae;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/util/d;->a([B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/util/a;->b(Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->i:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v1, v0, Lcom/baidu/mobstat/ae;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/r;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/CooperService;->getMacIDForTv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/ae;->i:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->i:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "\\s*|\t|\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/baidu/mobstat/CooperService;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/r;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/baidu/mobstat/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "sdkstat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bbe\u5907id\u4e3a\u7a7a\uff0c\u7cfb\u7edf\u751f\u6210id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iput-object v0, v1, Lcom/baidu/mobstat/ae;->i:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v1, v1, Lcom/baidu/mobstat/ae;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/ae;->i:Ljava/lang/String;

    const-string v0, "sdkstat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u5bc6=mHeadObject.deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v2, v2, Lcom/baidu/mobstat/ae;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :try_start_1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/mobstat/t;->e:Ljava/lang/String;

    sget-object v2, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v2, v2, Lcom/baidu/mobstat/ae;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/util/d;->a([B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/util/a;->b(Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "sdkstat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->i:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/Throwable;)I

    move-object v0, v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public bridge synthetic getFloatt(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Float;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->getFloatt(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    const-string v0, "http://hmma.baidu.com/app.gif"

    return-object v0
.end method

.method public bridge synthetic getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLinkedWay(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v1, v1, Lcom/baidu/mobstat/ae;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    invoke-static {p1}, Lcom/baidu/mobstat/aw;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/ae;->q:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->q:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/s;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMTJSDKVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMacID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v1, v1, Lcom/baidu/mobstat/ae;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/r;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobstat/ae;->r:Ljava/lang/String;

    const-string v0, "sdkstat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u5bc6=mHeadObject.mHeadObject.macAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v2, v2, Lcom/baidu/mobstat/ae;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->r:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v1, v1, Lcom/baidu/mobstat/ae;->r:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/r;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->r:Ljava/lang/String;

    return-object v0

    :cond_2
    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iput-object v0, v1, Lcom/baidu/mobstat/ae;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMacIDForTv(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v1, v1, Lcom/baidu/mobstat/ae;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/r;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/baidu/mobstat/aw;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {p1}, Lcom/baidu/mobstat/aw;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobstat/ae;->s:Ljava/lang/String;

    const-string v0, "sdkstat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u5bc6=macAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v2, v2, Lcom/baidu/mobstat/ae;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->s:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v1, v1, Lcom/baidu/mobstat/ae;->s:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/r;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->s:Ljava/lang/String;

    return-object v0

    :cond_4
    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iput-object v0, v1, Lcom/baidu/mobstat/ae;->s:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v1, v1, Lcom/baidu/mobstat/ae;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/ae;->b:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v1, v1, Lcom/baidu/mobstat/ae;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/ae;->m:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneModel()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v1, v1, Lcom/baidu/mobstat/ae;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/ae;->n:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iget-object v0, v0, Lcom/baidu/mobstat/ae;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.2.0"

    return-object v0
.end method

.method public getSecretValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/baidu/mobstat/t;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/mobstat/util/a;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/util/d;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "sdkstat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secretValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getSharedBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->getSharedBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getSharedInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->getSharedInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSharedLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/s;->getSharedLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getSharedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->getSharedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagValue()I
    .locals 1

    sget v0, Lcom/baidu/mobstat/t;->b:I

    return v0
.end method

.method public installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/ae;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method public isHeadObjectIsNull()Z
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic putFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->putFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V

    return-void
.end method

.method public bridge synthetic putInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic putLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/s;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public bridge synthetic putSharedBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->putSharedBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic putSharedInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->putSharedInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic putSharedLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/s;->putSharedLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public bridge synthetic putSharedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->putSharedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic removeShare(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/baidu/mobstat/s;->removeShare(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic removeString(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/baidu/mobstat/s;->removeString(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iput-object p1, v0, Lcom/baidu/mobstat/ae;->l:Ljava/lang/String;

    return-void
.end method

.method public setappKey(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/ae;

    iput-object p1, v0, Lcom/baidu/mobstat/ae;->d:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic updateShareBoolean(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->updateShareBoolean(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic updateShareBoolean(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;Z)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/s;->updateShareBoolean(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic updateShareInt(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;I)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/s;->updateShareInt(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic updateShareString(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->updateShareString(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
