.class Lcom/estrongs/fs/impl/pcs/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

.field final synthetic g:Z

.field final synthetic h:Z

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/pcs/PcsFileSystem;JLcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/pcs/d;->m:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    iput-wide p2, p0, Lcom/estrongs/fs/impl/pcs/d;->a:J

    iput-object p4, p0, Lcom/estrongs/fs/impl/pcs/d;->b:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    iput-object p5, p0, Lcom/estrongs/fs/impl/pcs/d;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/estrongs/fs/impl/pcs/d;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/estrongs/fs/impl/pcs/d;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/estrongs/fs/impl/pcs/d;->f:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    iput-boolean p9, p0, Lcom/estrongs/fs/impl/pcs/d;->g:Z

    iput-boolean p10, p0, Lcom/estrongs/fs/impl/pcs/d;->h:Z

    iput-object p11, p0, Lcom/estrongs/fs/impl/pcs/d;->i:Ljava/lang/String;

    iput-object p12, p0, Lcom/estrongs/fs/impl/pcs/d;->j:Ljava/lang/String;

    iput-object p13, p0, Lcom/estrongs/fs/impl/pcs/d;->k:Ljava/lang/String;

    iput-object p14, p0, Lcom/estrongs/fs/impl/pcs/d;->l:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-wide v0, p0, Lcom/estrongs/fs/impl/pcs/d;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-wide/16 v0, 0x1

    move-wide v8, v0

    :goto_0
    const/4 v10, 0x1

    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-wide v0, p0, Lcom/estrongs/fs/impl/pcs/d;->a:J

    sget v2, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    new-instance v1, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;

    iget-object v2, p0, Lcom/estrongs/fs/impl/pcs/d;->b:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    iget-object v3, p0, Lcom/estrongs/fs/impl/pcs/d;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/estrongs/fs/impl/pcs/d;->a:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    const-wide/16 v4, 0x1

    :goto_1
    sget v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a:I

    int-to-long v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;JJ)V

    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-lez v0, :cond_f

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v3, p0, Lcom/estrongs/fs/impl/pcs/d;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/fs/impl/pcs/d;->e:Ljava/lang/String;

    const-string v4, "bduss:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Cookie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BDUSS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/fs/impl/pcs/d;->m:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    iget-object v6, p0, Lcom/estrongs/fs/impl/pcs/d;->e:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Lcom/estrongs/fs/impl/pcs/PcsFileSystem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v3, Lorg/apache/http/entity/mime/MultipartEntity;

    sget-object v4, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    const-string v4, "uploadedfile"

    invoke-virtual {v3, v4, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/fs/impl/pcs/d;->m:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    const-string v4, "upload"

    invoke-static {v3, v0, v4}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Lcom/estrongs/fs/impl/pcs/PcsFileSystem;Ljava/util/Map;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_7

    const/4 v7, 0x0

    :goto_3
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v7, 0x0

    :cond_1
    if-eqz v7, :cond_e

    :try_start_1
    iget-object v1, p0, Lcom/estrongs/fs/impl/pcs/d;->m:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    iget-object v2, p0, Lcom/estrongs/fs/impl/pcs/d;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/impl/pcs/d;->e:Ljava/lang/String;

    iget-wide v4, p0, Lcom/estrongs/fs/impl/pcs/d;->a:J

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Lcom/estrongs/fs/impl/pcs/PcsFileSystem;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v7, 0x0

    move v1, v7

    :goto_4
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/fs/impl/pcs/d;->f:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->setResult(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-boolean v0, p0, Lcom/estrongs/fs/impl/pcs/d;->g:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/pcs/d;->h:Z

    if-eqz v0, :cond_2

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/estrongs/fs/impl/pcs/d;->m:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    iget-object v1, p0, Lcom/estrongs/fs/impl/pcs/d;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/impl/pcs/d;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/impl/pcs/d;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_5
    return-void

    :cond_3
    iget-wide v0, p0, Lcom/estrongs/fs/impl/pcs/d;->a:J

    move-wide v8, v0

    goto/16 :goto_0

    :cond_4
    :try_start_4
    iget-wide v4, p0, Lcom/estrongs/fs/impl/pcs/d;->a:J

    goto/16 :goto_1

    :cond_5
    new-instance v1, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;

    iget-object v0, p0, Lcom/estrongs/fs/impl/pcs/d;->b:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    iget-object v4, p0, Lcom/estrongs/fs/impl/pcs/d;->c:Ljava/lang/String;

    iget-wide v2, p0, Lcom/estrongs/fs/impl/pcs/d;->a:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_6

    const-wide/16 v2, 0x1

    :goto_6
    invoke-direct {v1, v0, v4, v2, v3}, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move v1, v10

    :goto_7
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/pcs/d;->f:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->setResult(Z)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/pcs/d;->b:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_8
    :try_start_6
    iget-boolean v0, p0, Lcom/estrongs/fs/impl/pcs/d;->g:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/pcs/d;->h:Z

    if-eqz v0, :cond_2

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/estrongs/fs/impl/pcs/d;->m:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    iget-object v1, p0, Lcom/estrongs/fs/impl/pcs/d;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/impl/pcs/d;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/impl/pcs/d;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_6
    :try_start_7
    iget-wide v2, p0, Lcom/estrongs/fs/impl/pcs/d;->a:J

    goto :goto_6

    :cond_7
    const-string v3, "md5"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_8
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_9
    sget v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    int-to-long v2, v0

    sub-long/2addr v8, v2

    goto/16 :goto_2

    :cond_a
    :try_start_8
    iget-object v0, p0, Lcom/estrongs/fs/impl/pcs/d;->m:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    iget-object v1, p0, Lcom/estrongs/fs/impl/pcs/d;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/impl/pcs/d;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/impl/pcs/d;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/fs/impl/pcs/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_b
    :try_start_9
    iget-object v0, p0, Lcom/estrongs/fs/impl/pcs/d;->m:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    iget-object v1, p0, Lcom/estrongs/fs/impl/pcs/d;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/impl/pcs/d;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/impl/pcs/d;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/fs/impl/pcs/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    :goto_9
    :try_start_a
    iget-boolean v1, p0, Lcom/estrongs/fs/impl/pcs/d;->g:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/estrongs/fs/impl/pcs/d;->h:Z

    if-eqz v1, :cond_c

    if-eqz v10, :cond_d

    iget-object v1, p0, Lcom/estrongs/fs/impl/pcs/d;->m:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    iget-object v2, p0, Lcom/estrongs/fs/impl/pcs/d;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/impl/pcs/d;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/fs/impl/pcs/d;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :cond_c
    :goto_a
    throw v0

    :cond_d
    :try_start_b
    iget-object v1, p0, Lcom/estrongs/fs/impl/pcs/d;->m:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    iget-object v2, p0, Lcom/estrongs/fs/impl/pcs/d;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/impl/pcs/d;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/fs/impl/pcs/d;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/fs/impl/pcs/d;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_a

    :catchall_1
    move-exception v0

    move v10, v7

    goto :goto_9

    :catchall_2
    move-exception v0

    move v10, v1

    goto :goto_9

    :catch_4
    move-exception v0

    goto/16 :goto_8

    :catch_5
    move-exception v0

    move v1, v7

    goto/16 :goto_7

    :catch_6
    move-exception v0

    goto/16 :goto_7

    :cond_e
    move v1, v7

    goto/16 :goto_4

    :cond_f
    move v7, v10

    goto/16 :goto_3
.end method
