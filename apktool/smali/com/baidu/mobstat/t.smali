.class public final enum Lcom/baidu/mobstat/t;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/t;

.field public static final enum b:Lcom/baidu/mobstat/t;

.field public static final enum c:Lcom/baidu/mobstat/t;

.field public static final enum d:Lcom/baidu/mobstat/t;

.field public static final enum e:Lcom/baidu/mobstat/t;

.field public static final enum f:Lcom/baidu/mobstat/t;

.field public static final enum g:Lcom/baidu/mobstat/t;

.field public static final enum h:Lcom/baidu/mobstat/t;

.field public static final enum i:Lcom/baidu/mobstat/t;

.field private static final synthetic k:[Lcom/baidu/mobstat/t;


# instance fields
.field public j:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/baidu/mobstat/t;

    const-string v1, "AP_LIST"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mobstat/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/t;->a:Lcom/baidu/mobstat/t;

    new-instance v0, Lcom/baidu/mobstat/t;

    const-string v1, "APP_USER_LIST"

    invoke-direct {v0, v1, v4}, Lcom/baidu/mobstat/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/t;->b:Lcom/baidu/mobstat/t;

    new-instance v0, Lcom/baidu/mobstat/t;

    const-string v1, "APP_SYS_LIST"

    invoke-direct {v0, v1, v5}, Lcom/baidu/mobstat/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/t;->c:Lcom/baidu/mobstat/t;

    new-instance v0, Lcom/baidu/mobstat/t;

    const-string v1, "APP_TRACE_CURRENT"

    invoke-direct {v0, v1, v6}, Lcom/baidu/mobstat/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/t;->d:Lcom/baidu/mobstat/t;

    new-instance v0, Lcom/baidu/mobstat/t;

    const-string v1, "APP_TRACE_HIS"

    invoke-direct {v0, v1, v7}, Lcom/baidu/mobstat/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/t;->e:Lcom/baidu/mobstat/t;

    new-instance v0, Lcom/baidu/mobstat/t;

    const-string v1, "APP_CHANGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/t;->f:Lcom/baidu/mobstat/t;

    new-instance v0, Lcom/baidu/mobstat/t;

    const-string v1, "APP_APK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/t;->g:Lcom/baidu/mobstat/t;

    new-instance v0, Lcom/baidu/mobstat/t;

    const-string v1, "LAST_SEND"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/t;->h:Lcom/baidu/mobstat/t;

    new-instance v0, Lcom/baidu/mobstat/t;

    const-string v1, "LAST_UPDATE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/t;->i:Lcom/baidu/mobstat/t;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/baidu/mobstat/t;

    sget-object v1, Lcom/baidu/mobstat/t;->a:Lcom/baidu/mobstat/t;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/t;->b:Lcom/baidu/mobstat/t;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mobstat/t;->c:Lcom/baidu/mobstat/t;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mobstat/t;->d:Lcom/baidu/mobstat/t;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/mobstat/t;->e:Lcom/baidu/mobstat/t;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/mobstat/t;->f:Lcom/baidu/mobstat/t;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/mobstat/t;->g:Lcom/baidu/mobstat/t;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/mobstat/t;->h:Lcom/baidu/mobstat/t;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/baidu/mobstat/t;->i:Lcom/baidu/mobstat/t;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/mobstat/t;->k:[Lcom/baidu/mobstat/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/t;
    .locals 1

    const-class v0, Lcom/baidu/mobstat/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/t;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/t;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/t;->k:[Lcom/baidu/mobstat/t;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/t;

    return-object v0
.end method
