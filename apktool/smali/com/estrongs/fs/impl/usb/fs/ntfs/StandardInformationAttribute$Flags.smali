.class public final enum Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

.field public static final enum ARCHIVE:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

.field public static final enum COMPRESSED:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

.field public static final enum DEVICE:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

.field public static final enum ENCRYPTED:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

.field public static final enum HIDDEN:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

.field public static final enum NORMAL:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

.field public static final enum NOT_INDEXED:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

.field public static final enum OFFLINE:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

.field public static final enum READ_ONLY:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

.field public static final enum REPARSE_POINT:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

.field public static final enum SPARSE:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

.field public static final enum SYSTEM:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

.field public static final enum TEMPORARY:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    const-string v1, "READ_ONLY"

    const-string v2, "Read-only"

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->READ_ONLY:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    const-string v1, "HIDDEN"

    const-string v2, "Hidden"

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->HIDDEN:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    const-string v1, "SYSTEM"

    const-string v2, "System"

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->SYSTEM:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    const-string v1, "ARCHIVE"

    const-string v2, "Archive"

    const/16 v3, 0x20

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->ARCHIVE:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    const-string v1, "DEVICE"

    const-string v2, "Archive"

    const/16 v3, 0x40

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->DEVICE:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    const-string v1, "NORMAL"

    const/4 v2, 0x5

    const-string v3, "Normal"

    const/16 v4, 0x80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->NORMAL:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    const-string v1, "TEMPORARY"

    const/4 v2, 0x6

    const-string v3, "Temporary"

    const/16 v4, 0x100

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->TEMPORARY:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    const-string v1, "SPARSE"

    const/4 v2, 0x7

    const-string v3, "Sparse"

    const/16 v4, 0x200

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->SPARSE:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    const-string v1, "REPARSE_POINT"

    const/16 v2, 0x8

    const-string v3, "Reparse Point"

    const/16 v4, 0x400

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->REPARSE_POINT:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    const-string v1, "COMPRESSED"

    const/16 v2, 0x9

    const-string v3, "Compressed"

    const/16 v4, 0x800

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->COMPRESSED:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    const-string v1, "OFFLINE"

    const/16 v2, 0xa

    const-string v3, "Offline"

    const/16 v4, 0x1000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->OFFLINE:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    const-string v1, "NOT_INDEXED"

    const/16 v2, 0xb

    const-string v3, "Not Indexed"

    const/16 v4, 0x2000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->NOT_INDEXED:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    const-string v1, "ENCRYPTED"

    const/16 v2, 0xc

    const-string v3, "Encrypted"

    const/16 v4, 0x4000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->ENCRYPTED:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->READ_ONLY:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    aput-object v1, v0, v8

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->HIDDEN:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    aput-object v1, v0, v5

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->SYSTEM:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    aput-object v1, v0, v6

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->ARCHIVE:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    aput-object v1, v0, v9

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->DEVICE:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->NORMAL:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->TEMPORARY:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->SPARSE:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->REPARSE_POINT:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->COMPRESSED:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->OFFLINE:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->NOT_INDEXED:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->ENCRYPTED:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->$VALUES:[Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

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

    iput-object p3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->name:Ljava/lang/String;

    iput p4, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->value:I

    return-void
.end method

.method public static getNames(I)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->values()[Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    move v0, p0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    invoke-virtual {v6, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->isSet(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->name:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v6, v6, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->value:I

    sub-int/2addr v0, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "Unknown 0x%x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->$VALUES:[Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    invoke-virtual {v0}, [Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    return-object v0
.end method


# virtual methods
.method public isSet(I)Z
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->value:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
