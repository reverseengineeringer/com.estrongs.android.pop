.class public Lcom/estrongs/fs/impl/usb/fs/ntfs/n;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/z;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected a:Lcom/estrongs/fs/impl/usb/fs/ntfs/a/a;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:J

.field private f:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;

.field private g:Lcom/estrongs/fs/impl/usb/fs/ntfs/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;J[BI)V
    .locals 2

    invoke-direct {p0, p1, p4, p5}, Lcom/estrongs/fs/impl/usb/fs/ntfs/z;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;[BI)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->d:Z

    iput-wide p2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->e:J

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a(I)Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/a;

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/a/a;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->p(I)Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->e:J

    return-wide v0
.end method

.method static synthetic m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized n()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->b:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->b:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/a/a;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c:Ljava/lang/String;

    const-string v1, "All attributes stored"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->l()Lcom/estrongs/fs/impl/usb/fs/ntfs/q;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/q;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting attributes for entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->b:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->d:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c:Ljava/lang/String;

    const-string v1, "Attributes in attribute list"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/r;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Lcom/estrongs/fs/impl/usb/fs/ntfs/o;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private p(I)Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->l()Lcom/estrongs/fs/impl/usb/fs/ntfs/q;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/q;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->h()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->l()Lcom/estrongs/fs/impl/usb/fs/ntfs/q;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/q;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->e()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/ntfs/q;
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findAttributesByTypeAndName(0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/e;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/p;

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/p;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Ljava/util/Iterator;ILjava/lang/String;)V

    return-object v0
.end method

.method public a()V
    .locals 6

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->o()I

    move-result v0

    const v1, 0x454c4946

    if-eq v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid magic number found for FILE record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- dumping buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->s()[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v0

    :goto_1
    add-int/lit8 v1, v0, 0x20

    if-ge v2, v1, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->s()[B

    move-result-object v1

    array-length v1, v1

    if-ge v2, v1, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->s()[B

    move-result-object v1

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->d:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid magic found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_6

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->e:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored reference number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match reference number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void
.end method

.method public a(J[BII)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a(Ljava/lang/String;J[BII)V

    return-void
.end method

.method public a(Ljava/lang/String;J[BII)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->d:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readData: offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", file record = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v4, 0x80

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a(ILjava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/ntfs/q;

    move-result-object v11

    invoke-virtual {v11}, Lcom/estrongs/fs/impl/usb/fs/ntfs/q;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data attribute not found, file record = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->k()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v11}, Lcom/estrongs/fs/impl/usb/fs/ntfs/q;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resident attribute should be by itself, file record = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    check-cast v4, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;

    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;->m()I

    move-result v5

    move/from16 v0, p6

    if-ge v5, v0, :cond_5

    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File data("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "b) is not large enough to read:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;->l()I

    move-result v5

    move-wide/from16 v0, p2

    long-to-int v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;->a(I[BII)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->d:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c:Ljava/lang/String;

    const-string v5, "readData: read from resident data"

    invoke-static {v4, v5}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->r()Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->b()I

    move-result v12

    int-to-long v6, v12

    div-long v6, p2, v6

    move/from16 v0, p6

    int-to-long v8, v0

    add-long v8, v8, p2

    const-wide/16 v14, 0x1

    sub-long/2addr v8, v14

    int-to-long v14, v12

    div-long/2addr v8, v14

    sub-long/2addr v8, v6

    const-wide/16 v14, 0x1

    add-long/2addr v8, v14

    long-to-int v10, v8

    mul-int v5, v10, v12

    new-array v8, v5, [B

    const/4 v5, 0x0

    move/from16 v16, v5

    move-object v5, v4

    move/from16 v4, v16

    :cond_7
    invoke-virtual {v5}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->k()Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resident attribute should be by itself, file record = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    check-cast v5, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->a(J[BII)I

    move-result v9

    add-int/2addr v4, v9

    if-ne v4, v10, :cond_a

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->d:Z

    if-eqz v5, :cond_9

    sget-object v5, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readData: read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from non-resident attributes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eq v4, v10, :cond_b

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " clusters but only read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", offset = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", file record = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_a
    invoke-virtual {v5}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->p()I

    move-result v5

    int-to-long v14, v5

    sub-long/2addr v6, v14

    invoke-virtual {v11}, Lcom/estrongs/fs/impl/usb/fs/ntfs/q;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_b
    move-wide/from16 v0, p2

    long-to-int v4, v0

    rem-int/2addr v4, v12

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-static {v8, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0
.end method

.method public b(ILjava/lang/String;)J
    .locals 7

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a(ILjava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/ntfs/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/q;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find an attribute with type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and name: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    move-wide v5, v0

    move-object v0, v2

    move-wide v2, v5

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;->m()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    :goto_1
    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/q;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v2

    move-wide v5, v0

    move-object v0, v2

    move-wide v2, v5

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->n()J

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_1

    :cond_2
    return-wide v2
.end method

.method public b(I)Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;
    .locals 5

    const/4 v4, 0x4

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findAttributeByType(0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/e;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->e()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-boolean v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->d:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findAttributeByType(0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/e;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->d:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findAttributeByType(0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/e;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->e()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Lcom/estrongs/fs/impl/usb/fs/ntfs/q;
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findAttributesByType(0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/e;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/o;

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/o;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Ljava/util/Iterator;I)V

    return-object v0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->e()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->e(I)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->e(I)I

    move-result v0

    return v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->e:J

    return-wide v0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->e(I)I

    move-result v0

    return v0
.end method

.method public h()J
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->g()I

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->g(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->k()Lcom/estrongs/fs/impl/usb/fs/ntfs/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->f:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->b(I)Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->f:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->f:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;

    return-object v0
.end method

.method public k()Lcom/estrongs/fs/impl/usb/fs/ntfs/m;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->g:Lcom/estrongs/fs/impl/usb/fs/ntfs/m;

    if-nez v0, :cond_2

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c(I)Lcom/estrongs/fs/impl/usb/fs/ntfs/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/q;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->g:Lcom/estrongs/fs/impl/usb/fs/ntfs/m;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->g:Lcom/estrongs/fs/impl/usb/fs/ntfs/m;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;->d()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    :cond_0
    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->g:Lcom/estrongs/fs/impl/usb/fs/ntfs/m;

    :cond_1
    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/q;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->g:Lcom/estrongs/fs/impl/usb/fs/ntfs/m;

    return-object v0
.end method

.method public l()Lcom/estrongs/fs/impl/usb/fs/ntfs/q;
    .locals 2

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/t;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Lcom/estrongs/fs/impl/usb/fs/ntfs/o;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[unused]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
