.class public final enum Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

.field public static final enum Compressed:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

.field public static final enum Extended:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

.field static final LABEL_MASK:I = 0xc0

.field static final LABEL_NOT_MASK:I = 0x3f

.field public static final enum Standard:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

.field public static final enum Unknown:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;


# instance fields
.field private final _externalName:Ljava/lang/String;

.field private final _index:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    const-string v1, "Unknown"

    const-string v2, ""

    const/16 v3, 0x80

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->Unknown:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    const-string v1, "Standard"

    const-string v2, "standard label"

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->Standard:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    const-string v1, "Compressed"

    const-string v2, "compressed label"

    const/16 v3, 0xc0

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->Compressed:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    const-string v1, "Extended"

    const-string v2, "extended label"

    const/16 v3, 0x40

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->Extended:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->Unknown:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->Standard:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->Compressed:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->Extended:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    aput-object v1, v0, v7

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->$VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

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

    iput-object p3, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->_externalName:Ljava/lang/String;

    iput p4, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->_index:I

    return-void
.end method

.method public static labelForByte(I)Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;
    .locals 6

    and-int/lit16 v2, p0, 0xc0

    invoke-static {}, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    iget v5, v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->_index:I

    if-ne v5, v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->Unknown:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    goto :goto_1
.end method

.method public static labelValue(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x3f

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->$VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    invoke-virtual {v0}, [Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    return-object v0
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->_externalName:Ljava/lang/String;

    return-object v0
.end method

.method public indexValue()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->_index:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->indexValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
