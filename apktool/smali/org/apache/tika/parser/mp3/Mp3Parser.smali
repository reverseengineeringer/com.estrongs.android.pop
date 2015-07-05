.class public Lorg/apache/tika/parser/mp3/Mp3Parser;
.super Lorg/apache/tika/parser/AbstractParser;


# static fields
.field public static final ALBUM:Ljava/lang/String; = "xmpDM:album"

.field public static final ARTIST:Ljava/lang/String; = "artist"

.field public static final TITLE:Ljava/lang/String; = "title"

.field private static final serialVersionUID:J = 0x7679c8693a6d3bd2L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/tika/parser/AbstractParser;-><init>()V

    return-void
.end method

.method protected static getAllTagHandlers(Ljava/io/InputStream;)Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;
    .locals 8

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    :cond_0
    :goto_0
    invoke-static {p0}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->createFrameIfPresent(Ljava/io/InputStream;)Lorg/apache/tika/parser/mp3/MP3Frame;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    instance-of v5, v0, Lorg/apache/tika/parser/mp3/ID3v2Frame;

    if-eqz v5, :cond_3

    check-cast v0, Lorg/apache/tika/parser/mp3/ID3v2Frame;

    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->getMajorVersion()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    new-instance v4, Lorg/apache/tika/parser/mp3/ID3v24Handler;

    invoke-direct {v4, v0}, Lorg/apache/tika/parser/mp3/ID3v24Handler;-><init>(Lorg/apache/tika/parser/mp3/ID3v2Frame;)V

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    :goto_1
    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->getMajorVersion()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    new-instance v3, Lorg/apache/tika/parser/mp3/ID3v23Handler;

    invoke-direct {v3, v0}, Lorg/apache/tika/parser/mp3/ID3v23Handler;-><init>(Lorg/apache/tika/parser/mp3/ID3v2Frame;)V

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->getMajorVersion()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    new-instance v2, Lorg/apache/tika/parser/mp3/ID3v22Handler;

    invoke-direct {v2, v0}, Lorg/apache/tika/parser/mp3/ID3v22Handler;-><init>(Lorg/apache/tika/parser/mp3/ID3v2Frame;)V

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_1

    :cond_3
    instance-of v5, v0, Lorg/apache/tika/parser/mp3/AudioFrame;

    if-eqz v5, :cond_0

    check-cast v0, Lorg/apache/tika/parser/mp3/AudioFrame;

    move-object v1, v0

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/apache/tika/parser/mp3/LyricsHandler;

    invoke-direct {v0, p0}, Lorg/apache/tika/parser/mp3/LyricsHandler;-><init>(Ljava/io/InputStream;)V

    iget-object v5, v0, Lorg/apache/tika/parser/mp3/LyricsHandler;->id3v1:Lorg/apache/tika/parser/mp3/ID3v1Handler;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/apache/tika/parser/mp3/ID3v24Handler;->getTagsPresent()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/apache/tika/parser/mp3/ID3v23Handler;->getTagsPresent()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/apache/tika/parser/mp3/ID3v22Handler;->getTagsPresent()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lorg/apache/tika/parser/mp3/ID3v1Handler;->getTagsPresent()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance v2, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;

    invoke-direct {v2}, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;-><init>()V

    # setter for: Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->audio:Lorg/apache/tika/parser/mp3/AudioFrame;
    invoke-static {v2, v1}, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->access$102(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;Lorg/apache/tika/parser/mp3/AudioFrame;)Lorg/apache/tika/parser/mp3/AudioFrame;

    # setter for: Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->lyrics:Lorg/apache/tika/parser/mp3/LyricsHandler;
    invoke-static {v2, v0}, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->access$202(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;Lorg/apache/tika/parser/mp3/LyricsHandler;)Lorg/apache/tika/parser/mp3/LyricsHandler;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/tika/parser/mp3/ID3Tags;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tika/parser/mp3/ID3Tags;

    # setter for: Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->tags:[Lorg/apache/tika/parser/mp3/ID3Tags;
    invoke-static {v2, v0}, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->access$002(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;[Lorg/apache/tika/parser/mp3/ID3Tags;)[Lorg/apache/tika/parser/mp3/ID3Tags;

    return-object v2

    :cond_9
    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_1
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)V
    .locals 7

    sget-object v0, Lorg/apache/tika/metadata/Metadata;->CONTENT_TYPE:Ljava/lang/String;

    const-string v1, "audio/mpeg"

    invoke-virtual {p2, v0, v1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmpDM:audioCompressor"

    const-string v1, "MP3"

    invoke-virtual {p2, v0, v1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/tika/parser/mp3/Mp3Parser;->getAllTagHandlers(Ljava/io/InputStream;)Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;

    move-result-object v1

    # getter for: Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->tags:[Lorg/apache/tika/parser/mp3/ID3Tags;
    invoke-static {v1}, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->access$000(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;)[Lorg/apache/tika/parser/mp3/ID3Tags;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_4

    new-instance v2, Lorg/apache/tika/parser/mp3/CompositeTagHandler;

    # getter for: Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->tags:[Lorg/apache/tika/parser/mp3/ID3Tags;
    invoke-static {v1}, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->access$000(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;)[Lorg/apache/tika/parser/mp3/ID3Tags;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/tika/parser/mp3/CompositeTagHandler;-><init>([Lorg/apache/tika/parser/mp3/ID3Tags;)V

    const-string v0, "title"

    invoke-virtual {v2}, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "artist"

    invoke-virtual {v2}, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmpDM:artist"

    invoke-virtual {v2}, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmpDM:composer"

    invoke-virtual {v2}, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->getComposer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmpDM:album"

    invoke-virtual {v2}, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmpDM:releaseDate"

    invoke-virtual {v2}, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->getYear()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmpDM:genre"

    invoke-virtual {v2}, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->getGenre()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->getComments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;->getLanguage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;->getDescription()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;->getText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;->getText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "xmpDM:logComment"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Lorg/apache/tika/metadata/Metadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->getTrackNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "xmpDM:trackNumber"

    invoke-virtual {v2}, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->getTrackNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    # getter for: Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->audio:Lorg/apache/tika/parser/mp3/AudioFrame;
    invoke-static {v1}, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->access$100(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;)Lorg/apache/tika/parser/mp3/AudioFrame;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "samplerate"

    # getter for: Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->audio:Lorg/apache/tika/parser/mp3/AudioFrame;
    invoke-static {v1}, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->access$100(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;)Lorg/apache/tika/parser/mp3/AudioFrame;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tika/parser/mp3/AudioFrame;->getSampleRate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channels"

    # getter for: Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->audio:Lorg/apache/tika/parser/mp3/AudioFrame;
    invoke-static {v1}, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->access$100(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;)Lorg/apache/tika/parser/mp3/AudioFrame;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tika/parser/mp3/AudioFrame;->getChannels()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "version"

    # getter for: Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->audio:Lorg/apache/tika/parser/mp3/AudioFrame;
    invoke-static {v1}, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->access$100(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;)Lorg/apache/tika/parser/mp3/AudioFrame;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tika/parser/mp3/AudioFrame;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmpDM:audioSampleRate"

    # getter for: Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->audio:Lorg/apache/tika/parser/mp3/AudioFrame;
    invoke-static {v1}, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->access$100(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;)Lorg/apache/tika/parser/mp3/AudioFrame;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tika/parser/mp3/AudioFrame;->getSampleRate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->audio:Lorg/apache/tika/parser/mp3/AudioFrame;
    invoke-static {v1}, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->access$100(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;)Lorg/apache/tika/parser/mp3/AudioFrame;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/AudioFrame;->getChannels()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    const-string v0, "xmpDM:audioChannelType"

    const-string v1, "Mono"

    invoke-virtual {p2, v0, v1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    # getter for: Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->audio:Lorg/apache/tika/parser/mp3/AudioFrame;
    invoke-static {v1}, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->access$100(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;)Lorg/apache/tika/parser/mp3/AudioFrame;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/AudioFrame;->getChannels()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    const-string v0, "xmpDM:audioChannelType"

    const-string v1, "Stereo"

    invoke-virtual {p2, v0, v1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    # getter for: Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->audio:Lorg/apache/tika/parser/mp3/AudioFrame;
    invoke-static {v1}, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->access$100(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;)Lorg/apache/tika/parser/mp3/AudioFrame;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/AudioFrame;->getChannels()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_8

    const-string v0, "xmpDM:audioChannelType"

    const-string v1, "5.1"

    invoke-virtual {p2, v0, v1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    # getter for: Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->audio:Lorg/apache/tika/parser/mp3/AudioFrame;
    invoke-static {v1}, Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;->access$100(Lorg/apache/tika/parser/mp3/Mp3Parser$ID3TagsAndAudio;)Lorg/apache/tika/parser/mp3/AudioFrame;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/AudioFrame;->getChannels()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    const-string v0, "xmpDM:audioChannelType"

    const-string v1, "7.1"

    invoke-virtual {p2, v0, v1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
