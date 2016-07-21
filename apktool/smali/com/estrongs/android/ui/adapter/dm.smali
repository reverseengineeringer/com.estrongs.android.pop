.class public Lcom/estrongs/android/ui/adapter/dm;
.super Ljava/lang/Object;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/adapter/a;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:I

.field f:Ljava/lang/String;

.field public g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public h:Landroid/view/View$OnClickListener;

.field final synthetic i:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/dm;->i:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/dm;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/dm;->g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
