.class Lcom/baidu/mobstat/i;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/pm/ApplicationInfo;

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/mobstat/i;->b:I

    iput-boolean v0, p0, Lcom/baidu/mobstat/i;->c:Z

    iput-boolean v0, p0, Lcom/baidu/mobstat/i;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mobstat/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mobstat/i;-><init>()V

    return-void
.end method
