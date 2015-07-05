.class public interface abstract Lde/aflx/sardine/Sardine;
.super Ljava/lang/Object;


# virtual methods
.method public abstract abort()V
.end method

.method public abstract copy(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract createDirectory(Ljava/lang/String;)V
.end method

.method public abstract delete(Ljava/lang/String;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract disableCompression()V
.end method

.method public abstract disablePreemptiveAuthentication()V
.end method

.method public abstract enableCompression()V
.end method

.method public abstract enablePreemptiveAuthentication(Ljava/lang/String;)V
.end method

.method public abstract exists(Ljava/lang/String;)Z
.end method

.method public abstract get(Ljava/lang/String;)Lde/aflx/sardine/impl/io/ConsumingInputStream;
.end method

.method public abstract get(Ljava/lang/String;Ljava/util/Map;)Lde/aflx/sardine/impl/io/ConsumingInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lde/aflx/sardine/impl/io/ConsumingInputStream;"
        }
    .end annotation
.end method

.method public abstract getResources(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lde/aflx/sardine/DavResource;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isAborted()Z
.end method

.method public abstract list(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lde/aflx/sardine/DavResource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract list(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lde/aflx/sardine/DavResource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lock(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract move(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract patch(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lde/aflx/sardine/util/QName;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lde/aflx/sardine/DavResource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract patch(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lde/aflx/sardine/util/QName;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lde/aflx/sardine/util/QName;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lde/aflx/sardine/DavResource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;Ljava/io/InputStream;)V
.end method

.method public abstract put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
.end method

.method public abstract put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Z)V
.end method

.method public abstract put(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)V
.end method

.method public abstract put(Ljava/lang/String;[B)V
.end method

.method public abstract put(Ljava/lang/String;[BLjava/lang/String;)V
.end method

.method public abstract setCredentials(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setCustomProps(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract unlock(Ljava/lang/String;Ljava/lang/String;)V
.end method
