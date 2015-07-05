.class public Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;
.super Ljava/lang/Object;


# instance fields
.field private audio:Lorg/apache/tika/parser/mp3/AudioFrame;

.field private lyrics:Lorg/apache/tika/parser/mp3/LyricsHandler;

.field private tags:[Lorg/apache/tika/parser/mp3/ID3Tags;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;)[Lorg/apache/tika/parser/mp3/ID3Tags;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->tags:[Lorg/apache/tika/parser/mp3/ID3Tags;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;[Lorg/apache/tika/parser/mp3/ID3Tags;)[Lorg/apache/tika/parser/mp3/ID3Tags;
    .locals 0

    iput-object p1, p0, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->tags:[Lorg/apache/tika/parser/mp3/ID3Tags;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;)Lorg/apache/tika/parser/mp3/AudioFrame;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->audio:Lorg/apache/tika/parser/mp3/AudioFrame;

    return-object v0
.end method

.method static synthetic access$102(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;Lorg/apache/tika/parser/mp3/AudioFrame;)Lorg/apache/tika/parser/mp3/AudioFrame;
    .locals 0

    iput-object p1, p0, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->audio:Lorg/apache/tika/parser/mp3/AudioFrame;

    return-object p1
.end method

.method static synthetic access$202(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;Lorg/apache/tika/parser/mp3/LyricsHandler;)Lorg/apache/tika/parser/mp3/LyricsHandler;
    .locals 0

    iput-object p1, p0, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->lyrics:Lorg/apache/tika/parser/mp3/LyricsHandler;

    return-object p1
.end method
