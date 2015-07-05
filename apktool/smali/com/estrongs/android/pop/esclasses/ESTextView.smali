.class public Lcom/estrongs/android/pop/esclasses/ESTextView;
.super Landroid/widget/TextView;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->d:I

    iput-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->d:I

    iput-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->d:I

    iput-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->e:Z

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    :goto_1
    iget-object v3, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    :goto_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->a:Ljava/lang/String;

    :goto_3
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    const-string v5, " "

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    div-int/lit8 v6, p1, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v8, v6, v0

    add-int/lit8 v8, v8, -0x1

    div-int/2addr v8, v5

    if-lez v8, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->a:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_4
    if-ge v0, v8, :cond_5

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-object v8, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->a:Ljava/lang/String;

    invoke-direct {p0, v8, v6, v0}, Lcom/estrongs/android/pop/esclasses/ESTextView;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    sub-int v0, v6, v2

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    div-int v2, v0, v5

    move v0, v1

    :goto_5
    if-ge v0, v2, :cond_6

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->b:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_6
    if-ge v0, v2, :cond_7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    sub-int v0, p1, v0

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v5

    :goto_7
    if-ge v1, v0, :cond_8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->c:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    if-le p3, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int v0, p3, v0

    div-int v0, p2, v0

    add-int/lit8 v0, v0, -0x2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->e:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESTextView;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESTextView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->d:I

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESTextView;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESTextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/esclasses/ESTextView;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/esclasses/ESTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->d:I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/esclasses/ESTextView;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/esclasses/ESTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
