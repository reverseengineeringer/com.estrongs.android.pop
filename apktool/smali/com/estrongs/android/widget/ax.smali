.class public Lcom/estrongs/android/widget/ax;
.super Ljava/lang/Object;


# static fields
.field private static G:I


# instance fields
.field private A:Lcom/estrongs/android/widget/ba;

.field private B:Z

.field private C:I

.field private D:I

.field private E:Landroid/view/animation/ScaleAnimation;

.field private F:Landroid/view/animation/ScaleAnimation;

.field private H:Z

.field a:Landroid/view/WindowManager$LayoutParams;

.field b:Lcom/estrongs/android/widget/bb;

.field c:Landroid/widget/RelativeLayout$LayoutParams;

.field protected d:Landroid/graphics/Rect;

.field private e:Landroid/content/Context;

.field private f:Landroid/view/WindowManager;

.field private g:Z

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/view/View$OnTouchListener;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Landroid/graphics/Rect;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/estrongs/android/widget/ax;->G:I

    return-void
.end method

.method protected constructor <init>(Landroid/view/View;IIZ)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/estrongs/android/widget/ax;->k:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/ax;->l:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/ax;->m:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/estrongs/android/widget/ax;->z:I

    iput-boolean v1, p0, Lcom/estrongs/android/widget/ax;->B:Z

    iput v1, p0, Lcom/estrongs/android/widget/ax;->C:I

    iput-boolean v1, p0, Lcom/estrongs/android/widget/ax;->H:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/ax;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->e:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/estrongs/android/widget/ax;->f:Landroid/view/WindowManager;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/ax;->a(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/estrongs/android/widget/ax;->b(I)V

    invoke-virtual {p0, p3}, Lcom/estrongs/android/widget/ax;->a(I)V

    invoke-virtual {p0, p4}, Lcom/estrongs/android/widget/ax;->a(Z)V

    sget v0, Lcom/estrongs/android/widget/ax;->G:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->e:Landroid/content/Context;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/estrongs/android/widget/ax;->G:I

    :cond_1
    return-void
.end method

.method protected constructor <init>(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/estrongs/android/widget/ax;-><init>(Landroid/view/View;IIZ)V

    iput-object p2, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/widget/ax;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->o:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->f:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/ax;->v:I

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->f:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/ax;->w:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/estrongs/android/widget/ax;->w:I

    iget v2, p0, Lcom/estrongs/android/widget/ax;->v:I

    iget v5, p0, Lcom/estrongs/android/widget/ax;->z:I

    const/16 v6, 0x400

    move v4, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p0, Lcom/estrongs/android/widget/ax;->q:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, p0, Lcom/estrongs/android/widget/ax;->r:I

    iget v1, p0, Lcom/estrongs/android/widget/ax;->t:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v3, p0, Lcom/estrongs/android/widget/ax;->u:I

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/widget/ax;->d(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Lcom/estrongs/android/widget/ax;->z:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->f:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->i:Landroid/view/View;

    if-nez v0, :cond_3

    new-instance v0, Lcom/estrongs/android/widget/bb;

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/widget/bb;-><init>(Lcom/estrongs/android/widget/ax;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ax;->b:Lcom/estrongs/android/widget/bb;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ax;->k()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ax;->k()I

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ax;->c:Landroid/widget/RelativeLayout$LayoutParams;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/ax;->a(Landroid/widget/RelativeLayout$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->b:Lcom/estrongs/android/widget/bb;

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->h:Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/widget/ax;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/bb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->b:Lcom/estrongs/android/widget/bb;

    iput-object v0, p0, Lcom/estrongs/android/widget/ax;->i:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ax;->c:Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_0
.end method

.method private a(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/estrongs/android/widget/ax;->D:I

    if-nez v0, :cond_2

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/estrongs/android/widget/ax;->G:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/widget/ax;->D:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v0, p0, Lcom/estrongs/android/widget/ax;->t:I

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->x:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v0, p0, Lcom/estrongs/android/widget/ax;->w:I

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->b:Lcom/estrongs/android/widget/bb;

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/estrongs/android/widget/bb;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->b:Lcom/estrongs/android/widget/bb;

    sget v1, Lcom/estrongs/android/widget/ax;->G:I

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/estrongs/android/widget/bb;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/estrongs/android/widget/ax;->D:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/estrongs/android/widget/ax;->D:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->e:Landroid/content/Context;

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v1, v0, :cond_6

    iget v1, p0, Lcom/estrongs/android/widget/ax;->w:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v1, p0, Lcom/estrongs/android/widget/ax;->w:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v0, p0, Lcom/estrongs/android/widget/ax;->w:I

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/widget/ax;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/ax;->H:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/widget/ax;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->h:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->i:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/ax;->g:Z

    return-void
.end method

.method private d(I)I
    .locals 2

    const v0, -0x68219

    and-int/2addr v0, p1

    iget-boolean v1, p0, Lcom/estrongs/android/widget/ax;->B:Z

    if-eqz v1, :cond_0

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/estrongs/android/widget/ax;->j:Z

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    :cond_1
    iget-boolean v1, p0, Lcom/estrongs/android/widget/ax;->k:Z

    if-nez v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    iget-boolean v1, p0, Lcom/estrongs/android/widget/ax;->l:Z

    if-eqz v1, :cond_3

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/estrongs/android/widget/ax;->m:Z

    if-nez v1, :cond_4

    or-int/lit16 v0, v0, 0x200

    :cond_4
    iget-boolean v1, p0, Lcom/estrongs/android/widget/ax;->n:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x100

    :cond_5
    return v0
.end method

.method private d(Z)I
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget v0, p0, Lcom/estrongs/android/widget/ax;->D:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->x:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/estrongs/android/widget/ax;->q:I

    int-to-float v1, v1

    div-float v6, v0, v1

    const/4 v8, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->E:Landroid/view/animation/ScaleAnimation;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ax;->E:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->E:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->E:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->E:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/estrongs/android/widget/ay;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/ay;-><init>(Lcom/estrongs/android/widget/ax;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->F:Landroid/view/animation/ScaleAnimation;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ax;->F:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->F:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->F:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Lcom/estrongs/android/widget/az;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/az;-><init>(Lcom/estrongs/android/widget/ax;)V

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->F:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_4
    iget v0, p0, Lcom/estrongs/android/widget/ax;->C:I

    return v0

    :cond_5
    iget v0, p0, Lcom/estrongs/android/widget/ax;->D:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->x:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/estrongs/android/widget/ax;->q:I

    int-to-float v1, v1

    div-float v6, v0, v1

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/estrongs/android/widget/ax;->D:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->x:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v8, v0, v1

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/estrongs/android/widget/ax;->D:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->x:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/estrongs/android/widget/ax;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v8, v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/widget/ax;->t:I

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/widget/ax;->p:I

    iput p2, p0, Lcom/estrongs/android/widget/ax;->s:I

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/ax;->y:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ax;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/estrongs/android/widget/ax;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->e:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/ax;->e:Landroid/content/Context;

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->f:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->e:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/estrongs/android/widget/ax;->f:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public a(Landroid/view/View;III)V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ax;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/widget/ax;->H:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/ax;->g:Z

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/ax;->a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/ax;->a:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/ax;->d(Z)I

    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/ax;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/ax;->a(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->a:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->a:Landroid/view/WindowManager$LayoutParams;

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->a:Landroid/view/WindowManager$LayoutParams;

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/ax;->b(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/ax;->j:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/widget/ax;->q:I

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/estrongs/android/widget/ax;->x:Landroid/graphics/Rect;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/ax;->k:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/widget/ax;->D:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/ax;->l:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/widget/ax;->g:Z

    return v0
.end method

.method protected f()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ax;->g()V

    return-void
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/ax;->H:Z

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ax;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->i:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected h()V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/widget/ax;->H:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->i:Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/widget/ax;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/ax;->g:Z

    goto :goto_0
.end method

.method public i()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ax;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ax;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/ax;->g:Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->h:Landroid/view/View;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->i:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->i:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/estrongs/android/widget/ax;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/widget/ax;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->A:Lcom/estrongs/android/widget/ba;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->A:Lcom/estrongs/android/widget/ba;

    invoke-interface {v0}, Lcom/estrongs/android/widget/ba;->a()V

    :cond_2
    return-void
.end method

.method public j()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ax;->x:Landroid/graphics/Rect;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/widget/ax;->D:I

    return v0
.end method
