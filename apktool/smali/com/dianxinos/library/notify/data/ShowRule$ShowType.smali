.class public final enum Lcom/dianxinos/library/notify/data/ShowRule$ShowType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dianxinos/library/notify/data/ShowRule$ShowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

.field public static final enum ICON:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

.field public static final enum NORMAL:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

.field public static final enum NOTF:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

.field public static final enum WIDGET:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;


# instance fields
.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    const-string v1, "ICON"

    const-string v2, "icon"

    invoke-direct {v0, v1, v3, v2}, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->ICON:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    new-instance v0, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    const-string v1, "WIDGET"

    const-string v2, "widget"

    invoke-direct {v0, v1, v4, v2}, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->WIDGET:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    new-instance v0, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    const-string v1, "NOTF"

    const-string v2, "notf"

    invoke-direct {v0, v1, v5, v2}, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->NOTF:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    new-instance v0, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    const-string v1, "NORMAL"

    const-string v2, "noraml"

    invoke-direct {v0, v1, v6, v2}, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->NORMAL:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    sget-object v1, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->ICON:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->WIDGET:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->NOTF:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->NORMAL:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->$VALUES:[Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

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

    iput-object p3, p0, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->mType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/ShowRule$ShowType;
    .locals 1

    const-class v0, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    return-object v0
.end method

.method public static values()[Lcom/dianxinos/library/notify/data/ShowRule$ShowType;
    .locals 1

    sget-object v0, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->$VALUES:[Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    invoke-virtual {v0}, [Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->mType:Ljava/lang/String;

    return-object v0
.end method
