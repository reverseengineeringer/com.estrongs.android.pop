.class Lorg/apache/tika/parser/mp3/ID3v23Handler$RawV23TagIterator;
.super Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;


# instance fields
.field final synthetic this$0:Lorg/apache/tika/parser/mp3/ID3v23Handler;


# direct methods
.method private constructor <init>(Lorg/apache/tika/parser/mp3/ID3v23Handler;Lorg/apache/tika/parser/mp3/ID3v2Frame;)V
    .locals 6

    const/4 v2, 0x4

    iput-object p1, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler$RawV23TagIterator;->this$0:Lorg/apache/tika/parser/mp3/ID3v23Handler;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p2

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;-><init>(Lorg/apache/tika/parser/mp3/ID3v2Frame;IIII)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tika/parser/mp3/ID3v23Handler;Lorg/apache/tika/parser/mp3/ID3v2Frame;Lorg/apache/tika/parser/mp3/ID3v23Handler$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/tika/parser/mp3/ID3v23Handler$RawV23TagIterator;-><init>(Lorg/apache/tika/parser/mp3/ID3v23Handler;Lorg/apache/tika/parser/mp3/ID3v2Frame;)V

    return-void
.end method
