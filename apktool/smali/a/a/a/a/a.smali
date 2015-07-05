.class abstract La/a/a/a/a;
.super Ljava/nio/charset/Charset;


# instance fields
.field protected a:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()[C
    .locals 1

    iget-object v0, p0, La/a/a/a/a;->a:[C

    return-object v0
.end method

.method public contains(Ljava/nio/charset/Charset;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    new-instance v0, La/a/a/a/b;

    invoke-direct {v0, p0}, La/a/a/a/b;-><init>(La/a/a/a/a;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    new-instance v0, La/a/a/a/c;

    invoke-direct {v0, p0}, La/a/a/a/c;-><init>(La/a/a/a/a;)V

    return-object v0
.end method
