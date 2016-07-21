.class public Lcom/estrongs/android/nativetool/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field private e:Landroid/net/LocalSocket;

.field private f:[B


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/nativetool/a;->e:Landroid/net/LocalSocket;

    iput-object v1, p0, Lcom/estrongs/android/nativetool/a;->a:Ljava/lang/String;

    iput v0, p0, Lcom/estrongs/android/nativetool/a;->b:I

    iput v0, p0, Lcom/estrongs/android/nativetool/a;->c:I

    iput v0, p0, Lcom/estrongs/android/nativetool/a;->d:I

    iput-object v1, p0, Lcom/estrongs/android/nativetool/a;->f:[B

    iput-object p1, p0, Lcom/estrongs/android/nativetool/a;->e:Landroid/net/LocalSocket;

    iput p2, p0, Lcom/estrongs/android/nativetool/a;->b:I

    iput p3, p0, Lcom/estrongs/android/nativetool/a;->c:I

    iget v0, p0, Lcom/estrongs/android/nativetool/a;->b:I

    iget v1, p0, Lcom/estrongs/android/nativetool/a;->c:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/estrongs/android/nativetool/a;->f:[B

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Lcom/estrongs/android/nativetool/b;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/nativetool/a;->e:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/nativetool/a;->e:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    const/16 v1, 0xff

    :try_start_2
    invoke-static {v3, v1}, Lcom/estrongs/fs/impl/local/m;->a(Ljava/io/OutputStream;I)V

    invoke-static {v4}, Lcom/estrongs/fs/impl/local/m;->c(Ljava/io/InputStream;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "EEE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get response failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/nativetool/a;->e:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_4
    new-instance v1, Lcom/estrongs/android/nativetool/b;

    invoke-direct {v1}, Lcom/estrongs/android/nativetool/b;-><init>()V

    invoke-static {v4}, Lcom/estrongs/fs/impl/local/m;->c(Ljava/io/InputStream;)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    iput v2, v1, Lcom/estrongs/android/nativetool/b;->b:I

    iget v2, v1, Lcom/estrongs/android/nativetool/b;->b:I

    if-nez v2, :cond_3

    const/16 v2, 0x64

    iput v2, v1, Lcom/estrongs/android/nativetool/b;->b:I

    :cond_3
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/estrongs/android/nativetool/b;->a:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/estrongs/android/nativetool/a;->f:[B

    array-length v5, v5

    if-ge v2, v5, :cond_7

    iget-object v5, p0, Lcom/estrongs/android/nativetool/a;->f:[B

    iget-object v6, p0, Lcom/estrongs/android/nativetool/a;->f:[B

    array-length v6, v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    const-string v1, "EEE"

    const-string v2, "read error"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/nativetool/a;->e:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_6
    add-int/2addr v2, v5

    goto :goto_1

    :cond_7
    :try_start_6
    iget-object v2, p0, Lcom/estrongs/android/nativetool/a;->f:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v2

    if-eqz p1, :cond_8

    :try_start_7
    invoke-virtual {p1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iput-object p1, v1, Lcom/estrongs/android/nativetool/b;->a:Landroid/graphics/Bitmap;

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_8
    iget v5, p0, Lcom/estrongs/android/nativetool/a;->b:I

    iget v6, p0, Lcom/estrongs/android/nativetool/a;->c:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v1, Lcom/estrongs/android/nativetool/b;->a:Landroid/graphics/Bitmap;

    iget-object v5, v1, Lcom/estrongs/android/nativetool/b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    :goto_3
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v3, :cond_9

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_a
    iget-object v1, p0, Lcom/estrongs/android/nativetool/a;->e:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    :goto_4
    if-eqz v4, :cond_b

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_c
    iget-object v2, p0, Lcom/estrongs/android/nativetool/a;->e:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    throw v1

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v0

    goto :goto_4

    :catchall_2
    move-exception v1

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v4, v3

    move-object v3, v2

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v2, v0

    move-object v3, v4

    goto :goto_3
.end method

.method public a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/nativetool/a;->e:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/nativetool/a;->f:[B

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
