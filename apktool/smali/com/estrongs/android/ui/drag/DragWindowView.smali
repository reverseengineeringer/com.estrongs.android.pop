.class public Lcom/estrongs/android/ui/drag/DragWindowView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/estrongs/android/ui/drag/s;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/drag/DragWindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/ui/drag/DragWindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/DragWindowView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/drag/DragWindowView;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method

.method private a(Lcom/estrongs/android/ui/d/d;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/ui/d/d;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v1}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {v1}, Lcom/estrongs/android/util/am;->aB(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/drag/DragWindowView;->addView(Landroid/view/View;)V

    const v0, 0x7f0a018e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->b:Landroid/widget/TextView;

    const v2, 0x7f0b0014

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a018f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a0190

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->c()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->f:I

    if-lt v1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->f:I

    invoke-static {v0}, Lcom/estrongs/android/ui/d/e;->c(I)Lcom/estrongs/android/ui/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->b:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget v2, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->f:I

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v3, v1, v4, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/d/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->f:I

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V
    .locals 7

    const/4 v3, 0x1

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->b()Lcom/estrongs/android/ui/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/d;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->f:I

    invoke-static {v1}, Lcom/estrongs/android/ui/d/e;->c(I)Lcom/estrongs/android/ui/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/d/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/estrongs/android/ui/d/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/ui/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/DragWindowView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESActivity;

    move-object v1, p7

    check-cast v1, Ljava/util/List;

    new-instance v5, Lcom/estrongs/android/ui/drag/q;

    invoke-direct {v5, p0, v4}, Lcom/estrongs/android/ui/drag/q;-><init>(Lcom/estrongs/android/ui/drag/DragWindowView;Ljava/lang/String;)V

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;ZZLcom/estrongs/a/a/p;Z)V

    goto :goto_0
.end method

.method public b(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->f:I

    invoke-static {v0}, Lcom/estrongs/android/ui/d/e;->c(I)Lcom/estrongs/android/ui/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/drag/DragWindowView;->a(Lcom/estrongs/android/ui/d/d;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    const v5, 0x7f020074

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    const v6, 0x7f020167

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v3, v1, v4, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->b()Lcom/estrongs/android/ui/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/d/d;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public c(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->c:Landroid/widget/ImageView;

    invoke-virtual {v4, v2, v0, v3, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->b:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public e(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/drag/DragWindowView;->f:I

    invoke-static {v0}, Lcom/estrongs/android/ui/d/e;->c(I)Lcom/estrongs/android/ui/d/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/drag/DragWindowView;->a(Lcom/estrongs/android/ui/d/d;)Z

    move-result v0

    return v0
.end method
