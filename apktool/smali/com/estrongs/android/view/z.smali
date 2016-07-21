.class Lcom/estrongs/android/view/z;
.super Lcom/estrongs/android/view/af;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/estrongs/android/view/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/y;Lcom/estrongs/android/view/y;Ljava/util/List;ZLjava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/z;->c:Lcom/estrongs/android/view/y;

    iput-object p5, p0, Lcom/estrongs/android/view/z;->a:Ljava/util/List;

    iput-boolean p6, p0, Lcom/estrongs/android/view/z;->b:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/view/af;-><init>(Lcom/estrongs/android/view/y;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/z;->g()V

    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/z;->e:Lcom/estrongs/android/view/y;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/view/y;->b(Lcom/estrongs/android/view/af;)V

    return-void
.end method


# virtual methods
.method protected b()Landroid/widget/BaseAdapter;
    .locals 1

    new-instance v0, Lcom/estrongs/android/view/aa;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/aa;-><init>(Lcom/estrongs/android/view/z;)V

    return-object v0
.end method
