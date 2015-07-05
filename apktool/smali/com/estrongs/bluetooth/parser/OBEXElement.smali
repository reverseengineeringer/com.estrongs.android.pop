.class public Lcom/estrongs/bluetooth/parser/OBEXElement;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;

.field private static final m:Ljava/text/SimpleDateFormat;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

.field private e:J

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private final l:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;

    invoke-direct {v0}, Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;-><init>()V

    sput-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement;->a:Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement;->m:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->b:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FOLDER:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->d:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->e:J

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->i:Ljava/lang/String;

    const-string v0, "RWD"

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->k:Ljava/lang/String;

    new-array v0, v5, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "<"

    aput-object v2, v1, v3

    const-string v2, ">"

    aput-object v2, v1, v4

    const-string v2, "&"

    aput-object v2, v1, v5

    const-string v2, "\'"

    aput-object v2, v1, v6

    const-string v2, "\""

    aput-object v2, v1, v7

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "&lt;"

    aput-object v2, v1, v3

    const-string v2, "&gt;"

    aput-object v2, v1, v4

    const-string v2, "&amp;"

    aput-object v2, v1, v5

    const-string v2, "&apos;"

    aput-object v2, v1, v6

    const-string v2, "&quot;"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->l:[[Ljava/lang/String;

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x3

    const/4 v1, 0x0

    const-string v2, ""

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move v6, v1

    move-object v1, v2

    move v2, v6

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x52

    if-eq v3, v4, :cond_2

    const/16 v4, 0x57

    if-eq v3, v4, :cond_2

    const/16 v4, 0x44

    if-ne v3, v4, :cond_3

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->e:J

    return-void
.end method

.method public a(Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FOLDER:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    :cond_0
    iput-object p1, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->d:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->l:[[Ljava/lang/String;

    aget-object v0, v0, v1

    array-length v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->l:[[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->l:[[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->c:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->f:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->f:Ljava/util/Date;

    sget-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement;->a:Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;

    invoke-virtual {v0, p1}, Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->f:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->e:J

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->j:Ljava/lang/String;

    return-void
.end method

.method public d()Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->d:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    return-object v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->d:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    sget-object v1, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FOLDER:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->f:Ljava/util/Date;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement;->m:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->f:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->j:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x1d5

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->d()Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    move-result-object v0

    sget-object v2, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FOLDER:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    if-ne v0, v2, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0
.end method
