.class public Lcom/baidu/mobstat/Build;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;

.field static b:I

.field static c:Z

.field static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "3.6.6.1"

    sput-object v0, Lcom/baidu/mobstat/Build;->a:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/baidu/mobstat/Build;->b:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mobstat/Build;->c:Z

    const-string v0, "internal"

    sput-object v0, Lcom/baidu/mobstat/Build;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
