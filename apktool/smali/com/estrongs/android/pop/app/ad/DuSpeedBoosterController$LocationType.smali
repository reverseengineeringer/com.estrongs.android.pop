.class public final enum Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

.field public static final enum HOME:Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

.field public static final enum NAVI:Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

.field public static final enum TOOLBAR:Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

    const-string v1, "NAVI"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;->NAVI:Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

    new-instance v0, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v3}, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;->HOME:Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

    new-instance v0, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

    const-string v1, "TOOLBAR"

    invoke-direct {v0, v1, v4}, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;->TOOLBAR:Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

    sget-object v1, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;->NAVI:Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;->HOME:Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;->TOOLBAR:Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;->$VALUES:[Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;->$VALUES:[Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

    invoke-virtual {v0}, [Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

    return-object v0
.end method
