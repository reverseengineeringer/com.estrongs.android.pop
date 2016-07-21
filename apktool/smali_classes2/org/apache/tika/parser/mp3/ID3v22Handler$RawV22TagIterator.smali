.class Lorg/apache/tika/parser/mp3/ID3v22Handler$RawV22TagIterator;
.super Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;


# instance fields
.field final synthetic this$0:Lorg/apache/tika/parser/mp3/ID3v22Handler;


# direct methods
.method private constructor <init>(Lorg/apache/tika/parser/mp3/ID3v22Handler;Lorg/apache/tika/parser/mp3/ID3v2Frame;)V
    .locals 6

    const/4 v2, 0x3

    iput-object p1, p0, Lorg/apache/tika/parser/mp3/ID3v22Handler$RawV22TagIterator;->this$0:Lorg/apache/tika/parser/mp3/ID3v22Handler;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;-><init>(Lorg/apache/tika/parser/mp3/ID3v2Frame;IIII)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tika/parser/mp3/ID3v22Handler;Lorg/apache/tika/parser/mp3/ID3v2Frame;Lorg/apache/tika/parser/mp3/ID3v22Handler$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/tika/parser/mp3/ID3v22Handler$RawV22TagIterator;-><init>(Lorg/apache/tika/parser/mp3/ID3v22Handler;Lorg/apache/tika/parser/mp3/ID3v2Frame;)V

    return-void
.end method
