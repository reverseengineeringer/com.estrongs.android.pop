.class public Lcom/estrongs/android/pop/app/editor/ReaderTextView;
.super Landroid/widget/TextView;


# instance fields
.field private a:I

.field private b:Lcom/estrongs/android/pop/app/editor/aq;

.field private c:Lcom/estrongs/android/pop/app/editor/ap;

.field private d:F

.field private e:F

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->a:I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->b:Lcom/estrongs/android/pop/app/editor/aq;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->c:Lcom/estrongs/android/pop/app/editor/ap;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->d:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->e:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->a:I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->b:Lcom/estrongs/android/pop/app/editor/aq;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->c:Lcom/estrongs/android/pop/app/editor/ap;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->d:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->e:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->a:I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->b:Lcom/estrongs/android/pop/app/editor/aq;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->c:Lcom/estrongs/android/pop/app/editor/ap;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->d:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->e:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->f:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->a:I

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/editor/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->c:Lcom/estrongs/android/pop/app/editor/ap;

    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->e:F

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->d:F

    return v0
.end method

.method public getIncludeFontPadding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->f:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->a:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->getBottom()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->a:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->c:Lcom/estrongs/android/pop/app/editor/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->c:Lcom/estrongs/android/pop/app/editor/ap;

    iget v1, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->a:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/editor/ap;->a(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->f:Z

    invoke-super {p0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->e:F

    iput p2, p0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->d:F

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-void
.end method
