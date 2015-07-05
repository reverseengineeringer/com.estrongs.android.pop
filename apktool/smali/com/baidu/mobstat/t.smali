.class Lcom/baidu/mobstat/t;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:I

.field static final c:Z

.field static final d:[Ljava/lang/String;

.field static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/baidu/mobstat/Build;->a:Ljava/lang/String;

    sput-object v0, Lcom/baidu/mobstat/t;->a:Ljava/lang/String;

    sget v0, Lcom/baidu/mobstat/Build;->b:I

    sput v0, Lcom/baidu/mobstat/t;->b:I

    sget-boolean v0, Lcom/baidu/mobstat/Build;->c:Z

    sput-boolean v0, Lcom/baidu/mobstat/t;->c:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "h9YLQoINGWyOBYYk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "30212102dicudiab"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/mobstat/t;->d:[Ljava/lang/String;

    sget-object v0, Lcom/baidu/mobstat/t;->d:[Ljava/lang/String;

    sget v1, Lcom/baidu/mobstat/t;->b:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/baidu/mobstat/t;->e:Ljava/lang/String;

    return-void
.end method
