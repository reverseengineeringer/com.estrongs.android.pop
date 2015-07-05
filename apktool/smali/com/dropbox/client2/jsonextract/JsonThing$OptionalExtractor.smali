.class public final Lcom/dropbox/client2/jsonextract/JsonThing$OptionalExtractor;
.super Lcom/dropbox/client2/jsonextract/JsonExtractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/client2/jsonextract/JsonExtractor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public final elementExtractor:Lcom/dropbox/client2/jsonextract/JsonExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/client2/jsonextract/JsonExtractor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/client2/jsonextract/JsonExtractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/client2/jsonextract/JsonExtractor",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/dropbox/client2/jsonextract/JsonExtractor;-><init>()V

    iput-object p1, p0, Lcom/dropbox/client2/jsonextract/JsonThing$OptionalExtractor;->elementExtractor:Lcom/dropbox/client2/jsonextract/JsonExtractor;

    return-void
.end method


# virtual methods
.method public extract(Lcom/dropbox/client2/jsonextract/JsonThing;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/client2/jsonextract/JsonThing;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonThing$OptionalExtractor;->elementExtractor:Lcom/dropbox/client2/jsonextract/JsonExtractor;

    invoke-virtual {p1, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->optionalExtract(Lcom/dropbox/client2/jsonextract/JsonExtractor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
