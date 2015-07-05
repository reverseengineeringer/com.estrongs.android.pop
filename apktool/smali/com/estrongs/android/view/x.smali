.class Lcom/estrongs/android/view/x;
.super Lcom/estrongs/android/view/ac;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/estrongs/android/view/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/u;Lcom/estrongs/android/view/u;Ljava/util/List;ZLjava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/x;->c:Lcom/estrongs/android/view/u;

    iput-object p5, p0, Lcom/estrongs/android/view/x;->a:Ljava/util/List;

    iput-boolean p6, p0, Lcom/estrongs/android/view/x;->b:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/view/ac;-><init>(Lcom/estrongs/android/view/u;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/x;->g()V

    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/x;->e:Lcom/estrongs/android/view/u;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/view/u;->b(Lcom/estrongs/android/view/ac;)V

    return-void
.end method


# virtual methods
.method protected b()Landroid/widget/BaseAdapter;
    .locals 1

    new-instance v0, Lcom/estrongs/android/view/y;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/y;-><init>(Lcom/estrongs/android/view/x;)V

    return-object v0
.end method
