.class final enum Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

.field public static final enum ALLOW:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

.field public static final enum CANCEL:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;->CANCEL:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    const-string v1, "ALLOW"

    invoke-direct {v0, v1, v3}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;->ALLOW:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;->CANCEL:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;->ALLOW:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;->$VALUES:[Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;->$VALUES:[Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    invoke-virtual {v0}, [Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    return-object v0
.end method
