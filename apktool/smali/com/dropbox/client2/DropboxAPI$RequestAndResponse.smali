.class public final Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;
.super Ljava/lang/Object;


# instance fields
.field public final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field public final response:Lorg/apache/http/HttpResponse;


# direct methods
.method protected constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p2, p0, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;->response:Lorg/apache/http/HttpResponse;

    return-void
.end method
