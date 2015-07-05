.class Lcom/baidu/mobstat/x;
.super Ljava/lang/Object;


# static fields
.field private static c:Landroid/os/HandlerThread;

.field private static d:Landroid/os/Handler;

.field private static e:Lcom/baidu/mobstat/x;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/ac;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EventHandleThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mobstat/x;->c:Landroid/os/HandlerThread;

    new-instance v0, Lcom/baidu/mobstat/x;

    invoke-direct {v0}, Lcom/baidu/mobstat/x;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/x;->e:Lcom/baidu/mobstat/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/x;->a:Ljava/util/HashMap;

    const-string v0, "$|$"

    iput-object v0, p0, Lcom/baidu/mobstat/x;->b:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mobstat/x;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/baidu/mobstat/x;->c:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/mobstat/x;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/mobstat/x;->d:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/x;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/x;->e:Lcom/baidu/mobstat/x;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__sdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$|$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 9

    sget-object v0, Lcom/baidu/mobstat/x;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/y;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/baidu/mobstat/y;-><init>(Lcom/baidu/mobstat/x;Ljava/lang/String;Ljava/lang/String;IJLandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    sget-object v6, Lcom/baidu/mobstat/x;->d:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mobstat/z;

    move-object v1, p0

    move-wide v2, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/z;-><init>(Lcom/baidu/mobstat/x;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    sget-object v7, Lcom/baidu/mobstat/x;->d:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mobstat/aa;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/aa;-><init>(Lcom/baidu/mobstat/x;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    sget-object v7, Lcom/baidu/mobstat/x;->d:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mobstat/ab;

    move-object v1, p0

    move-wide v2, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/ab;-><init>(Lcom/baidu/mobstat/x;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
