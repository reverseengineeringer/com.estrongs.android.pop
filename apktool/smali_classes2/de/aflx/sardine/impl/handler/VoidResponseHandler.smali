.class public Lde/aflx/sardine/impl/handler/VoidResponseHandler;
.super Lde/aflx/sardine/impl/handler/ValidatingResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/aflx/sardine/impl/handler/ValidatingResponseHandler",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lde/aflx/sardine/impl/handler/ValidatingResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lde/aflx/sardine/impl/handler/VoidResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Void;
    .locals 1

    invoke-virtual {p0, p1}, Lde/aflx/sardine/impl/handler/VoidResponseHandler;->validateResponse(Lorg/apache/http/HttpResponse;)V

    const/4 v0, 0x0

    return-object v0
.end method
