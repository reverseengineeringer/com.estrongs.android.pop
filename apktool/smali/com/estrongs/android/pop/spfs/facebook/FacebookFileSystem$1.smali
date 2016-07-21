.class final Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystem$1;
.super Ljava/io/BufferedOutputStream;


# instance fields
.field final synthetic val$conn:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;)V
    .locals 0

    iput-object p2, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystem$1;->val$conn:Ljava/net/HttpURLConnection;

    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystem$1;->write([B)V

    invoke-super {p0}, Ljava/io/BufferedOutputStream;->close()V

    const-string v0, ""

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystem$1;->val$conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    # invokes: Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystem;->read(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystem;->access$000(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to upload"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to upload"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystem$1;->val$conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    # invokes: Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystem;->read(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystem;->access$000(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method
