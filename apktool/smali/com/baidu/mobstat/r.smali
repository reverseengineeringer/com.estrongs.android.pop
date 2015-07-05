.class Lcom/baidu/mobstat/r;
.super Lcom/baidu/mobstat/s;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field static e:Lcom/baidu/mobstat/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device_id_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/baidu/mobstat/t;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/r;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cuidsec_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/baidu/mobstat/t;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/r;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtjsdkmacss_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/baidu/mobstat/t;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/r;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtjsdkmacsstv_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/baidu/mobstat/t;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/r;->d:Ljava/lang/String;

    new-instance v0, Lcom/baidu/mobstat/r;

    invoke-direct {v0}, Lcom/baidu/mobstat/r;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/r;->e:Lcom/baidu/mobstat/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mobstat/s;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/r;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/r;->e:Lcom/baidu/mobstat/r;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "sendLogtype"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/r;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected a(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "lastsendtime"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/r;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/r;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/r;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "exceptionanalysisflag"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/r;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "exceptionanalysisflag"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/r;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected b(Landroid/content/Context;)I
    .locals 2

    const-string v0, "sendLogtype"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/r;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected b(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "timeinterval"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/r;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "cuid"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/r;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "cuid"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/r;->removeString(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/r;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/r;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "onlywifi"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/r;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method protected c(Landroid/content/Context;)I
    .locals 2

    const-string v0, "timeinterval"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/r;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "setchannelwithcodevalue"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/r;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected c(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "setchannelwithcode"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/r;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method protected d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/r;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/r;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected d(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "mtjtv"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/r;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method protected d(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "onlywifi"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/r;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/r;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/r;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/r;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/r;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/r;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/r;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "setchannelwithcodevalue"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/r;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "setchannelwithcode"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/r;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/r;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/r;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected j(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "mtjtv"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/r;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/r;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/r;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
