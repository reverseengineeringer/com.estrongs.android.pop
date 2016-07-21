.class Lcom/estrongs/android/pop/app/b/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/i;

.field final synthetic b:Lcom/estrongs/android/pop/app/b/b;

.field final synthetic c:Lcom/estrongs/android/pop/app/b/c/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/c/a;Lcom/estrongs/android/pop/app/b/i;Lcom/estrongs/android/pop/app/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/c/b;->c:Lcom/estrongs/android/pop/app/b/c/a;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/c/b;->a:Lcom/estrongs/android/pop/app/b/i;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/b/c/b;->b:Lcom/estrongs/android/pop/app/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/b;->a:Lcom/estrongs/android/pop/app/b/i;

    iput-boolean p2, v0, Lcom/estrongs/android/pop/app/b/i;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/b;->b:Lcom/estrongs/android/pop/app/b/b;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/b;->l:Lcom/estrongs/android/pop/app/b/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/b;->a:Lcom/estrongs/android/pop/app/b/i;

    invoke-interface {v0, v1, p2}, Lcom/estrongs/android/pop/app/b/c;->a(Lcom/estrongs/android/pop/app/b/i;Z)V

    return-void
.end method
