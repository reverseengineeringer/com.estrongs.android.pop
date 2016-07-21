.class Lcom/estrongs/android/pop/app/f/ac;
.super Lcom/estrongs/android/pop/app/f/ad;


# instance fields
.field a:I

.field b:I

.field c:Ljava/util/Calendar;

.field final synthetic d:Lcom/estrongs/android/pop/app/f/y;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/f/y;Landroid/widget/Button;II)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/app/f/ad;-><init>(Lcom/estrongs/android/pop/app/f/y;Landroid/widget/Button;II)V

    const/16 v0, 0x7db

    iput v0, p0, Lcom/estrongs/android/pop/app/f/ac;->m:I

    iput v1, p0, Lcom/estrongs/android/pop/app/f/ac;->a:I

    iput v1, p0, Lcom/estrongs/android/pop/app/f/ac;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->c:Ljava/util/Calendar;

    return-void
.end method

.method private b()Ljava/util/Calendar;
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->c:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->c:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/f/ac;->m:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/f/ac;->a:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/f/ac;->b:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->c:Ljava/util/Calendar;

    iget v1, p0, Lcom/estrongs/android/pop/app/f/ac;->m:I

    iget v2, p0, Lcom/estrongs/android/pop/app/f/ac;->a:I

    iget v3, p0, Lcom/estrongs/android/pop/app/f/ac;->b:I

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->c:Ljava/util/Calendar;

    return-object v0
.end method


# virtual methods
.method a(ILjava/lang/Object;)V
    .locals 9

    const/4 v8, 0x5

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/4 v2, 0x6

    const-wide/32 v6, 0x5265c00

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->e(Lcom/estrongs/android/pop/app/f/y;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080247

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->e(Lcom/estrongs/android/pop/app/f/y;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080248

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/f/ac;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_7

    iput p1, p0, Lcom/estrongs/android/pop/app/f/ac;->h:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    iput-wide v4, v0, Lcom/estrongs/android/pop/app/f/x;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    iput-wide v4, v0, Lcom/estrongs/android/pop/app/f/x;->b:J

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ne p1, v3, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->b:J

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->b:J

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-int/lit8 v0, v0, -0x1

    int-to-long v4, v0

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/android/pop/app/f/x;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->b:J

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-int/lit8 v0, v0, -0x1

    int-to-long v4, v0

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/android/pop/app/f/x;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->b:J

    goto/16 :goto_0

    :cond_4
    if-ne p1, v8, :cond_5

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-int/lit8 v0, v0, -0x1

    int-to-long v4, v0

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/android/pop/app/f/x;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->b:J

    goto/16 :goto_0

    :cond_5
    if-ne p1, v2, :cond_6

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v1

    iput-wide v4, v1, Lcom/estrongs/android/pop/app/f/x;->a:J

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-int/lit8 v0, v0, -0x1

    int-to-long v4, v0

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/android/pop/app/f/x;->b:J

    goto/16 :goto_0

    :cond_6
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/f/ac;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f/ac;->k:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->e(Lcom/estrongs/android/pop/app/f/y;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08062c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16d

    const/16 v3, 0x2da

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/f/ac;->a([Ljava/lang/String;Ljava/lang/String;II)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    goto/16 :goto_0
.end method

.method protected a(ILjava/lang/String;ILjava/lang/String;)V
    .locals 8

    const-wide/32 v6, 0x5265c00

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    int-to-long v4, p1

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->b:J

    :cond_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    int-to-long v4, p3

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/estrongs/android/pop/app/f/x;->a:J

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/app/f/ad;->a(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/f/ac;->b(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/android/pop/app/f/x;->a:J

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/f/ac;->b(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/android/pop/app/f/x;->b:J

    :goto_0
    return-void

    :cond_0
    const-string v1, " - "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/f/ac;->b(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/android/pop/app/f/x;->b:J

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/ac;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/f/ac;->b(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/android/pop/app/f/x;->a:J

    goto :goto_0
.end method

.method b(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, -0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/f/y;->e(Lcom/estrongs/android/pop/app/f/y;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080247

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/app/f/ac;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f/ac;->d:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/f/y;->e(Lcom/estrongs/android/pop/app/f/y;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080248

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/app/f/ac;->l:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/estrongs/android/pop/app/f/ac;->k:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/f/ac;->l:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method
