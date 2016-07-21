.class public abstract Ljcifs/ntlmssp/NtlmMessage;
.super Ljava/lang/Object;

# interfaces
.implements Ljcifs/ntlmssp/NtlmFlags;


# static fields
.field protected static final NTLMSSP_SIGNATURE:[B

.field private static final OEM_ENCODING:Ljava/lang/String;

.field protected static final UNI_ENCODING:Ljava/lang/String; = "UTF-16LE"


# instance fields
.field private flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    sget-object v0, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    sput-object v0, Ljcifs/ntlmssp/NtlmMessage;->OEM_ENCODING:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x4et
        0x54t
        0x4ct
        0x4dt
        0x53t
        0x53t
        0x50t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getOEMEncoding()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljcifs/ntlmssp/NtlmMessage;->OEM_ENCODING:Ljava/lang/String;

    return-object v0
.end method

.method static readSecurityBuffer([BI)[B
    .locals 4

    invoke-static {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->readUShort([BI)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v1

    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method static readULong([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static readUShort([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method static writeSecurityBuffer([BII[B)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v0, p3

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v0}, Ljcifs/ntlmssp/NtlmMessage;->writeUShort([BII)V

    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2, v0}, Ljcifs/ntlmssp/NtlmMessage;->writeUShort([BII)V

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2, p2}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V

    invoke-static {p3, v1, p0, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method static writeULong([BII)V
    .locals 2

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method static writeUShort([BII)V
    .locals 2

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method


# virtual methods
.method public getFlag(I)Z
    .locals 1

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Ljcifs/ntlmssp/NtlmMessage;->flags:I

    return v0
.end method

.method public setFlag(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v0

    or-int/2addr v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v0

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Ljcifs/ntlmssp/NtlmMessage;->flags:I

    return-void
.end method

.method public abstract toByteArray()[B
.end method
