.class public final Le2/m;
.super Le2/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/m$a;
    }
.end annotation


# static fields
.field public static final o:Le2/m$a;


# instance fields
.field private final m:Lx1/i;

.field private n:Lw1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/m$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Le2/m;->o:Le2/m$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lx1/i;)V
    .locals 1

    const-string v0, "actionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Le2/u;-><init>(Lorg/json/JSONObject;)V

    iput-object p2, p0, Le2/m;->m:Lx1/i;

    return-void
.end method

.method public static synthetic F(Le2/m;Ln5/p;)V
    .locals 0

    invoke-static {p0, p1}, Le2/m;->L(Le2/m;Ln5/p;)V

    return-void
.end method

.method public static final synthetic G(Le2/m;Landroid/view/View;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Le2/m;->J(Landroid/view/View;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic H(Le2/m;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Le2/m;->M(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final I(Landroid/view/View;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Le2/m;->n:Lw1/a;

    if-eqz v0, :cond_0

    sget-object v1, Lw1/b;->a:Lw1/b;

    invoke-virtual {v1, p1}, Lw1/b;->a(Landroid/view/View;)Ln5/k;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lw1/a;->onCardInteraction(Landroid/view/View;Landroid/app/PendingIntent;Ln5/k;)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "view.context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Le2/m;->N(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final J(Landroid/view/View;Lq5/d;)Ljava/lang/Object;
    .locals 21
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le2/m$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le2/m$b;

    iget v3, v2, Le2/m$b;->j:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le2/m$b;->j:I

    goto :goto_0

    :cond_0
    new-instance v2, Le2/m$b;

    invoke-direct {v2, v0, v1}, Le2/m$b;-><init>(Le2/m;Lq5/d;)V

    :goto_0
    iget-object v1, v2, Le2/m$b;->h:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Le2/m$b;->j:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Le2/m$b;->g:Ljava/lang/Object;

    check-cast v0, Ln2/b;

    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v4, "music_name"

    invoke-static {v1, v4}, Lv1/c;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, ""

    :cond_3
    move-object v7, v4

    const-string v4, "artist_name"

    invoke-static {v1, v4}, Lv1/c;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "album_name"

    invoke-static {v1, v4}, Lv1/c;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x0

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "music_duration"

    invoke-static {v1, v6, v4}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v12

    const-string v4, "music_package_name"

    invoke-static {v1, v4}, Lv1/c;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v1, Ln2/b;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xf80

    const/16 v20, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v20}, Ln2/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;ILjava/lang/String;Landroid/app/PendingIntent;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/i;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAllMusicMeta: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SimulatedMediaPlayerContainerView"

    invoke-static {v6, v4}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v2, Le2/m$b;->g:Ljava/lang/Object;

    iput v5, v2, Le2/m$b;->j:I

    const-string v4, "setMusicMetaData"

    move-object/from16 v5, p1

    invoke-virtual {v0, v5, v4, v1, v2}, Le2/t;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    return-object v3

    :cond_4
    :goto_1
    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0
.end method

.method private final K(Landroid/view/View;Lq5/d;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Le2/l;

    invoke-direct {v0, p0}, Le2/l;-><init>(Le2/m;)V

    const-class v3, Ljava/util/function/Consumer;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "setOpenAppListener"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Le2/t;->m(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private static final L(Le2/m;Ln5/p;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln5/p;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Ln5/p;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual {p1}, Ln5/p;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Le2/m;->I(Landroid/view/View;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method private final M(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le2/m$c;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le2/m$c;

    iget v1, v0, Le2/m$c;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le2/m$c;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Le2/m$c;

    invoke-direct {v0, p0, p4}, Le2/m$c;-><init>(Le2/m;Lq5/d;)V

    :goto_0
    iget-object p4, v0, Le2/m$c;->k:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Le2/m$c;->m:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p3, v0, Le2/m$c;->j:Ljava/lang/Object;

    iget-object p0, v0, Le2/m$c;->i:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    iget-object p0, v0, Le2/m$c;->h:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/view/View;

    iget-object p0, v0, Le2/m$c;->g:Ljava/lang/Object;

    check-cast p0, Le2/m;

    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V

    const-string p4, "SimulatedMediaPlayerContainerView"

    const-string v2, "setWidgetId>>>"

    invoke-static {p4, v2}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v0, Le2/m$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le2/m$c;->h:Ljava/lang/Object;

    iput-object p2, v0, Le2/m$c;->i:Ljava/lang/Object;

    iput-object p3, v0, Le2/m$c;->j:Ljava/lang/Object;

    iput v4, v0, Le2/m$c;->m:I

    invoke-direct {p0, p1, v0}, Le2/m;->K(Landroid/view/View;Lq5/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    const/4 p4, 0x0

    iput-object p4, v0, Le2/m$c;->g:Ljava/lang/Object;

    iput-object p4, v0, Le2/m$c;->h:Ljava/lang/Object;

    iput-object p4, v0, Le2/m$c;->i:Ljava/lang/Object;

    iput-object p4, v0, Le2/m$c;->j:Ljava/lang/Object;

    iput v3, v0, Le2/m$c;->m:I

    invoke-super {p0, p1, p2, p3, v0}, Le2/u;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final N(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object p0, Ln5/l;->h:Ln5/l$a;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "doStartApplicationWithPackageName error: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedMediaPlayerContainerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Lx1/e;",
            "Lw1/a;",
            "Lx1/m;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iput-object p4, p0, Le2/m;->n:Lw1/a;

    invoke-super/range {p0 .. p6}, Le2/t;->A(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performApply key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimulatedMediaPlayerContainerView"

    invoke-static {v1, v0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "music_package_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p4}, Le2/m;->J(Landroid/view/View;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :sswitch_1
    const-string v0, "setWidgetId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Le2/m;->M(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :sswitch_2
    const-string v0, "music_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :sswitch_3
    const-string v0, "album_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :sswitch_4
    const-string v0, "music_duration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :sswitch_5
    const-string v0, "artist_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Le2/u;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7379377d -> :sswitch_5
        -0x45045592 -> :sswitch_4
        -0x32729da5 -> :sswitch_3
        -0x2e80ab9b -> :sswitch_2
        0x232c8101 -> :sswitch_1
        0x2ac61abe -> :sswitch_0
    .end sparse-switch
.end method
