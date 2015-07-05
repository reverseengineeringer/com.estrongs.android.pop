.class public Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_CHUNK_SIZE:I = 0x400000


# instance fields
.field private active:Z

.field private bytesInChunkToUpload:I

.field private chunk:[B

.field private lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

.field private offset:J

.field private stream:Ljava/io/InputStream;

.field private targetLength:J

.field final synthetic this$0:Lcom/dropbox/client2/DropboxAPI;

.field private uploadId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;J)V
    .locals 7

    const/high16 v6, 0x400000

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;-><init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;JI)V

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;JI)V
    .locals 3

    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->this$0:Lcom/dropbox/client2/DropboxAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->bytesInChunkToUpload:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->active:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    iput-object p2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->stream:Ljava/io/InputStream;

    iput-wide p3, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    new-array v0, p5, [B

    iput-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->chunk:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;JILcom/dropbox/client2/DropboxAPI$ChunkedUploader;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;-><init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;JI)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;JLcom/dropbox/client2/DropboxAPI$ChunkedUploader;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;-><init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;J)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->abort()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->active:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finish(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->this$0:Lcom/dropbox/client2/DropboxAPI;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->uploadId:Ljava/lang/String;

    const/4 v2, 0x0

    # invokes: Lcom/dropbox/client2/DropboxAPI;->commitChunkedUpload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    invoke-static {v0, p1, v1, v2, p2}, Lcom/dropbox/client2/DropboxAPI;->access$0(Lcom/dropbox/client2/DropboxAPI;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->active:Z

    return v0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    return-wide v0
.end method

.method public isComplete()Z
    .locals 4

    iget-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    iget-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public upload()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->upload(Lcom/dropbox/client2/ProgressListener;)V

    return-void
.end method

.method public upload(Lcom/dropbox/client2/ProgressListener;)V
    .locals 10

    const/4 v9, 0x0

    iget-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v8, v0

    :cond_0
    :goto_0
    const/4 v4, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Lcom/dropbox/client2/ProgressListener$Adjusted;

    iget-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    iget-wide v4, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/client2/ProgressListener$Adjusted;-><init>(Lcom/dropbox/client2/ProgressListener;JJ)V

    move-object v4, v0

    :cond_1
    iget v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->bytesInChunkToUpload:I

    if-nez v0, :cond_6

    if-eqz v8, :cond_4

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->chunk:[B

    array-length v0, v0

    :goto_1
    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->stream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->chunk:[B

    invoke-virtual {v1, v2, v9, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->bytesInChunkToUpload:I

    iget v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->bytesInChunkToUpload:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    if-eqz v8, :cond_5

    iget-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    iput-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    iput v9, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->bytesInChunkToUpload:I

    :cond_2
    return-void

    :cond_3
    move v8, v9

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->chunk:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    iget-wide v6, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    sub-long/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->abort()V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InputStream ended after "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lcom/dropbox/client2/exception/DropboxServerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->active:Z

    if-nez v0, :cond_7

    new-instance v0, Lcom/dropbox/client2/exception/DropboxPartialFileException;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/dropbox/client2/exception/DropboxPartialFileException;-><init>(J)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/dropbox/client2/exception/DropboxServerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, v1, Lcom/dropbox/client2/exception/DropboxServerException;->body:Lcom/dropbox/client2/exception/DropboxServerException$Error;

    iget-object v0, v0, Lcom/dropbox/client2/exception/DropboxServerException$Error;->fields:Ljava/util/Map;

    const-string v2, "offset"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/dropbox/client2/exception/DropboxServerException;->body:Lcom/dropbox/client2/exception/DropboxServerException$Error;

    iget-object v0, v0, Lcom/dropbox/client2/exception/DropboxServerException$Error;->fields:Ljava/util/Map;

    const-string v2, "offset"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_8

    iput v9, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->bytesInChunkToUpload:I

    iput-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    :goto_2
    if-nez v8, :cond_0

    iget-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    iget-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget-boolean v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    iget-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->this$0:Lcom/dropbox/client2/DropboxAPI;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->chunk:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->bytesInChunkToUpload:I

    int-to-long v2, v2

    iget-wide v5, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    iget-object v7, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->uploadId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/client2/DropboxAPI;->chunkedUploadRequest(Ljava/io/InputStream;JLcom/dropbox/client2/ProgressListener;JLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->upload()Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;->getOffset()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;->getUploadId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->uploadId:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->bytesInChunkToUpload:I
    :try_end_4
    .catch Lcom/dropbox/client2/exception/DropboxServerException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_8
    throw v1

    :cond_9
    throw v1
.end method
