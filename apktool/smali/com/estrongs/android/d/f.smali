.class public Lcom/estrongs/android/d/f;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field private static b:Lcom/estrongs/android/d/f;

.field private static d:Z

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/d/i;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/estrongs/android/d/i;",
            ">;"
        }
    .end annotation
.end field

.field private static j:I

.field private static k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/d/j;",
            ">;"
        }
    .end annotation
.end field

.field private static l:I

.field private static m:I


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const v8, 0x7f0200a1

    const v7, 0x7f02009d

    const v6, 0x7f020093

    const/16 v5, 0x18

    const/4 v0, 0x0

    sput v0, Lcom/estrongs/android/d/f;->a:I

    sput-boolean v0, Lcom/estrongs/android/d/f;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/d/f;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/d/f;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/estrongs/android/d/f;->h:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/estrongs/android/d/f;->i:Ljava/util/Hashtable;

    const/16 v0, 0x3c

    sput v0, Lcom/estrongs/android/d/f;->j:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/d/f;->k:Ljava/util/HashMap;

    const/4 v0, -0x1

    sput v0, Lcom/estrongs/android/d/f;->l:I

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "dalvik.vm.heapsize"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/estrongs/android/d/f;->l:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x90011

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02008f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02008f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x40030

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x40031

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x40037

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x40050

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x40054

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x40052

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x40051

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x40055

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x40053

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x40040

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020091

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x40032

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020096

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x50039

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x4003c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020092

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x6004b

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02009f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x70001

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020094

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x90001

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02019a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const v1, 0x90010

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020097

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->O:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020047

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->c:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02016e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->i:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020043

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->j:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020044

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->k:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020045

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->l:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020046

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->m:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020041

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->n:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020042

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->r:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02017c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->s:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020173

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->t:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020172

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->u:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020176

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->v:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020177

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->w:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02017d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->q:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020171

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->x:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02017b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->y:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020175

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->z:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02017a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->B:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02017e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->A:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020179

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->C:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020178

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->p:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02016e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->G:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020042

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->H:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02002d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->I:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02002e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->K:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02002f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->L:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->Q:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02019b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->R:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02019c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->S:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02019d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->N:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02016b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    const-string v1, "-1"

    const v2, 0x7f0200a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->E:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02019e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->d:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200a3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->f:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->e:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02022e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->g:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->h:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->D:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02016c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->o:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020233

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->F:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0201a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->T:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02019e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/m;->P:Lcom/estrongs/fs/m;

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/estrongs/android/d/f;->l:I

    if-lt v0, v5, :cond_6

    sget v0, Lcom/estrongs/android/d/f;->l:I

    add-int/lit8 v0, v0, -0xa

    mul-int/lit8 v0, v0, 0x3

    sput v0, Lcom/estrongs/android/d/f;->j:I

    const/16 v0, 0x78

    sget v1, Lcom/estrongs/android/d/f;->l:I

    const/16 v2, 0x78

    if-lt v1, v2, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_4

    const/16 v0, 0x1f4

    :cond_1
    :goto_1
    sget v1, Lcom/estrongs/android/d/f;->j:I

    if-le v1, v0, :cond_2

    sput v0, Lcom/estrongs/android/d/f;->j:I

    :cond_2
    :goto_2
    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_3

    sput v5, Lcom/estrongs/android/d/f;->j:I

    :cond_3
    const/4 v0, -0x1

    sput v0, Lcom/estrongs/android/d/f;->m:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    sget v1, Lcom/estrongs/android/d/f;->l:I

    const/16 v2, 0x5a

    if-lt v1, v2, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_5

    const/16 v0, 0x12c

    goto :goto_1

    :cond_5
    sget v1, Lcom/estrongs/android/d/f;->l:I

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_1

    const/16 v0, 0xc8

    goto :goto_1

    :cond_6
    sput v5, Lcom/estrongs/android/d/f;->j:I

    goto :goto_2
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/d/f;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/estrongs/android/d/f;->a()V

    new-instance v0, Lcom/estrongs/android/d/g;

    iget-object v1, p0, Lcom/estrongs/android/d/f;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/d/g;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/estrongs/android/d/f;->a(Lcom/estrongs/android/d/j;)V

    new-instance v0, Lcom/estrongs/android/d/o;

    iget-object v1, p0, Lcom/estrongs/android/d/f;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/d/o;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/estrongs/android/d/f;->a(Lcom/estrongs/android/d/j;)V

    new-instance v0, Lcom/estrongs/android/d/b;

    iget-object v1, p0, Lcom/estrongs/android/d/f;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/d/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/estrongs/android/d/f;->a(Lcom/estrongs/android/d/j;)V

    sget-boolean v0, Lcom/estrongs/android/pop/z;->M:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/d/c;

    iget-object v1, p0, Lcom/estrongs/android/d/f;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/d/c;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/estrongs/android/d/f;->a(Lcom/estrongs/android/d/j;)V

    :cond_0
    return-void
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/d/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/estrongs/fs/h;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Z

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/d/f;->a(Lcom/estrongs/fs/h;Z[Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/estrongs/fs/h;Z[Z)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v2, Lcom/estrongs/android/d/f;->d:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/d/f;->i(Lcom/estrongs/fs/h;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/d/f;->k(Lcom/estrongs/fs/h;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/android/d/f;->b:Lcom/estrongs/android/d/f;

    if-nez v0, :cond_4

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/d/f;->d(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/d/f;->f(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "device_name"

    invoke-interface {p0, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v1, Lcom/estrongs/android/d/f;->b:Lcom/estrongs/android/d/f;

    iget-object v1, v1, Lcom/estrongs/android/d/f;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/theme/al;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/estrongs/android/d/f;->d(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/estrongs/android/d/f;->h:Ljava/util/Hashtable;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/estrongs/android/d/f;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    sget v3, Lcom/estrongs/android/d/f;->j:I

    if-le v0, v3, :cond_7

    invoke-static {}, Lcom/estrongs/android/d/f;->f()V

    :cond_7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    sget-object v0, Lcom/estrongs/android/d/f;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/estrongs/android/d/f;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/i;

    iget-object v1, v0, Lcom/estrongs/android/d/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    if-eqz p1, :cond_9

    sget-object v0, Lcom/estrongs/android/d/f;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/i;

    iget v2, v0, Lcom/estrongs/android/d/i;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/estrongs/android/d/i;->b:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v0, Lcom/estrongs/android/d/f;->e:Ljava/util/HashMap;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_9
    if-eqz p2, :cond_8

    :try_start_5
    array-length v0, p2

    if-lez v0, :cond_8

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput-boolean v2, p2, v0

    goto :goto_1

    :cond_a
    invoke-static {p0}, Lcom/estrongs/android/util/bc;->a(Lcom/estrongs/fs/h;)I

    move-result v0

    sget-object v2, Lcom/estrongs/android/d/f;->k:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/j;

    if-eqz v0, :cond_d

    invoke-interface {p0}, Lcom/estrongs/fs/h;->shouldTryLoadThumbnail()Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v2

    if-eqz v2, :cond_d

    :try_start_6
    invoke-interface {v0, p0}, Lcom/estrongs/android/d/j;->a(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v0

    :goto_2
    if-nez v0, :cond_b

    const/4 v1, 0x0

    :try_start_7
    invoke-interface {p0, v1}, Lcom/estrongs/fs/h;->setShouldTryLoadThumbnail(Z)V

    :cond_b
    :goto_3
    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/estrongs/android/d/f;->d(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "IconManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to generate thumbnail for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_2

    :cond_c
    if-eqz p2, :cond_3

    array-length v1, p2

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, p2, v1
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :cond_d
    move-object v0, v1

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    sget-object v0, Lcom/estrongs/android/d/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/estrongs/android/d/f;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/d/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v2, Lcom/estrongs/android/d/f;->b:Lcom/estrongs/android/d/f;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/estrongs/android/d/f;->b:Lcom/estrongs/android/d/f;

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/estrongs/android/d/f;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    sget-object v2, Lcom/estrongs/android/d/f;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/estrongs/android/d/f;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/estrongs/android/d/f;->b:Lcom/estrongs/android/d/f;

    iget-object v0, v0, Lcom/estrongs/android/d/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v2

    sget-object v0, Lcom/estrongs/android/d/f;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/theme/al;->g(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/estrongs/android/d/f;->b(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v3, Lcom/estrongs/android/d/f;->b:Lcom/estrongs/android/d/f;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v3, v2}, Lcom/estrongs/android/d/f;->a(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v0, Lcom/estrongs/android/d/f;->e:Ljava/util/HashMap;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/d/f;
    .locals 1

    sget-object v0, Lcom/estrongs/android/d/f;->b:Lcom/estrongs/android/d/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/d/f;

    invoke-direct {v0, p0}, Lcom/estrongs/android/d/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/d/f;->b:Lcom/estrongs/android/d/f;

    :cond_0
    sget-object v0, Lcom/estrongs/android/d/f;->b:Lcom/estrongs/android/d/f;

    return-object v0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/estrongs/android/d/f;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/i;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/estrongs/android/d/i;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/estrongs/android/d/i;->b:I

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/android/d/j;)V
    .locals 5

    invoke-interface {p0}, Lcom/estrongs/android/d/j;->d()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/estrongs/android/d/f;->k:Ljava/util/HashMap;

    invoke-virtual {v4, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/estrongs/android/util/bc;->a(Lcom/estrongs/fs/h;)I

    move-result v0

    sget-object v1, Lcom/estrongs/android/d/f;->k:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/j;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/estrongs/android/d/j;->a(Lcom/estrongs/fs/h;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "IconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to generate thumbnail for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    sget-object v0, Lcom/estrongs/android/d/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    sget-object v0, Lcom/estrongs/android/d/f;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/i;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/d/i;

    invoke-direct {v0}, Lcom/estrongs/android/d/i;-><init>()V

    :cond_0
    :goto_0
    iput-object p1, v0, Lcom/estrongs/android/d/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Lcom/estrongs/android/d/i;->b:I

    sget-object v1, Lcom/estrongs/android/d/f;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/f;->i:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    sget-object v1, Lcom/estrongs/android/d/f;->i:Ljava/util/Hashtable;

    iget-object v2, v0, Lcom/estrongs/android/d/i;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/estrongs/android/d/i;->a:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, v0, Lcom/estrongs/android/d/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/estrongs/android/d/i;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/estrongs/android/d/f;->d:Z

    return-void
.end method

.method public static a(Lcom/estrongs/fs/h;)Z
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/estrongs/android/d/f;->d:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/d/f;->i(Lcom/estrongs/fs/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/d/f;->f(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/d/f;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method private static b(I)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/bc;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f02009b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/util/bc;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f020099

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/util/bc;->g(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f020098

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/estrongs/android/util/bc;->j(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f02009e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/util/bc;->k(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0200a2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()V
    .locals 4

    sget-object v1, Lcom/estrongs/android/d/f;->h:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/d/f;->h:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/android/d/f;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    sget-object v0, Lcom/estrongs/android/d/f;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    sget-object v0, Lcom/estrongs/android/d/f;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/estrongs/android/d/f;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/i;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lcom/estrongs/android/d/i;->b:I

    invoke-static {}, Lcom/estrongs/android/d/f;->f()V

    goto :goto_0
.end method

.method public static b(Lcom/estrongs/fs/h;)Z
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/bc;->a(Lcom/estrongs/fs/h;)I

    move-result v0

    sget-object v1, Lcom/estrongs/android/d/f;->k:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/estrongs/android/d/j;->h(Lcom/estrongs/fs/h;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/estrongs/android/d/f;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c()V
    .locals 4

    sget-object v1, Lcom/estrongs/android/d/f;->i:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/d/f;->i:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/d/f;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/i;

    const/4 v3, 0x0

    iput v3, v0, Lcom/estrongs/android/d/i;->b:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static c(Lcom/estrongs/fs/h;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->aV(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/bc;->b(Lcom/estrongs/fs/h;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Lcom/estrongs/android/util/bc;->a(Lcom/estrongs/fs/h;)I

    move-result v2

    invoke-static {v2}, Lcom/estrongs/android/util/bc;->g(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/estrongs/android/util/am;->K(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    sget-object v1, Lcom/estrongs/android/d/f;->k:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/estrongs/android/util/bc;->a(Lcom/estrongs/fs/h;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-static {p0}, Lcom/estrongs/android/util/bc;->a(Lcom/estrongs/fs/h;)I

    move-result v1

    const v2, 0x10016

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "device_name"

    invoke-interface {p0, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/estrongs/android/d/f;->b:Lcom/estrongs/android/d/f;

    iget-object v1, v1, Lcom/estrongs/android/d/f;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/theme/al;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/estrongs/fs/impl/b/c;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/estrongs/fs/impl/adb/a;

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/estrongs/android/d/f;->d()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/estrongs/android/d/f;->b:Lcom/estrongs/android/d/f;

    iget-object v0, v0, Lcom/estrongs/android/d/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/d/f;->j(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/d/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/estrongs/android/d/f;->d:Z

    return v0
.end method

.method public static e()I
    .locals 4

    const/16 v3, 0x40

    const/16 v2, 0x20

    sget v0, Lcom/estrongs/android/d/f;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/estrongs/android/d/f;->l:I

    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    const/16 v0, 0x60

    sput v0, Lcom/estrongs/android/d/f;->m:I

    :cond_0
    :goto_0
    sget v0, Lcom/estrongs/android/d/f;->m:I

    return v0

    :cond_1
    sget v0, Lcom/estrongs/android/d/f;->l:I

    if-lt v0, v3, :cond_2

    sput v3, Lcom/estrongs/android/d/f;->m:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/estrongs/android/d/f;->l:I

    if-lt v0, v2, :cond_3

    const/16 v0, 0x30

    sput v0, Lcom/estrongs/android/d/f;->m:I

    goto :goto_0

    :cond_3
    sput v2, Lcom/estrongs/android/d/f;->m:I

    goto :goto_0
.end method

.method public static e(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/android/d/f;->a(Lcom/estrongs/fs/h;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lcom/estrongs/fs/h;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "item_icon_file_name"

    invoke-interface {p0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "item_icon_file_name"

    invoke-interface {p0, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "item_icon_file_name"

    invoke-interface {p0, v1, v0}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/d/f;->i(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "210_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "album_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private static f()V
    .locals 7

    const/4 v4, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/estrongs/android/d/f;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/estrongs/android/d/f;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/d/i;

    iget v1, v1, Lcom/estrongs/android/d/i;->b:I

    if-gtz v1, :cond_0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/estrongs/android/d/f;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/i;

    :try_start_0
    sget-object v1, Lcom/estrongs/android/d/f;->i:Ljava/util/Hashtable;

    iget-object v2, v0, Lcom/estrongs/android/d/i;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/estrongs/android/d/i;->a:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/estrongs/android/d/i;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/d/i;->a:Landroid/graphics/drawable/Drawable;

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/estrongs/android/d/i;->a:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/estrongs/android/d/i;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    move v5, v4

    :goto_3
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    if-ge v5, v2, :cond_2

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static g(Lcom/estrongs/fs/h;)I
    .locals 2

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020095

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/bc;->a(Lcom/estrongs/fs/h;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/estrongs/android/d/f;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/estrongs/android/d/f;->b(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0200a0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static h(Lcom/estrongs/fs/h;)I
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/d/f;->i(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd2

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/d/f;->e()I

    move-result v0

    goto :goto_0
.end method

.method public static i(Lcom/estrongs/fs/h;)Z
    .locals 1

    const-string v0, "need_210_thumbnail"

    invoke-interface {p0, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "need_210_thumbnail"

    invoke-interface {p0, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j(Lcom/estrongs/fs/h;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x40032

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/util/bc;->a(Lcom/estrongs/fs/h;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static k(Lcom/estrongs/fs/h;)Z
    .locals 2

    const-string v0, "forece_thumbnail"

    invoke-interface {p0, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    sget-object v1, Lcom/estrongs/android/d/f;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/d/f;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/d/f;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/estrongs/android/d/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/estrongs/android/d/f;->e:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/m;->a:Lcom/estrongs/fs/m;

    invoke-virtual {v2}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/d/f;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/ui/theme/al;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/f;->e:Ljava/util/HashMap;

    const-string v2, "-1"

    const v3, 0x7f0200a0

    invoke-direct {p0, v3}, Lcom/estrongs/android/d/f;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
