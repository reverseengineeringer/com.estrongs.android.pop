.class public Lcom/estrongs/android/ui/adapter/a;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/view/View$OnClickListener;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public i:Landroid/view/View$OnClickListener;

.field private j:Ljava/lang/String;

.field private k:Landroid/content/Intent;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/adapter/a;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/adapter/a;->f:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/adapter/a;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/adapter/a;->k:Landroid/content/Intent;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/adapter/a;->l:I

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/a;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/estrongs/android/ui/adapter/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/ui/adapter/a;->d:Landroid/view/View$OnClickListener;

    iput-object p4, p0, Lcom/estrongs/android/ui/adapter/a;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/estrongs/android/ui/adapter/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/estrongs/android/ui/adapter/a;
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/adapter/a;->l:I

    return-object p0
.end method

.method public a(Landroid/content/Intent;)Lcom/estrongs/android/ui/adapter/a;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/a;->k:Landroid/content/Intent;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/estrongs/android/ui/adapter/a;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/a;->k:Landroid/content/Intent;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/adapter/a;->l:I

    return v0
.end method
