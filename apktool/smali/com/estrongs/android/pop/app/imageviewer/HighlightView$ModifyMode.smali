.class final enum Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

.field public static final enum Grow:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

.field public static final enum Move:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

.field public static final enum None:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->None:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->Move:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    const-string v1, "Grow"

    invoke-direct {v0, v1, v4}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->Grow:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->None:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->Move:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->Grow:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->$VALUES:[Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->$VALUES:[Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    invoke-virtual {v0}, [Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    return-object v0
.end method
