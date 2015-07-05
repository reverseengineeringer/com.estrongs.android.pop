.class public final enum Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

.field public static final enum LLQ:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

.field public static final enum NSID:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

.field public static final enum Owner:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

.field public static final enum UL:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

.field public static final enum Unknown:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;


# instance fields
.field private final _externalName:Ljava/lang/String;

.field private final _index:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    const-string v1, "Unknown"

    const-string v2, "Unknown"

    const v3, 0xffff

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->Unknown:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    const-string v1, "LLQ"

    const-string v2, "LLQ"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->LLQ:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    const-string v1, "UL"

    const-string v2, "UL"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->UL:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    const-string v1, "NSID"

    const-string v2, "NSID"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->NSID:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    const-string v1, "Owner"

    const-string v2, "Owner"

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->Owner:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->Unknown:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->LLQ:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->UL:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->NSID:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->Owner:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->$VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->_externalName:Ljava/lang/String;

    iput p4, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->_index:I

    return-void
.end method

.method public static resultCodeForFlags(I)Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;
    .locals 5

    invoke-static {}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->_index:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->Unknown:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->$VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    invoke-virtual {v0}, [Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    return-object v0
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->_externalName:Ljava/lang/String;

    return-object v0
.end method

.method public indexValue()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->_index:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->indexValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
