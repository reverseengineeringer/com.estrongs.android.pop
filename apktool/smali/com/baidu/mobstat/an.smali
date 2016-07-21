.class public abstract enum Lcom/baidu/mobstat/an;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/an;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/an;

.field public static final enum b:Lcom/baidu/mobstat/an;

.field public static final enum c:Lcom/baidu/mobstat/an;

.field private static final synthetic e:[Lcom/baidu/mobstat/an;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/baidu/mobstat/ao;

    const-string v1, "SERVICE"

    invoke-direct {v0, v1, v4, v2}, Lcom/baidu/mobstat/ao;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/an;->a:Lcom/baidu/mobstat/an;

    new-instance v0, Lcom/baidu/mobstat/ap;

    const-string v1, "NO_SERVICE"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/mobstat/ap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/an;->b:Lcom/baidu/mobstat/an;

    new-instance v0, Lcom/baidu/mobstat/aq;

    const-string v1, "ERISED"

    invoke-direct {v0, v1, v3, v5}, Lcom/baidu/mobstat/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/an;->c:Lcom/baidu/mobstat/an;

    new-array v0, v5, [Lcom/baidu/mobstat/an;

    sget-object v1, Lcom/baidu/mobstat/an;->a:Lcom/baidu/mobstat/an;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mobstat/an;->b:Lcom/baidu/mobstat/an;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/an;->c:Lcom/baidu/mobstat/an;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/mobstat/an;->e:[Lcom/baidu/mobstat/an;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/baidu/mobstat/an;->d:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/baidu/mobstat/ao;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/an;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static a(I)Lcom/baidu/mobstat/an;
    .locals 5

    invoke-static {}, Lcom/baidu/mobstat/an;->values()[Lcom/baidu/mobstat/an;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/baidu/mobstat/an;->d:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/baidu/mobstat/an;->b:Lcom/baidu/mobstat/an;

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    const v2, 0x7fffffff

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    move v2, v1

    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.baidu.bottom.service.BottomService"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/Throwable;)V

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/an;
    .locals 1

    const-class v0, Lcom/baidu/mobstat/an;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/an;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/an;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/an;->e:[Lcom/baidu/mobstat/an;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/an;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/an;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/baidu/mobstat/an;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
