.class Lcom/estrongs/android/view/fi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/cp;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;

.field final synthetic b:Lcom/estrongs/android/view/cp;

.field final synthetic c:Lcom/estrongs/android/view/eu;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/eu;Lcom/estrongs/android/view/cr;Lcom/estrongs/android/view/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/fi;->c:Lcom/estrongs/android/view/eu;

    iput-object p2, p0, Lcom/estrongs/android/view/fi;->a:Lcom/estrongs/android/view/cr;

    iput-object p3, p0, Lcom/estrongs/android/view/fi;->b:Lcom/estrongs/android/view/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/fi;->c:Lcom/estrongs/android/view/eu;

    iget-object v1, p0, Lcom/estrongs/android/view/fi;->a:Lcom/estrongs/android/view/cr;

    invoke-static {v0, v1}, Lcom/estrongs/android/view/eu;->a(Lcom/estrongs/android/view/eu;Lcom/estrongs/android/view/cr;)Lcom/estrongs/android/view/cr;

    iget-object v0, p0, Lcom/estrongs/android/view/fi;->b:Lcom/estrongs/android/view/cp;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/estrongs/android/view/cp;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IZ)Z

    const/4 v0, 0x1

    return v0
.end method
