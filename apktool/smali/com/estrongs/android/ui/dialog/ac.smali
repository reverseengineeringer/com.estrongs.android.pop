.class Lcom/estrongs/android/ui/dialog/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/pm/ApplicationInfo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/ui/dialog/ab;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ab;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ac;->c:Lcom/estrongs/android/ui/dialog/ab;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ac;->a:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/ac;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ac;->c:Lcom/estrongs/android/ui/dialog/ab;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ab;->c:Lcom/estrongs/android/ui/dialog/y;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/y;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ac;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ac;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ac;->c:Lcom/estrongs/android/ui/dialog/ab;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ab;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ac;->a:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ac;->c:Lcom/estrongs/android/ui/dialog/ab;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ab;->notifyDataSetChanged()V

    return-void
.end method
