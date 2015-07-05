.class public Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;
.super Lcom/baidu/cloudsdk/common/http/RequestParams;


# instance fields
.field protected mFileParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/cloudsdk/common/http/MultipartRequestParams$FileWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->mFileParams:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->mFileParams:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->mFileParams:Ljava/util/HashMap;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>([Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->mFileParams:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getHttpEntity()Lorg/apache/http/HttpEntity;
    .locals 10

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->mFileParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/baidu/cloudsdk/common/http/RequestParams;->getHttpEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/baidu/cloudsdk/common/http/MultipartEntity;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/MultipartEntity;-><init>()V

    iget-object v1, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->mParams:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/baidu/cloudsdk/common/http/MultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->mParamsWithArray:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0, v2, v1}, Lcom/baidu/cloudsdk/common/http/MultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->mFileParams:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    iget-object v1, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->mFileParams:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v7

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams$FileWrapper;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams$FileWrapper;->getFileName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams$FileWrapper;->mIn:Ljava/io/InputStream;

    iget-object v4, v4, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams$FileWrapper;->mContentType:Ljava/lang/String;

    if-ne v6, v8, :cond_6

    const/4 v5, 0x1

    :goto_3
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/cloudsdk/common/http/MultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Z)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    :cond_6
    move v5, v7

    goto :goto_3
.end method

.method protected getStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    invoke-super {p0}, Lcom/baidu/cloudsdk/common/http/RequestParams;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->mFileParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "FILE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "png"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->mFileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams$FileWrapper;

    invoke-direct {v1, p2, p3, p4}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams$FileWrapper;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/cloudsdk/common/http/RequestParams;->remove(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->mFileParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
