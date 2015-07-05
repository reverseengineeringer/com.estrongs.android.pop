.class public Lcom/estrongs/fs/impl/usb/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/a/c;


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Z


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/usb/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/a/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/fs/impl/usb/a/a;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/a/a;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/estrongs/fs/impl/usb/a/a;
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Lcom/estrongs/fs/impl/usb/a/a;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/usb/a/a;-><init>()V

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v2, 0x1fe

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, 0x55

    if-ne v2, v3, :cond_0

    const/16 v2, 0x1ff

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, -0x56

    if-eq v2, v3, :cond_3

    :cond_0
    sget-boolean v0, Lcom/estrongs/fs/impl/usb/a/a;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/fs/impl/usb/a/a;->b:Ljava/lang/String;

    const-string v1, "not a valid mbr partition table!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/usb/fs/a/d;->a([B)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "FAT32 no mbr"

    invoke-static {v2}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/fs/impl/usb/a/d;

    const/16 v3, 0xb

    invoke-direct {v2, v3, v1, v1}, Lcom/estrongs/fs/impl/usb/a/d;-><init>(BII)V

    iget-object v1, v0, Lcom/estrongs/fs/impl/usb/a/a;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->a([B)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "NTFS no mbr"

    invoke-static {v2}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/fs/impl/usb/a/d;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v1, v1}, Lcom/estrongs/fs/impl/usb/a/d;-><init>(BII)V

    iget-object v1, v0, Lcom/estrongs/fs/impl/usb/a/a;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    mul-int/lit8 v2, v1, 0x10

    add-int/lit16 v2, v2, 0x1be

    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x5

    if-eq v3, v4, :cond_8

    const/16 v4, 0xf

    if-ne v3, v4, :cond_9

    :cond_8
    sget-boolean v2, Lcom/estrongs/fs/impl/usb/a/a;->c:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/estrongs/fs/impl/usb/a/a;->b:Ljava/lang/String;

    const-string v3, "extended partitions are currently unsupported!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    new-instance v4, Lcom/estrongs/fs/impl/usb/a/d;

    add-int/lit8 v5, v2, 0x8

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    invoke-direct {v4, v3, v5, v2}, Lcom/estrongs/fs/impl/usb/a/d;-><init>(BII)V

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/a/a;->a:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/estrongs/fs/impl/usb/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/a/a;->a:Ljava/util/List;

    return-object v0
.end method
