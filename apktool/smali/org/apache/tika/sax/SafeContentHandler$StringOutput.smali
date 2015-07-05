.class Lorg/apache/tika/sax/SafeContentHandler$StringOutput;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tika/sax/SafeContentHandler$Output;


# instance fields
.field private final builder:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/sax/SafeContentHandler$StringOutput;->builder:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tika/sax/SafeContentHandler$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/tika/sax/SafeContentHandler$StringOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/sax/SafeContentHandler$StringOutput;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write([CII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/sax/SafeContentHandler$StringOutput;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method
