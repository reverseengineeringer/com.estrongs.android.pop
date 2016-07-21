.class public final enum Lcom/duapps/ad/inmobi/IMData$AdOperationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duapps/ad/inmobi/IMData$AdOperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/duapps/ad/inmobi/IMData$AdOperationType;

.field public static final enum Click:Lcom/duapps/ad/inmobi/IMData$AdOperationType;

.field public static final enum Impression:Lcom/duapps/ad/inmobi/IMData$AdOperationType;

.field public static final enum None:Lcom/duapps/ad/inmobi/IMData$AdOperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/duapps/ad/inmobi/IMData$AdOperationType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/duapps/ad/inmobi/IMData$AdOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duapps/ad/inmobi/IMData$AdOperationType;->None:Lcom/duapps/ad/inmobi/IMData$AdOperationType;

    new-instance v0, Lcom/duapps/ad/inmobi/IMData$AdOperationType;

    const-string v1, "Impression"

    invoke-direct {v0, v1, v3}, Lcom/duapps/ad/inmobi/IMData$AdOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duapps/ad/inmobi/IMData$AdOperationType;->Impression:Lcom/duapps/ad/inmobi/IMData$AdOperationType;

    new-instance v0, Lcom/duapps/ad/inmobi/IMData$AdOperationType;

    const-string v1, "Click"

    invoke-direct {v0, v1, v4}, Lcom/duapps/ad/inmobi/IMData$AdOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duapps/ad/inmobi/IMData$AdOperationType;->Click:Lcom/duapps/ad/inmobi/IMData$AdOperationType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/duapps/ad/inmobi/IMData$AdOperationType;

    sget-object v1, Lcom/duapps/ad/inmobi/IMData$AdOperationType;->None:Lcom/duapps/ad/inmobi/IMData$AdOperationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/duapps/ad/inmobi/IMData$AdOperationType;->Impression:Lcom/duapps/ad/inmobi/IMData$AdOperationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duapps/ad/inmobi/IMData$AdOperationType;->Click:Lcom/duapps/ad/inmobi/IMData$AdOperationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/duapps/ad/inmobi/IMData$AdOperationType;->$VALUES:[Lcom/duapps/ad/inmobi/IMData$AdOperationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/duapps/ad/inmobi/IMData$AdOperationType;
    .locals 1

    const-class v0, Lcom/duapps/ad/inmobi/IMData$AdOperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/inmobi/IMData$AdOperationType;

    return-object v0
.end method

.method public static values()[Lcom/duapps/ad/inmobi/IMData$AdOperationType;
    .locals 1

    sget-object v0, Lcom/duapps/ad/inmobi/IMData$AdOperationType;->$VALUES:[Lcom/duapps/ad/inmobi/IMData$AdOperationType;

    invoke-virtual {v0}, [Lcom/duapps/ad/inmobi/IMData$AdOperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duapps/ad/inmobi/IMData$AdOperationType;

    return-object v0
.end method
