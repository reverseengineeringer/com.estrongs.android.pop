.class Lcom/estrongs/android/ui/controller/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/addressbar/f;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/estrongs/android/ui/controller/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/a;Lcom/estrongs/android/view/cr;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/f;->c:Lcom/estrongs/android/ui/controller/a;

    iput-object p2, p0, Lcom/estrongs/android/ui/controller/f;->a:Lcom/estrongs/android/view/cr;

    iput-object p3, p0, Lcom/estrongs/android/ui/controller/f;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 2

    add-int/lit8 v0, p3, -0x1

    if-ge p2, v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/f;->a:Lcom/estrongs/android/view/cr;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/cr;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
