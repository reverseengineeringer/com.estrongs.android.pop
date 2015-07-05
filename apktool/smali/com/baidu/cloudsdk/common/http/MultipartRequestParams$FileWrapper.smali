.class Lcom/baidu/cloudsdk/common/http/MultipartRequestParams$FileWrapper;
.super Ljava/lang/Object;


# instance fields
.field public mContentType:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mIn:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams$FileWrapper;->mIn:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams$FileWrapper;->mFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams$FileWrapper;->mContentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams$FileWrapper;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams$FileWrapper;->mFileName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nofilename"

    goto :goto_0
.end method
