.class public Lcom/estrongs/android/widget/af;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/io/File;

.field j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/widget/af;->j:I

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/estrongs/android/widget/af;->j:I

    invoke-virtual {p0}, Lcom/estrongs/android/widget/af;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/af;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/android/widget/af;->j:I

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:[Ljava/io/File;

    iget v1, p0, Lcom/estrongs/android/widget/af;->j:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/widget/af;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a([Ljava/io/File;)Z
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/widget/af;->a:[Ljava/io/File;

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:[Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:[Ljava/io/File;

    array-length v0, v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/widget/af;->j:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:[Ljava/io/File;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/estrongs/android/widget/af;->a:[Ljava/io/File;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/widget/af;->a:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/widget/af;->a:[Ljava/io/File;

    array-length v2, v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/widget/af;->a:[Ljava/io/File;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Ljava/io/File;

    :goto_2
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lcom/estrongs/android/widget/af;->a:[Ljava/io/File;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    :goto_3
    iget-object v1, p0, Lcom/estrongs/android/widget/af;->a:[Ljava/io/File;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, -0x1

    iget-object v3, p0, Lcom/estrongs/android/widget/af;->a:[Ljava/io/File;

    aget-object v3, v3, v0

    aput-object v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iput-object v2, p0, Lcom/estrongs/android/widget/af;->a:[Ljava/io/File;

    goto :goto_0
.end method

.method public c(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public c()[Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:[Ljava/io/File;

    return-object v0
.end method
