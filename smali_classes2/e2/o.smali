.class public final Le2/o;
.super Le2/u;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/o$a;
    }
.end annotation


# static fields
.field public static final n:Le2/o$a;


# instance fields
.field private final m:Lx1/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/o$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Le2/o;->n:Le2/o$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lx1/i;)V
    .locals 1

    const-string v0, "actionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Le2/u;-><init>(Lorg/json/JSONObject;)V

    iput-object p2, p0, Le2/o;->m:Lx1/i;

    return-void
.end method

.method public static final synthetic F(Le2/o;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Le2/o;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final G(Lorg/json/JSONObject;)I
    .locals 1

    sget-object p0, Li2/h;->a:Li2/h$a;

    invoke-virtual {p0}, Li2/h$a;->a()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final H(Lorg/json/JSONObject;)Le2/h;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "setItemChanged"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Le2/h;

    iget-object p0, p0, Le2/o;->m:Lx1/i;

    invoke-direct {p1, v0, p0}, Le2/h;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    return-object p1
.end method

.method private final I(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const p0, 0x3fffffff    # 1.9999999f

    rem-int p2, p0, p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p0, p2

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private final J(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 9
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

    instance-of p2, p4, Le2/o$b;

    if-eqz p2, :cond_0

    move-object p2, p4

    check-cast p2, Le2/o$b;

    iget v0, p2, Le2/o$b;->n:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p2, Le2/o$b;->n:I

    goto :goto_0

    :cond_0
    new-instance p2, Le2/o$b;

    invoke-direct {p2, p0, p4}, Le2/o$b;-><init>(Le2/o;Lq5/d;)V

    :goto_0
    iget-object p4, p2, Le2/o$b;->l:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p2, Le2/o$b;->n:I

    const-string v2, "paramValue"

    const-string v3, "it"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-ne v1, v4, :cond_1

    iget-object p0, p2, Le2/o$b;->k:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object p1, p2, Le2/o$b;->j:Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p3, p2, Le2/o$b;->i:Ljava/lang/Object;

    check-cast p3, Lorg/json/JSONObject;

    iget-object v1, p2, Le2/o$b;->h:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v5, p2, Le2/o$b;->g:Ljava/lang/Object;

    check-cast v5, Le2/o;

    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object p4, p1

    move-object p1, v5

    move-object v8, p3

    move-object p3, p2

    move-object p2, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p2, Le2/o$b;->k:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object p1, p2, Le2/o$b;->j:Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p3, p2, Le2/o$b;->i:Ljava/lang/Object;

    check-cast p3, Lorg/json/JSONObject;

    iget-object v1, p2, Le2/o$b;->h:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v4, p2, Le2/o$b;->g:Ljava/lang/Object;

    check-cast v4, Le2/o;

    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object p4, p1

    move-object p1, v4

    move-object v8, p3

    move-object p3, p2

    move-object p2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    :cond_3
    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V

    invoke-static {p3}, Lv1/a;->g(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_9

    sget-object p4, Li2/g;->a:Li2/g$a;

    invoke-virtual {p4}, Li2/g$a;->a()Ljava/lang/String;

    move-result-object p4

    const/4 v1, -0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, p4, v1}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    sget-object v1, Lj2/b;->a:Lj2/b$a;

    invoke-virtual {v1}, Lj2/b$a;->e()I

    move-result v6

    const-string v7, "this.keys()"

    if-ne p4, v6, :cond_6

    new-instance p4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, p1

    move-object p1, p0

    move-object p0, v1

    move-object v1, v0

    move-object v0, p3

    move-object p3, p2

    move-object p2, v8

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p3, Le2/o$b;->g:Ljava/lang/Object;

    iput-object p2, p3, Le2/o$b;->h:Ljava/lang/Object;

    iput-object v0, p3, Le2/o$b;->i:Ljava/lang/Object;

    iput-object p4, p3, Le2/o$b;->j:Ljava/lang/Object;

    iput-object p0, p3, Le2/o$b;->k:Ljava/lang/Object;

    iput v5, p3, Le2/o$b;->n:I

    invoke-virtual {p1, p4, v4, v6, p3}, Le2/t;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_4

    return-object v1

    :cond_5
    move-object p1, p2

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lj2/b$a;->d()I

    move-result v1

    if-ne p4, v1, :cond_8

    new-instance p4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p4, v1, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, p1

    move-object p1, p0

    move-object p0, v1

    move-object v1, v0

    move-object v0, p3

    move-object p3, p2

    move-object p2, v8

    :cond_7
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p3, Le2/o$b;->g:Ljava/lang/Object;

    iput-object p2, p3, Le2/o$b;->h:Ljava/lang/Object;

    iput-object v0, p3, Le2/o$b;->i:Ljava/lang/Object;

    iput-object p4, p3, Le2/o$b;->j:Ljava/lang/Object;

    iput-object p0, p3, Le2/o$b;->k:Ljava/lang/Object;

    iput v4, p3, Le2/o$b;->n:I

    invoke-virtual {p1, p4, v5, v6, p3}, Le2/t;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_7

    return-object v1

    :cond_8
    const/4 p4, 0x0

    :goto_3
    instance-of p0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_9

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_9
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method


# virtual methods
.method public A(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 19
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

    move-object/from16 v0, p6

    instance-of v1, v0, Le2/o$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le2/o$c;

    iget v2, v1, Le2/o$c;->q:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le2/o$c;->q:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Le2/o$c;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Le2/o$c;-><init>(Le2/o;Lq5/d;)V

    :goto_0
    iget-object v0, v1, Le2/o$c;->o:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v3

    iget v4, v1, Le2/o$c;->q:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v1, Le2/o$c;->n:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v1, Le2/o$c;->m:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    iget-object v6, v1, Le2/o$c;->l:Ljava/lang/Object;

    check-cast v6, Lx1/m;

    iget-object v7, v1, Le2/o$c;->k:Ljava/lang/Object;

    check-cast v7, Lw1/a;

    iget-object v8, v1, Le2/o$c;->j:Ljava/lang/Object;

    check-cast v8, Lx1/e;

    iget-object v9, v1, Le2/o$c;->i:Ljava/lang/Object;

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v10, v1, Le2/o$c;->h:Ljava/lang/Object;

    check-cast v10, Landroid/view/View;

    iget-object v11, v1, Le2/o$c;->g:Ljava/lang/Object;

    check-cast v11, Le2/o;

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object v15, v1

    move-object v13, v2

    move-object v12, v3

    move-object v14, v6

    move-object v3, v7

    move-object v1, v8

    move-object v0, v9

    move-object v2, v11

    move-object v11, v4

    move v9, v5

    move-object v4, v10

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    const/4 v0, -0x1

    invoke-virtual/range {p0 .. p0}, Le2/t;->k()I

    move-result v4

    if-eq v0, v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Le2/t;->k()I

    move-result v0

    move-object/from16 v4, p1

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    const-string v7, "infoJson!!.keys()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v14, p5

    move-object v11, v0

    move-object v15, v1

    move-object v12, v3

    move-object v13, v6

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "adapter_data"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "key"

    if-eqz v7, :cond_8

    invoke-virtual {v2}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v6, v9}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v6}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    instance-of v7, v11, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Le6/e;->i(II)Le6/d;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v16, v9

    check-cast v16, Lo5/a0;

    invoke-virtual/range {v16 .. v16}, Lo5/a0;->nextInt()I

    move-result v8

    invoke-static {v6, v8}, Lv1/b;->c(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v8

    instance-of v5, v8, Lorg/json/JSONObject;

    if-eqz v5, :cond_3

    new-instance v5, Le2/h;

    check-cast v8, Lorg/json/JSONObject;

    iget-object v10, v2, Le2/o;->m:Lx1/i;

    invoke-direct {v5, v8, v10}, Le2/h;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    goto :goto_3

    :cond_3
    instance-of v5, v8, Ljava/lang/String;

    if-eqz v5, :cond_4

    new-instance v5, Le2/h;

    new-instance v10, Lorg/json/JSONObject;

    check-cast v8, Ljava/lang/String;

    invoke-direct {v10, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Le2/o;->m:Lx1/i;

    invoke-direct {v5, v10, v8}, Le2/h;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    invoke-static {v7}, Lo5/j;->F(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "isCyclePlay"

    invoke-static {v6, v9, v8}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_6

    const/16 v16, 0x1

    goto :goto_4

    :cond_6
    move/from16 v16, v7

    :goto_4
    move-object v10, v11

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v9, Le2/p;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v6, "content.context"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lo5/j;->e0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    move-object v6, v9

    move-object/from16 p1, v4

    move-object v4, v9

    move-object v9, v0

    move-object/from16 p2, v0

    move-object v0, v10

    move-object v10, v1

    move-object/from16 p3, v1

    move-object v1, v11

    move-object v11, v3

    move-object/from16 v17, v12

    move-object v12, v14

    move-object/from16 v18, v13

    move/from16 v13, v16

    invoke-direct/range {v6 .. v13}, Le2/p;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Z)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz v16, :cond_a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v0, v4}, Le2/o;->I(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_6

    :cond_7
    move-object/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p1, v4

    move-object v1, v11

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    goto :goto_6

    :cond_8
    move-object/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p1, v4

    move-object v1, v11

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    sget-object v0, Li2/h;->a:Li2/h$a;

    invoke-virtual {v0}, Li2/h$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    instance-of v0, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v2, v0}, Le2/o;->G(Lorg/json/JSONObject;)I

    move-result v0

    invoke-virtual {v2}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v4}, Le2/o;->H(Lorg/json/JSONObject;)Le2/h;

    move-result-object v4

    move-object v11, v1

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    instance-of v6, v5, Le2/p;

    if-eqz v6, :cond_9

    move-object v8, v5

    check-cast v8, Le2/p;

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_a

    invoke-virtual {v8, v0, v4}, Le2/p;->i(ILe2/h;)V

    :cond_a
    :goto_6
    move-object/from16 v4, p1

    move-object/from16 v0, p2

    move-object v11, v1

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    const/4 v5, 0x1

    move-object/from16 v1, p3

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v2}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v9}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "value"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v15, Le2/o$c;->g:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v15, Le2/o$c;->h:Ljava/lang/Object;

    move-object/from16 v5, p2

    iput-object v5, v15, Le2/o$c;->i:Ljava/lang/Object;

    move-object/from16 v7, p3

    iput-object v7, v15, Le2/o$c;->j:Ljava/lang/Object;

    iput-object v3, v15, Le2/o$c;->k:Ljava/lang/Object;

    iput-object v14, v15, Le2/o$c;->l:Ljava/lang/Object;

    iput-object v1, v15, Le2/o$c;->m:Ljava/lang/Object;

    move-object/from16 v8, v18

    iput-object v8, v15, Le2/o$c;->n:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v15, Le2/o$c;->q:I

    invoke-virtual {v2, v1, v6, v0, v15}, Le2/o;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v6, v17

    if-ne v0, v6, :cond_c

    return-object v6

    :cond_c
    move-object v11, v1

    move-object v0, v5

    move-object v12, v6

    move-object v1, v7

    move-object v13, v8

    :goto_7
    move v5, v9

    goto/16 :goto_1

    :cond_d
    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0
.end method

.method public p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 1
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

    const-string v0, "setLayoutManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Le2/o;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Le2/u;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
