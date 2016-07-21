.class Lcom/estrongs/android/pop/app/f/ab;
.super Lcom/estrongs/android/pop/app/f/ad;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/f/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/f/y;Landroid/widget/Button;II)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/app/f/ad;-><init>(Lcom/estrongs/android/pop/app/f/y;Landroid/widget/Button;II)V

    return-void
.end method


# virtual methods
.method a(ILjava/lang/Object;)V
    .locals 10

    const-wide/32 v8, 0x100000

    const-wide/32 v6, 0x19000

    const/4 v1, 0x2

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/f/ab;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_5

    iput p1, p0, Lcom/estrongs/android/pop/app/f/ab;->h:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    iput-wide v4, v0, Lcom/estrongs/android/pop/app/f/x;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    iput-wide v4, v0, Lcom/estrongs/android/pop/app/f/x;->b:J

    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    iput-wide v6, v0, Lcom/estrongs/android/pop/app/f/x;->b:J

    :goto_0
    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    iput-wide v6, v0, Lcom/estrongs/android/pop/app/f/x;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    iput-wide v8, v0, Lcom/estrongs/android/pop/app/f/x;->b:J

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    iput-wide v8, v0, Lcom/estrongs/android/pop/app/f/x;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    const-wide/32 v2, 0x1000000

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->b:J

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    const-wide/32 v2, 0x1000000

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    const-wide/32 v2, 0x8000000

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->b:J

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    const-wide/32 v2, 0x8000000

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    iput-wide v4, v0, Lcom/estrongs/android/pop/app/f/x;->b:J

    goto :goto_0

    :cond_4
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/f/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "KB"

    aput-object v2, v0, v1

    const-string v1, "MB"

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->e(Lcom/estrongs/android/pop/app/f/y;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08063b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    const/16 v3, 0x200

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/f/ab;->a([Ljava/lang/String;Ljava/lang/String;II)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    goto/16 :goto_0
.end method

.method protected a(ILjava/lang/String;ILjava/lang/String;)V
    .locals 5

    const/high16 v4, 0x100000

    const-string v0, "KB"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x400

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->a:J

    :cond_0
    :goto_0
    const-string v0, "KB"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    mul-int/lit16 v1, p3, 0x400

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->b:J

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/app/f/ad;->a(ILjava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "MB"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    mul-int v1, p1, v4

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->a:J

    goto :goto_0

    :cond_3
    const-string v0, "MB"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    mul-int v1, p3, v4

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->b:J

    goto :goto_1
.end method

.method a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/f/ab;->b(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/android/pop/app/f/x;->a:J

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/f/ab;->b(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/android/pop/app/f/x;->b:J

    :goto_0
    return-void

    :cond_0
    const-string v1, " - "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/f/ab;->b(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/android/pop/app/f/x;->b:J

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ab;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/f/ab;->b(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/android/pop/app/f/x;->a:J

    goto :goto_0
.end method

.method b(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, -0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-string v2, "KB"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    goto :goto_0

    :cond_2
    const-string v2, "MB"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    goto :goto_0
.end method
