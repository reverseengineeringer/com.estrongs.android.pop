.class public final Lcom/dianxinos/library/notify/network/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcom/dianxinos/library/notify/network/d;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[Ljava/io/File;

.field private final f:J


# direct methods
.method private constructor <init>(Lcom/dianxinos/library/notify/network/d;Ljava/lang/String;J[Ljava/io/InputStream;[Ljava/io/File;J)V
    .locals 1

    iput-object p1, p0, Lcom/dianxinos/library/notify/network/j;->a:Lcom/dianxinos/library/notify/network/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dianxinos/library/notify/network/j;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/dianxinos/library/notify/network/j;->c:J

    iput-object p5, p0, Lcom/dianxinos/library/notify/network/j;->d:[Ljava/io/InputStream;

    iput-object p6, p0, Lcom/dianxinos/library/notify/network/j;->e:[Ljava/io/File;

    iput-wide p7, p0, Lcom/dianxinos/library/notify/network/j;->f:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/dianxinos/library/notify/network/d;Ljava/lang/String;J[Ljava/io/InputStream;[Ljava/io/File;JLcom/dianxinos/library/notify/network/e;)V
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/dianxinos/library/notify/network/j;-><init>(Lcom/dianxinos/library/notify/network/d;Ljava/lang/String;J[Ljava/io/InputStream;[Ljava/io/File;J)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/dianxinos/library/notify/network/j;->f:J

    return-wide v0
.end method

.method public a(I)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/j;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/j;->e:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public close()V
    .locals 4

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/j;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/dianxinos/library/notify/network/d;->a(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
