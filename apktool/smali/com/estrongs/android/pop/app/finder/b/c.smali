.class Lcom/estrongs/android/pop/app/finder/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

.field final synthetic b:Lcom/estrongs/android/pop/app/finder/b/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/finder/b/a;Lcom/estrongs/android/pop/app/finder/data/FinderItemData;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/b/c;->b:Lcom/estrongs/android/pop/app/finder/b/a;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/finder/b/c;->a:Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/b/c;->b:Lcom/estrongs/android/pop/app/finder/b/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/b/c;->a:Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/finder/b/a;->a(Lcom/estrongs/android/pop/app/finder/b/a;Lcom/estrongs/android/pop/app/finder/data/FinderItemData;)V

    return-void
.end method
