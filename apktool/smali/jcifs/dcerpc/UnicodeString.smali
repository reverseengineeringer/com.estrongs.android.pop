.class public Ljcifs/dcerpc/UnicodeString;
.super Ljcifs/dcerpc/rpc$unicode_string;


# instance fields
.field zterm:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-boolean p2, p0, Ljcifs/dcerpc/UnicodeString;->zterm:Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int v3, v2, v0

    mul-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    iput-short v3, p0, Ljcifs/dcerpc/UnicodeString;->maximum_length:S

    iput-short v3, p0, Ljcifs/dcerpc/UnicodeString;->length:S

    add-int/2addr v0, v2

    new-array v0, v0, [S

    iput-object v0, p0, Ljcifs/dcerpc/UnicodeString;->buffer:[S

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Ljcifs/dcerpc/UnicodeString;->buffer:[S

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Ljcifs/dcerpc/UnicodeString;->buffer:[S

    aput-short v1, v2, v0

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V
    .locals 1

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iget-short v0, p1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    iput-short v0, p0, Ljcifs/dcerpc/UnicodeString;->length:S

    iget-short v0, p1, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    iput-short v0, p0, Ljcifs/dcerpc/UnicodeString;->maximum_length:S

    iget-object v0, p1, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    iput-object v0, p0, Ljcifs/dcerpc/UnicodeString;->buffer:[S

    iput-boolean p2, p0, Ljcifs/dcerpc/UnicodeString;->zterm:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-boolean p1, p0, Ljcifs/dcerpc/UnicodeString;->zterm:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-short v0, p0, Ljcifs/dcerpc/UnicodeString;->length:S

    div-int/lit8 v2, v0, 0x2

    iget-boolean v0, p0, Ljcifs/dcerpc/UnicodeString;->zterm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sub-int/2addr v2, v0

    new-array v3, v2, [C

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v4, p0, Ljcifs/dcerpc/UnicodeString;->buffer:[S

    aget-short v4, v4, v0

    int-to-char v4, v4

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
