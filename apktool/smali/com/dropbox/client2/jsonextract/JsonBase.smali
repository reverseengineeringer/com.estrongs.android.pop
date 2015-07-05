.class abstract Lcom/dropbox/client2/jsonextract/JsonBase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final internal:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/client2/jsonextract/JsonBase;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/client2/jsonextract/JsonBase;->internal:Ljava/lang/Object;

    iput-object p2, p0, Lcom/dropbox/client2/jsonextract/JsonBase;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;
    .locals 3

    new-instance v0, Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    iget-object v1, p0, Lcom/dropbox/client2/jsonextract/JsonBase;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/client2/jsonextract/JsonBase;->internal:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2}, Lcom/dropbox/client2/jsonextract/JsonExtractionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
