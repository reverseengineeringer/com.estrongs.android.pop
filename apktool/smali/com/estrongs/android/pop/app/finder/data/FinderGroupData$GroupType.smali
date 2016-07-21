.class public final enum Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

.field public static final enum Additional:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

.field public static final enum AppCreated:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

.field public static final enum Size:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

.field public static final enum Time:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

.field public static final enum Type:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    const-string v1, "Additional"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Additional:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    new-instance v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    const-string v1, "Size"

    invoke-direct {v0, v1, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Size:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    new-instance v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    const-string v1, "Time"

    invoke-direct {v0, v1, v4}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Time:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    new-instance v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    const-string v1, "Type"

    invoke-direct {v0, v1, v5}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Type:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    new-instance v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    const-string v1, "AppCreated"

    invoke-direct {v0, v1, v6}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->AppCreated:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    sget-object v1, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Additional:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Size:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Time:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Type:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->AppCreated:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->$VALUES:[Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->$VALUES:[Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    invoke-virtual {v0}, [Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    return-object v0
.end method
