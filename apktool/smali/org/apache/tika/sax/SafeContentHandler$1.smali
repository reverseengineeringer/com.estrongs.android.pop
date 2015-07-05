.class Lorg/apache/tika/sax/SafeContentHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tika/sax/SafeContentHandler$Output;


# instance fields
.field final synthetic this$0:Lorg/apache/tika/sax/SafeContentHandler;


# direct methods
.method constructor <init>(Lorg/apache/tika/sax/SafeContentHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/tika/sax/SafeContentHandler$1;->this$0:Lorg/apache/tika/sax/SafeContentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write([CII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/sax/SafeContentHandler$1;->this$0:Lorg/apache/tika/sax/SafeContentHandler;

    # invokes: Lorg/apache/tika/sax/ContentHandlerDecorator;->characters([CII)V
    invoke-static {v0, p1, p2, p3}, Lorg/apache/tika/sax/SafeContentHandler;->access$001(Lorg/apache/tika/sax/SafeContentHandler;[CII)V

    return-void
.end method
