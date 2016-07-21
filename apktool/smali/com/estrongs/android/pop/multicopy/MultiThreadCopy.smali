.class public Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:I


# instance fields
.field private c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

.field private d:Ljava/io/File;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/copy/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a:Ljava/lang/String;

    const/16 v0, 0xa

    sput v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;)J
    .locals 6

    const-wide/16 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-wide v2

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->segs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->segs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;

    iget-wide v4, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;->totalWriteLen:J

    add-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)J
    .locals 2

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->b(Ljava/io/File;Ljava/lang/String;)Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a(Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;)Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".escopy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".escopy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private a()V
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->b()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_1
    :goto_4
    throw v0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private static b(Ljava/io/File;Ljava/lang/String;)Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;
    .locals 10

    const-wide/16 v8, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->segs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->segs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;->isCopyFinished()Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v4, v1, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;->totalWriteLen:J

    iget v3, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->bufferSize:I

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, v1, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;->totalWriteLen:J

    :cond_0
    iget-wide v4, v1, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;->totalWriteLen:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_1

    iput-wide v8, v1, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;->totalWriteLen:J

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->d:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->d:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->d:Ljava/io/File;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Ljava/lang/String;JLjava/lang/String;JII)Z
    .locals 18

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->e:Ljava/lang/String;

    sget v2, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->b:I

    move/from16 v0, p9

    if-le v0, v2, :cond_11

    sget v2, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->b:I

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v3, :cond_10

    const/4 v2, 0x1

    move v10, v2

    :goto_1
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->b()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->b()Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->b(Ljava/io/File;Ljava/lang/String;)Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    iget-wide v4, v4, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->srcLength:J

    cmp-long v4, p6, v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    # getter for: Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->srcLastModified:J
    invoke-static {v4}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->access$300(Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;)J

    move-result-wide v4

    cmp-long v4, p3, v4

    if-eqz v4, :cond_4

    :cond_0
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v4, v0, v5}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    invoke-direct/range {p0 .. p0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->b()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    if-eqz p1, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    const/4 v4, 0x2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    const-string v7, "RBT"

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_2
    const/16 v4, 0x9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    if-nez v2, :cond_8

    new-instance v2, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;-><init>(Ljava/lang/String;JLjava/lang/String;JI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    int-to-long v2, v10

    div-long v6, p6, v2

    int-to-long v2, v10

    rem-long v8, p6, v2

    const/4 v2, 0x0

    move v4, v2

    :goto_3
    if-ge v4, v10, :cond_8

    int-to-long v2, v4

    mul-long v12, v2, v6

    add-int/lit8 v2, v10, -0x1

    if-ne v4, v2, :cond_7

    add-int/lit8 v2, v4, 0x1

    int-to-long v2, v2

    mul-long/2addr v2, v6

    const-wide/16 v14, 0x1

    sub-long/2addr v2, v14

    add-long/2addr v2, v8

    :goto_4
    new-instance v5, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;

    invoke-direct {v5, v12, v13, v2, v3}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;-><init>(JJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    iget-object v2, v2, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->segs:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    invoke-static {v4}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a(Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;)J

    move-result-wide v2

    goto/16 :goto_2

    :cond_5
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v4, v0, v5}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    invoke-direct/range {p0 .. p0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->b()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    :catch_0
    move-exception v4

    goto/16 :goto_2

    :cond_6
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v4, v0, v5}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v2, v4, 0x1

    int-to-long v2, v2

    mul-long/2addr v2, v6

    const-wide/16 v14, 0x1

    sub-long/2addr v2, v14

    goto :goto_4

    :cond_8
    new-instance v4, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/pop/multicopy/c;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/estrongs/android/pop/multicopy/c;-><init>(Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;Lcom/estrongs/a/a;)V

    const-string v3, "Update SegmentInfos"

    invoke-direct {v4, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->isCopyFinished()Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->getUnfinshedSegs()Ljava/util/List;

    move-result-object v5

    invoke-static {v10}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-array v7, v10, [Lcom/estrongs/android/pop/multicopy/a;

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v10, :cond_9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_9

    new-instance v8, Lcom/estrongs/android/pop/multicopy/a;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/estrongs/android/pop/multicopy/a;-><init>(Lcom/estrongs/a/a;)V

    invoke-virtual {v8, v3}, Lcom/estrongs/android/pop/multicopy/a;->a(I)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;

    iget-wide v12, v2, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;->startOffset:J

    invoke-virtual {v8, v12, v13}, Lcom/estrongs/android/pop/multicopy/a;->a(J)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;

    iget-wide v12, v2, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;->endOffset:J

    invoke-virtual {v8, v12, v13}, Lcom/estrongs/android/pop/multicopy/a;->b(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    iget-object v2, v2, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->destPath:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lcom/estrongs/android/pop/multicopy/a;->b(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/estrongs/android/pop/multicopy/a;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    iget-wide v12, v2, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->srcLength:J

    invoke-virtual {v8, v12, v13}, Lcom/estrongs/android/pop/multicopy/a;->c(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->c:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    iget v2, v2, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->bufferSize:I

    invoke-virtual {v8, v2}, Lcom/estrongs/android/pop/multicopy/a;->b(I)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;

    invoke-virtual {v8, v2}, Lcom/estrongs/android/pop/multicopy/a;->a(Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;)V

    aput-object v8, v7, v3

    invoke-interface {v6, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_9
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide/32 v2, 0x1e13380

    :try_start_2
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v2, v3, v8}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_7
    const/4 v3, 0x0

    const/4 v2, 0x0

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    :goto_8
    if-ge v3, v10, :cond_b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_b

    aget-object v6, v7, v3

    invoke-virtual {v6}, Lcom/estrongs/android/pop/multicopy/a;->a()Z

    move-result v6

    if-eqz v6, :cond_a

    add-int/lit8 v2, v2, 0x1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    :cond_b
    if-nez v2, :cond_d

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    invoke-direct/range {p0 .. p0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a()V

    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->b()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/estrongs/fs/b/ab;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lcom/estrongs/fs/b/ab;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Z)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/estrongs/fs/b/ab;->execute(Z)V

    :cond_c
    const/4 v2, 0x0

    :goto_9
    return v2

    :cond_d
    move v10, v2

    goto/16 :goto_5

    :cond_e
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    invoke-direct/range {p0 .. p0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->b()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->b()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_f
    const/4 v2, 0x1

    goto :goto_9

    :cond_10
    move v10, v2

    goto/16 :goto_1

    :cond_11
    move/from16 v2, p9

    goto/16 :goto_0
.end method
