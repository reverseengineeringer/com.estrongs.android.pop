.class abstract Lcom/c/a/a/v;
.super Ljava/lang/Object;


# direct methods
.method static a(I)B
    .locals 1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method static a(BB)I
    .locals 2

    shl-int/lit8 v0, p0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    and-int/lit16 v1, p1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(B)Ljava/lang/String;
    .locals 1

    and-int/lit16 v0, p0, 0xff

    invoke-static {v0}, Lcom/c/a/a/v;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a([B)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    invoke-static {v2, v3}, Lcom/c/a/a/v;->a(BB)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/io/InputStream;Lcom/c/a/a/i;[B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/c/a/a/v;->a(Ljava/io/InputStream;Lcom/c/a/a/i;[BII)V

    return-void
.end method

.method static a(Ljava/io/InputStream;Lcom/c/a/a/i;[BII)V
    .locals 6

    if-gez p4, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-boolean v1, p1, Lcom/c/a/a/i;->a:Z

    if-eqz v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v1, p1, Lcom/c/a/a/i;->b:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_3

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "OBEX read timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    if-eqz v1, :cond_2

    :cond_5
    add-int v1, p3, v0

    sub-int v2, p4, v0

    invoke-virtual {p0, p2, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_6

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF while reading OBEX packet"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_6
    add-int/2addr v0, v1

    if-lt v0, p4, :cond_1

    return-void
.end method

.method static a(Ljava/lang/String;)[B
    .locals 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/c/a/a/v;->a(I)B

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {v3}, Lcom/c/a/a/v;->b(I)B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static b(I)B
    .locals 1

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method static b([B)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-16BE"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/c/a/a/v;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {p0}, Lcom/c/a/a/v;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-16BE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/c/a/a/v;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {p0}, Lcom/c/a/a/v;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "CONNECT"

    goto :goto_0

    :sswitch_1
    const-string v0, "DISCONNECT"

    goto :goto_0

    :sswitch_2
    const-string v0, "ABORT"

    goto :goto_0

    :sswitch_3
    const-string v0, "SESSION"

    goto :goto_0

    :sswitch_4
    const-string v0, "SESSION FINAL"

    goto :goto_0

    :sswitch_5
    const-string v0, "PUT"

    goto :goto_0

    :sswitch_6
    const-string v0, "PUT FINAL"

    goto :goto_0

    :sswitch_7
    const-string v0, "GET"

    goto :goto_0

    :sswitch_8
    const-string v0, "GET FINAL"

    goto :goto_0

    :sswitch_9
    const-string v0, "SETPATH"

    goto :goto_0

    :sswitch_a
    const-string v0, "SETPATH FINAL"

    goto :goto_0

    :sswitch_b
    const-string v0, "OBEX_RESPONSE_CONTINUE"

    goto :goto_0

    :sswitch_c
    const-string v0, "OBEX_HTTP_OK"

    goto :goto_0

    :sswitch_d
    const-string v0, "OBEX_HTTP_CREATED"

    goto :goto_0

    :sswitch_e
    const-string v0, "OBEX_HTTP_ACCEPTED"

    goto :goto_0

    :sswitch_f
    const-string v0, "OBEX_HTTP_NOT_AUTHORITATIVE"

    goto :goto_0

    :sswitch_10
    const-string v0, "OBEX_HTTP_NO_CONTENT"

    goto :goto_0

    :sswitch_11
    const-string v0, "OBEX_HTTP_RESET"

    goto :goto_0

    :sswitch_12
    const-string v0, "OBEX_HTTP_PARTIAL"

    goto :goto_0

    :sswitch_13
    const-string v0, "OBEX_HTTP_MULT_CHOICE"

    goto :goto_0

    :sswitch_14
    const-string v0, "OBEX_HTTP_MOVED_PERM"

    goto :goto_0

    :sswitch_15
    const-string v0, "OBEX_HTTP_MOVED_TEMP"

    goto :goto_0

    :sswitch_16
    const-string v0, "OBEX_HTTP_SEE_OTHER"

    goto :goto_0

    :sswitch_17
    const-string v0, "OBEX_HTTP_NOT_MODIFIED"

    goto :goto_0

    :sswitch_18
    const-string v0, "OBEX_HTTP_USE_PROXY"

    goto :goto_0

    :sswitch_19
    const-string v0, "OBEX_HTTP_BAD_REQUEST"

    goto :goto_0

    :sswitch_1a
    const-string v0, "OBEX_HTTP_UNAUTHORIZED"

    goto :goto_0

    :sswitch_1b
    const-string v0, "OBEX_HTTP_PAYMENT_REQUIRED"

    goto :goto_0

    :sswitch_1c
    const-string v0, "OBEX_HTTP_FORBIDDEN"

    goto :goto_0

    :sswitch_1d
    const-string v0, "OBEX_HTTP_NOT_FOUND"

    goto :goto_0

    :sswitch_1e
    const-string v0, "OBEX_HTTP_BAD_METHOD"

    goto :goto_0

    :sswitch_1f
    const-string v0, "OBEX_HTTP_NOT_ACCEPTABLE"

    goto :goto_0

    :sswitch_20
    const-string v0, "OBEX_HTTP_PROXY_AUTH"

    goto :goto_0

    :sswitch_21
    const-string v0, "OBEX_HTTP_TIMEOUT"

    goto :goto_0

    :sswitch_22
    const-string v0, "OBEX_HTTP_CONFLICT"

    goto :goto_0

    :sswitch_23
    const-string v0, "OBEX_HTTP_GONE"

    goto :goto_0

    :sswitch_24
    const-string v0, "OBEX_HTTP_LENGTH_REQUIRED"

    goto :goto_0

    :sswitch_25
    const-string v0, "OBEX_HTTP_PRECON_FAILED"

    goto :goto_0

    :sswitch_26
    const-string v0, "OBEX_HTTP_ENTITY_TOO_LARGE"

    goto :goto_0

    :sswitch_27
    const-string v0, "OBEX_HTTP_REQ_TOO_LARGE"

    goto :goto_0

    :sswitch_28
    const-string v0, "OBEX_HTTP_UNSUPPORTED_TYPE"

    goto :goto_0

    :sswitch_29
    const-string v0, "OBEX_HTTP_INTERNAL_ERROR"

    goto :goto_0

    :sswitch_2a
    const-string v0, "OBEX_HTTP_NOT_IMPLEMENTED"

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "OBEX_HTTP_BAD_GATEWAY"

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "OBEX_HTTP_UNAVAILABLE"

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "OBEX_HTTP_GATEWAY_TIMEOUT"

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "OBEX_HTTP_VERSION"

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "OBEX_DATABASE_FULL"

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "OBEX_DATABASE_LOCKED"

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_7
        0x5 -> :sswitch_9
        0x7 -> :sswitch_3
        0x80 -> :sswitch_0
        0x81 -> :sswitch_1
        0x82 -> :sswitch_6
        0x83 -> :sswitch_8
        0x85 -> :sswitch_a
        0x87 -> :sswitch_4
        0x90 -> :sswitch_b
        0xa0 -> :sswitch_c
        0xa1 -> :sswitch_d
        0xa2 -> :sswitch_e
        0xa3 -> :sswitch_f
        0xa4 -> :sswitch_10
        0xa5 -> :sswitch_11
        0xa6 -> :sswitch_12
        0xb0 -> :sswitch_13
        0xb1 -> :sswitch_14
        0xb2 -> :sswitch_15
        0xb3 -> :sswitch_16
        0xb4 -> :sswitch_17
        0xb5 -> :sswitch_18
        0xc0 -> :sswitch_19
        0xc1 -> :sswitch_1a
        0xc2 -> :sswitch_1b
        0xc3 -> :sswitch_1c
        0xc4 -> :sswitch_1d
        0xc5 -> :sswitch_1e
        0xc6 -> :sswitch_1f
        0xc7 -> :sswitch_20
        0xc8 -> :sswitch_21
        0xc9 -> :sswitch_22
        0xca -> :sswitch_23
        0xcb -> :sswitch_24
        0xcc -> :sswitch_25
        0xcd -> :sswitch_26
        0xce -> :sswitch_27
        0xcf -> :sswitch_28
        0xd0 -> :sswitch_29
        0xd1 -> :sswitch_2a
        0xd2 -> :sswitch_2b
        0xd3 -> :sswitch_2c
        0xd4 -> :sswitch_2d
        0xd5 -> :sswitch_2e
        0xe0 -> :sswitch_2f
        0xe1 -> :sswitch_30
        0xff -> :sswitch_2
    .end sparse-switch
.end method
