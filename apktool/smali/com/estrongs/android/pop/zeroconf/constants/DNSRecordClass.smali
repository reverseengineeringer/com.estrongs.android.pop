.class public final enum Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

.field public static final enum CLASS_ANY:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

.field public static final enum CLASS_CH:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

.field public static final enum CLASS_CS:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

.field public static final enum CLASS_HS:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

.field public static final enum CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

.field public static final CLASS_MASK:I = 0x7fff

.field public static final enum CLASS_NONE:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

.field public static final CLASS_UNIQUE:I = 0x8000

.field public static final enum CLASS_UNKNOWN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

.field public static final NOT_UNIQUE:Z = false

.field public static final UNIQUE:Z = true

.field private static logger:Ljava/util/logging/Logger;


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

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const-string v1, "CLASS_UNKNOWN"

    const-string v2, "?"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_UNKNOWN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const-string v1, "CLASS_IN"

    const-string v2, "in"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const-string v1, "CLASS_CS"

    const-string v2, "cs"

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_CS:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const-string v1, "CLASS_CH"

    const-string v2, "ch"

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_CH:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const-string v1, "CLASS_HS"

    const-string v2, "hs"

    invoke-direct {v0, v1, v9, v2, v9}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_HS:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const-string v1, "CLASS_NONE"

    const/4 v2, 0x5

    const-string v3, "none"

    const/16 v4, 0xfe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_NONE:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const-string v1, "CLASS_ANY"

    const/4 v2, 0x6

    const-string v3, "any"

    const/16 v4, 0xff

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_ANY:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_UNKNOWN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    aput-object v1, v0, v5

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    aput-object v1, v0, v6

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_CS:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    aput-object v1, v0, v7

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_CH:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    aput-object v1, v0, v8

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_HS:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_NONE:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_ANY:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->$VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const-class v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->logger:Ljava/util/logging/Logger;

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

    iput-object p3, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->_externalName:Ljava/lang/String;

    iput p4, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->_index:I

    return-void
.end method

.method public static classForIndex(I)Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;
    .locals 6

    and-int/lit16 v2, p0, 0x7fff

    invoke-static {}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    iget v5, v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->_index:I

    if-ne v5, v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find record class for index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_UNKNOWN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    goto :goto_1
.end method

.method public static classForName(Ljava/lang/String;)Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;
    .locals 6

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    iget-object v5, v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->_externalName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find record class for name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_UNKNOWN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->$VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    invoke-virtual {v0}, [Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    return-object v0
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->_externalName:Ljava/lang/String;

    return-object v0
.end method

.method public indexValue()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->_index:I

    return v0
.end method

.method public isUnique(I)Z
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_UNKNOWN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    if-eq p0, v0, :cond_0

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->indexValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
