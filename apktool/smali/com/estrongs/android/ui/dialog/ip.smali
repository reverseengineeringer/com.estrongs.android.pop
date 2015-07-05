.class public Lcom/estrongs/android/ui/dialog/ip;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/dialog/cg;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ip;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ip;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ip;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ip;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ip;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ip;->c:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ip;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a011a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/NaviListView;

    new-instance v2, Lcom/estrongs/android/ui/dialog/iq;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/dialog/iq;-><init>(Lcom/estrongs/android/ui/dialog/ip;Lcom/estrongs/android/ui/view/NaviListView;)V

    new-instance v3, Lcom/estrongs/android/ui/a/q;

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/ip;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/estrongs/android/ui/a/q;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/view/NaviListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    new-instance v2, Lcom/estrongs/android/ui/dialog/ir;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/ir;-><init>(Lcom/estrongs/android/ui/dialog/ip;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/NaviListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    new-instance v2, Lcom/estrongs/android/ui/dialog/iu;

    invoke-direct {v2, p0, v3}, Lcom/estrongs/android/ui/dialog/iu;-><init>(Lcom/estrongs/android/ui/dialog/ip;Lcom/estrongs/android/ui/a/q;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/NaviListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ip;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b03ff

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ip;->a:Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ip;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ip;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ip;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ip;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    return-void
.end method
