.class Lcom/estrongs/android/view/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/d;->a:Lcom/estrongs/android/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/a;->a()Lcom/estrongs/android/pop/app/analysis/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/d;->a:Lcom/estrongs/android/view/b;

    iget-object v1, v1, Lcom/estrongs/android/view/b;->C:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;)V

    return-void
.end method
