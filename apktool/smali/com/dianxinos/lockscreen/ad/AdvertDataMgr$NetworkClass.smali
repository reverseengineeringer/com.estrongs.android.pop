.class final enum Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

.field public static final enum Net2G:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

.field public static final enum Net3G:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

.field public static final enum Net4G:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

.field public static final enum NetUnknown:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

.field public static final enum NetWifi:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    const-string v1, "NetWifi"

    const-string v2, "wifi"

    invoke-direct {v0, v1, v3, v2}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->NetWifi:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    new-instance v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    const-string v1, "Net2G"

    const-string v2, "2g"

    invoke-direct {v0, v1, v4, v2}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->Net2G:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    new-instance v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    const-string v1, "Net3G"

    const-string v2, "3g"

    invoke-direct {v0, v1, v5, v2}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->Net3G:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    new-instance v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    const-string v1, "Net4G"

    const-string v2, "4g"

    invoke-direct {v0, v1, v6, v2}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->Net4G:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    new-instance v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    const-string v1, "NetUnknown"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v7, v2}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->NetUnknown:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    sget-object v1, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->NetWifi:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->Net2G:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->Net3G:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->Net4G:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->NetUnknown:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    aput-object v1, v0, v7

    sput-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->$VALUES:[Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;
    .locals 1

    const-class v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    return-object v0
.end method

.method public static values()[Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;
    .locals 1

    sget-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->$VALUES:[Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    invoke-virtual {v0}, [Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->name:Ljava/lang/String;

    return-object v0
.end method
