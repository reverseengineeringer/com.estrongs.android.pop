.class public final enum Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

.field public static final enum FILE:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

.field public static final enum FOLDER:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FILE:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    new-instance v0, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    const-string v1, "FOLDER"

    invoke-direct {v0, v1, v3}, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FOLDER:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    sget-object v1, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FILE:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FOLDER:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->$VALUES:[Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;
    .locals 1

    const-class v0, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;
    .locals 1

    sget-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->$VALUES:[Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    invoke-virtual {v0}, [Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    return-object v0
.end method
