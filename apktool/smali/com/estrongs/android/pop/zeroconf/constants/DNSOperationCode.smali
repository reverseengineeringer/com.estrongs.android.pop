.class public final enum Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

.field public static final enum IQuery:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

.field public static final enum Notify:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

.field static final OpCode_MASK:I = 0x7800

.field public static final enum Query:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

.field public static final enum Status:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

.field public static final enum Unassigned:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

.field public static final enum Update:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;


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

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    const-string v1, "Query"

    const-string v2, "Query"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->Query:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    const-string v1, "IQuery"

    const-string v2, "Inverse Query"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->IQuery:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    const-string v1, "Status"

    const-string v2, "Status"

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->Status:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    const-string v1, "Unassigned"

    const-string v2, "Unassigned"

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->Unassigned:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    const-string v1, "Notify"

    const-string v2, "Notify"

    invoke-direct {v0, v1, v9, v2, v9}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->Notify:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    const-string v1, "Update"

    const/4 v2, 0x5

    const-string v3, "Update"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->Update:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->Query:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->IQuery:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->Status:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->Unassigned:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->Notify:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->Update:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->$VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

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

    iput-object p3, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->_externalName:Ljava/lang/String;

    iput p4, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->_index:I

    return-void
.end method

.method public static operationCodeForFlags(I)Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;
    .locals 6

    and-int/lit16 v0, p0, 0x7800

    shr-int/lit8 v2, v0, 0xb

    invoke-static {}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    iget v5, v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->_index:I

    if-ne v5, v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->Unassigned:Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->$VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    invoke-virtual {v0}, [Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;

    return-object v0
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->_externalName:Ljava/lang/String;

    return-object v0
.end method

.method public indexValue()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->_index:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOperationCode;->indexValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
