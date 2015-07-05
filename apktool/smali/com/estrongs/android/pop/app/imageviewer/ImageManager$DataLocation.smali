.class public final enum Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

.field public static final enum ALL:Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

.field public static final enum EXTERNAL:Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

.field public static final enum INTERNAL:Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

.field public static final enum NONE:Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;->NONE:Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;->INTERNAL:Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;->EXTERNAL:Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v5}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;->ALL:Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;->NONE:Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;->INTERNAL:Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;->EXTERNAL:Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;->ALL:Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;->$VALUES:[Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;->$VALUES:[Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    invoke-virtual {v0}, [Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/android/pop/app/imageviewer/ImageManager$DataLocation;

    return-object v0
.end method
