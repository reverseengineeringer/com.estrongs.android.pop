.class public interface abstract Loauth/signpost/http/HttpRequest;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAllHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMessagePayload()Ljava/io/InputStream;
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getRequestUrl()Ljava/lang/String;
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setRequestUrl(Ljava/lang/String;)V
.end method

.method public abstract unwrap()Ljava/lang/Object;
.end method
