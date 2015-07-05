.class public Lcom/b/a/a/a/a/a;
.super Lcom/b/a/a/a/a/b;


# static fields
.field private static final a:[C

.field private static final b:[C


# instance fields
.field private final c:Z

.field private final d:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    sput-object v0, Lcom/b/a/a/a/a/a;->a:[C

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/b/a/a/a/a/a;->b:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/b/a/a/a/a/b;-><init>()V

    const-string v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'%\' character cannot be specified as \'safe\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-boolean p2, p0, Lcom/b/a/a/a/a/a;->c:Z

    invoke-static {p1}, Lcom/b/a/a/a/a/a;->b(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/a/a;->d:[Z

    return-void
.end method

.method private static b(Ljava/lang/String;)[Z
    .locals 8

    const/16 v3, 0x7a

    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v1, v0

    move v2, v3

    :goto_0
    if-ge v1, v5, :cond_0

    aget-char v6, v4, v1

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    new-array v2, v1, [Z

    const/16 v1, 0x30

    :goto_1
    const/16 v5, 0x39

    if-gt v1, v5, :cond_1

    aput-boolean v7, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x41

    :goto_2
    const/16 v5, 0x5a

    if-gt v1, v5, :cond_2

    aput-boolean v7, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/16 v1, 0x61

    :goto_3
    if-gt v1, v3, :cond_3

    aput-boolean v7, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    array-length v1, v4

    :goto_4
    if-ge v0, v1, :cond_4

    aget-char v3, v4, v0

    aput-boolean v7, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-object v2
.end method


# virtual methods
.method protected a(Ljava/lang/CharSequence;II)I
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/a/a/a;->d:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a/a/a/a;->d:[Z

    aget-boolean v0, v1, v0

    if-nez v0, :cond_1

    :cond_0
    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/b/a/a/a/a/a;->d:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/b/a/a/a/a/a;->d:[Z

    aget-boolean v2, v3, v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected a(I)[C
    .locals 7

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x25

    iget-object v0, p0, Lcom/b/a/a/a/a/a;->d:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/a/a/a;->d:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/b/a/a/a/a/a;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/b/a/a/a/a/a;->a:[C

    goto :goto_0

    :cond_1
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_2

    new-array v0, v3, [C

    aput-char v2, v0, v1

    sget-object v1, Lcom/b/a/a/a/a/a;->b:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    sget-object v1, Lcom/b/a/a/a/a/a;->b:[C

    ushr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    goto :goto_0

    :cond_2
    const/16 v0, 0x7ff

    if-gt p1, v0, :cond_3

    const/4 v0, 0x6

    new-array v0, v0, [C

    aput-char v2, v0, v1

    aput-char v2, v0, v3

    const/4 v1, 0x5

    sget-object v2, Lcom/b/a/a/a/a/a;->b:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    sget-object v3, Lcom/b/a/a/a/a/a;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x2

    sget-object v2, Lcom/b/a/a/a/a/a;->b:[C

    and-int/lit8 v3, v1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v6

    ushr-int/lit8 v1, v1, 0x4

    sget-object v2, Lcom/b/a/a/a/a/a;->b:[C

    or-int/lit8 v1, v1, 0xc

    aget-char v1, v2, v1

    aput-char v1, v0, v5

    goto :goto_0

    :cond_3
    const v0, 0xffff

    if-gt p1, v0, :cond_4

    const/16 v0, 0x9

    new-array v0, v0, [C

    aput-char v2, v0, v1

    const/16 v1, 0x45

    aput-char v1, v0, v5

    aput-char v2, v0, v3

    const/4 v1, 0x6

    aput-char v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/b/a/a/a/a/a;->b:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 v1, p1, 0x4

    const/4 v2, 0x7

    sget-object v3, Lcom/b/a/a/a/a/a;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x2

    const/4 v2, 0x5

    sget-object v3, Lcom/b/a/a/a/a/a;->b:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    sget-object v3, Lcom/b/a/a/a/a/a;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x2

    sget-object v2, Lcom/b/a/a/a/a/a;->b:[C

    aget-char v1, v2, v1

    aput-char v1, v0, v6

    goto/16 :goto_0

    :cond_4
    const v0, 0x10ffff

    if-gt p1, v0, :cond_5

    const/16 v0, 0xc

    new-array v0, v0, [C

    aput-char v2, v0, v1

    const/16 v1, 0x46

    aput-char v1, v0, v5

    aput-char v2, v0, v3

    const/4 v1, 0x6

    aput-char v2, v0, v1

    const/16 v1, 0x9

    aput-char v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/b/a/a/a/a/a;->b:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 v1, p1, 0x4

    const/16 v2, 0xa

    sget-object v3, Lcom/b/a/a/a/a/a;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    sget-object v3, Lcom/b/a/a/a/a/a;->b:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x4

    const/4 v2, 0x7

    sget-object v3, Lcom/b/a/a/a/a/a;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x2

    const/4 v2, 0x5

    sget-object v3, Lcom/b/a/a/a/a/a;->b:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    sget-object v3, Lcom/b/a/a/a/a/a;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x2

    sget-object v2, Lcom/b/a/a/a/a/a;->b:[C

    and-int/lit8 v1, v1, 0x7

    aget-char v1, v2, v1

    aput-char v1, v0, v6

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unicode character value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
