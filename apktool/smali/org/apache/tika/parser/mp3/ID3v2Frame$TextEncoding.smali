.class public Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;
.super Ljava/lang/Object;


# instance fields
.field public final doubleByte:Z

.field public final encoding:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;->doubleByte:Z

    iput-object p1, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;->encoding:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLorg/apache/tika/parser/mp3/ID3v2Frame$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
