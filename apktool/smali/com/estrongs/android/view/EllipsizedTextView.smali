.class public Lcom/estrongs/android/view/EllipsizedTextView;
.super Landroid/widget/TextView;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:F

.field private h:F

.field private i:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "[\\.,\u2026;\\:\\s]*$"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/view/EllipsizedTextView;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->g:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->h:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->i:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->g:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->h:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->i:Landroid/text/TextPaint;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/text/Layout;
    .locals 8

    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lcom/estrongs/android/view/EllipsizedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/estrongs/android/view/EllipsizedTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/view/EllipsizedTextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/estrongs/android/view/EllipsizedTextView;->getPaddingRight()I

    move-result v3

    sub-int v3, v1, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/estrongs/android/view/EllipsizedTextView;->g:F

    iget v6, p0, Lcom/estrongs/android/view/EllipsizedTextView;->h:F

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/estrongs/android/view/EllipsizedTextView;->c:Z

    :goto_0
    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/estrongs/android/view/EllipsizedTextView;->a(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v2

    invoke-direct {p0}, Lcom/estrongs/android/view/EllipsizedTextView;->getLinesCount()I

    move-result v3

    if-nez v3, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-le v4, v3, :cond_3

    const-string v1, "\u2026"

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/estrongs/android/view/EllipsizedTextView;->a(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-le v2, v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/estrongs/android/view/EllipsizedTextView;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    move v5, v0

    move-object v0, v1

    move v1, v5

    :cond_3
    iget-boolean v2, p0, Lcom/estrongs/android/view/EllipsizedTextView;->b:Z

    if-eq v1, v2, :cond_4

    iput-boolean v1, p0, Lcom/estrongs/android/view/EllipsizedTextView;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/EllipsizedTextView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/view/EllipsizedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/view/EllipsizedTextView;->d:Z

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/EllipsizedTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/android/view/EllipsizedTextView;->d:Z

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/estrongs/android/view/EllipsizedTextView;->c:Z

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/android/view/EllipsizedTextView;->d:Z

    goto :goto_0

    :catch_1
    move-exception v0

    iput-boolean v2, p0, Lcom/estrongs/android/view/EllipsizedTextView;->d:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/estrongs/android/view/EllipsizedTextView;->d:Z

    throw v0
.end method

.method private getFullyVisibleLinesCount()I
    .locals 3

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/EllipsizedTextView;->a(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/view/EllipsizedTextView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/view/EllipsizedTextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/estrongs/android/view/EllipsizedTextView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    div-int v0, v1, v0

    return v0
.end method

.method private getLinesCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/view/EllipsizedTextView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/view/EllipsizedTextView;->getFullyVisibleLinesCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->f:I

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->f:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxLines()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->f:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    sget-boolean v0, Lcom/estrongs/android/pop/z;->ab:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/EllipsizedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->i:Landroid/text/TextPaint;

    iget-boolean v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/view/EllipsizedTextView;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    sget-boolean v0, Lcom/estrongs/android/pop/z;->ab:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/EllipsizedTextView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->c:Z

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    sget-boolean v0, Lcom/estrongs/android/pop/z;->ab:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->d:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->c:Z

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2

    sget-boolean v0, Lcom/estrongs/android/pop/z;->ab:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/EllipsizedTextView;->h:F

    iput p2, p0, Lcom/estrongs/android/view/EllipsizedTextView;->g:F

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-void
.end method

.method public setLines(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    iput p1, p0, Lcom/estrongs/android/view/EllipsizedTextView;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->c:Z

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    iput p1, p0, Lcom/estrongs/android/view/EllipsizedTextView;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->c:Z

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    sget-boolean v0, Lcom/estrongs/android/pop/z;->ab:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/EllipsizedTextView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->c:Z

    :cond_0
    return-void
.end method

.method public setTextValue(Ljava/lang/CharSequence;)V
    .locals 1

    sget-boolean v0, Lcom/estrongs/android/pop/z;->ab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/EllipsizedTextView;->i:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/EllipsizedTextView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
