.class public Loauth/signpost/basic/HttpURLConnectionResponseAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Loauth/signpost/http/HttpResponse;


# instance fields
.field private connection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loauth/signpost/basic/HttpURLConnectionResponseAdapter;->connection:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Loauth/signpost/basic/HttpURLConnectionResponseAdapter;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Loauth/signpost/basic/HttpURLConnectionResponseAdapter;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget-object v0, p0, Loauth/signpost/basic/HttpURLConnectionResponseAdapter;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Loauth/signpost/basic/HttpURLConnectionResponseAdapter;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method
