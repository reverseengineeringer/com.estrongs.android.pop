.class public Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;
.super Ljava/lang/Object;


# instance fields
.field private description:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;->language:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;->description:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;->text:Ljava/lang/String;

    return-object v0
.end method
