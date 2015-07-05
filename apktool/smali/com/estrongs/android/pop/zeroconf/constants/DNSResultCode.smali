.class public final enum Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

.field static final ExtendedRCode_MASK:I = 0xff

.field public static final enum FormErr:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

.field public static final enum NXDomain:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

.field public static final enum NXRRSet:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

.field public static final enum NoError:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

.field public static final enum NotAuth:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

.field public static final enum NotImp:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

.field public static final enum NotZone:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

.field static final RCode_MASK:I = 0xf

.field public static final enum Refused:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

.field public static final enum ServFail:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

.field public static final enum Unknown:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

.field public static final enum YXDomain:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

.field public static final enum YXRRSet:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;


# instance fields
.field private final _externalName:Ljava/lang/String;

.field private final _index:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    const-string v1, "Unknown"

    const-string v2, "Unknown"

    const v3, 0xffff

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->Unknown:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    const-string v1, "NoError"

    const-string v2, "No Error"

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->NoError:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    const-string v1, "FormErr"

    const-string v2, "Format Error"

    invoke-direct {v0, v1, v7, v2, v6}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->FormErr:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    const-string v1, "ServFail"

    const-string v2, "Server Failure"

    invoke-direct {v0, v1, v8, v2, v7}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->ServFail:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    const-string v1, "NXDomain"

    const-string v2, "Non-Existent Domain"

    invoke-direct {v0, v1, v9, v2, v8}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->NXDomain:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    const-string v1, "NotImp"

    const/4 v2, 0x5

    const-string v3, "Not Implemented"

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->NotImp:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    const-string v1, "Refused"

    const/4 v2, 0x6

    const-string v3, "Query Refused"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->Refused:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    const-string v1, "YXDomain"

    const/4 v2, 0x7

    const-string v3, "Name Exists when it should not"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->YXDomain:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    const-string v1, "YXRRSet"

    const/16 v2, 0x8

    const-string v3, "RR Set Exists when it should not"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->YXRRSet:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    const-string v1, "NXRRSet"

    const/16 v2, 0x9

    const-string v3, "RR Set that should exist does not"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->NXRRSet:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    const-string v1, "NotAuth"

    const/16 v2, 0xa

    const-string v3, "Server Not Authoritative for zone"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->NotAuth:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    const-string v1, "NotZone"

    const/16 v2, 0xb

    const-string v3, "NotZone Name not contained in zone"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->NotZone:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->Unknown:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->NoError:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->FormErr:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->ServFail:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->NXDomain:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->NotImp:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->Refused:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->YXDomain:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->YXRRSet:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->NXRRSet:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->NotAuth:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->NotZone:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->$VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

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

    iput-object p3, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->_externalName:Ljava/lang/String;

    iput p4, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->_index:I

    return-void
.end method

.method public static resultCodeForFlags(I)Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;
    .locals 6

    and-int/lit8 v2, p0, 0xf

    invoke-static {}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    iget v5, v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->_index:I

    if-ne v5, v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->Unknown:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    goto :goto_1
.end method

.method public static resultCodeForFlags(II)Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;
    .locals 6

    shr-int/lit8 v0, p1, 0x1c

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, p0, 0xf

    or-int v2, v0, v1

    invoke-static {}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    iget v5, v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->_index:I

    if-ne v5, v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->Unknown:Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->$VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    invoke-virtual {v0}, [Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    return-object v0
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->_externalName:Ljava/lang/String;

    return-object v0
.end method

.method public indexValue()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->_index:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->indexValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
