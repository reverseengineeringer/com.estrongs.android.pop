.class Lorg/simpleframework/xml/stream/Indenter$Cache;
.super Ljava/lang/Object;


# instance fields
.field private count:I

.field private list:[Ljava/lang/String;

.field final synthetic this$0:Lorg/simpleframework/xml/stream/Indenter;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/Indenter;I)V
    .locals 1

    iput-object p1, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->this$0:Lorg/simpleframework/xml/stream/Indenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    return-void
.end method

.method private resize(I)V
    .locals 3

    new-array v1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    iput-object v1, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    return-void

    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    mul-int/lit8 v0, p1, 0x2

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter$Cache;->resize(I)V

    :cond_0
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    if-le p1, v0, :cond_1

    iput p1, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    return v0
.end method
