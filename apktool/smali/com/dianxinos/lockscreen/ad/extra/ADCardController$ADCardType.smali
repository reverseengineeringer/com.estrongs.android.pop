.class public final enum Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;

.field public static final enum SCREENLOCKBIGCARD:Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;

    const-string v1, "SCREENLOCKBIGCARD"

    invoke-direct {v0, v1, v2}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;->SCREENLOCKBIGCARD:Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;

    sget-object v1, Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;->SCREENLOCKBIGCARD:Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;->$VALUES:[Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;
    .locals 1

    const-class v0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;

    return-object v0
.end method

.method public static values()[Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;
    .locals 1

    sget-object v0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;->$VALUES:[Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;

    invoke-virtual {v0}, [Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;

    return-object v0
.end method
