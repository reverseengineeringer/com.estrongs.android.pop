.class Lcom/baidu/mobstat/bn;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidu/mobstat/bn;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/bn;

    invoke-direct {v0}, Lcom/baidu/mobstat/bn;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/bn;->a:Lcom/baidu/mobstat/bn;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/bn;->b:Z

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/bn;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/bn;->a:Lcom/baidu/mobstat/bn;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "openExceptonAnalysis"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/baidu/mobstat/bn;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/bn;->b:Z

    invoke-static {}, Lcom/baidu/mobstat/bg;->a()Lcom/baidu/mobstat/bg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bg;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/baidu/mobstat/NativeCrashHandler;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
