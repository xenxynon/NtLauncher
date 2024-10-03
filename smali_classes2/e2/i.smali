.class public final Le2/i;
.super Le2/u;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/i$a;,
        Le2/i$b;
    }
.end annotation


# static fields
.field public static final n:Le2/i$a;


# instance fields
.field private final m:Lx1/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/i$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Le2/i;->n:Le2/i$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lx1/i;)V
    .locals 1

    const-string v0, "actionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Le2/u;-><init>(Lorg/json/JSONObject;)V

    iput-object p2, p0, Le2/i;->m:Lx1/i;

    return-void
.end method

.method private final F(Lorg/json/JSONObject;)I
    .locals 1

    sget-object p0, Li2/f;->a:Li2/f$a;

    invoke-virtual {p0}, Li2/f$a;->a()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final G(Lorg/json/JSONObject;)Le2/h;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "setItemChanged"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Le2/h;

    iget-object p0, p0, Le2/i;->m:Lx1/i;

    invoke-direct {p1, v0, p0}, Le2/h;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    return-object p1
.end method

.method private final H(Landroid/widget/AbsListView;I)V
    .locals 0

    const p0, 0x3fffffff    # 1.9999999f

    rem-int p2, p0, p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p0, p2

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 18
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

    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Le2/t;->k()I

    move-result v0

    const/4 v11, -0x1

    if-eq v11, v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Le2/t;->k()I

    move-result v0

    move-object/from16 v12, p1

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    const-string v0, "infoJson!!.keys()"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Li2/f;->a:Li2/f$a;

    invoke-virtual {v1}, Li2/f$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v0, v13, Landroid/widget/ListView;

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v10, v0}, Le2/i;->F(Lorg/json/JSONObject;)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v10, v1}, Le2/i;->G(Lorg/json/JSONObject;)Le2/h;

    move-result-object v1

    move-object v2, v13

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    instance-of v3, v2, Le2/i$b;

    if-eqz v3, :cond_7

    if-eq v0, v11, :cond_7

    check-cast v2, Le2/i$b;

    invoke-virtual {v2, v0, v1}, Le2/i$b;->h(ILe2/h;)V

    goto/16 :goto_5

    :cond_0
    const-string v1, "adapter_data"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v1}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "viewTypeCount"

    invoke-static {v1, v4, v3}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    instance-of v1, v13, Landroid/widget/AbsListView;

    if-eqz v1, :cond_7

    if-lez v4, :cond_7

    move-object v15, v13

    check-cast v15, Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-static {v2, v5}, Le6/e;->i(II)Le6/d;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v5

    check-cast v6, Lo5/a0;

    invoke-virtual {v6}, Lo5/a0;->nextInt()I

    move-result v6

    invoke-static {v0, v6}, Lv1/b;->c(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lorg/json/JSONObject;

    if-eqz v7, :cond_2

    new-instance v7, Le2/h;

    check-cast v6, Lorg/json/JSONObject;

    iget-object v8, v10, Le2/i;->m:Lx1/i;

    invoke-direct {v7, v6, v8}, Le2/h;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    goto :goto_2

    :cond_2
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_3

    new-instance v7, Le2/h;

    new-instance v8, Lorg/json/JSONObject;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v6, v10, Le2/i;->m:Lx1/i;

    invoke-direct {v7, v8, v6}, Le2/h;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lo5/j;->F(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo5/j;->e0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "isCyclePlay"

    invoke-static {v0, v5, v3}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    move v8, v3

    goto :goto_3

    :cond_5
    move v8, v2

    :goto_3
    instance-of v0, v1, Le2/i$b;

    if-eqz v0, :cond_6

    check-cast v1, Le2/i$b;

    invoke-virtual {v1}, Le2/i$b;->g()I

    move-result v0

    if-gt v4, v0, :cond_6

    invoke-virtual {v1, v8}, Le2/i$b;->i(Z)V

    invoke-virtual {v1, v9}, Le2/i$b;->j(Ljava/util/List;)V

    move/from16 v16, v8

    move-object/from16 v17, v9

    goto :goto_4

    :cond_6
    new-instance v7, Le2/i$b;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "content.context"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v3, v9

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v11, v7

    move-object/from16 v7, p4

    move/from16 v16, v8

    move-object/from16 v8, p5

    move-object/from16 v17, v9

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Le2/i$b;-><init>(Le2/i;Landroid/content/Context;Ljava/util/List;ILandroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Z)V

    invoke-virtual {v15, v11}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_4
    if-eqz v16, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v10, v15, v0}, Le2/i;->H(Landroid/widget/AbsListView;I)V

    :cond_7
    :goto_5
    const/4 v11, -0x1

    goto/16 :goto_0

    :cond_8
    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0
.end method
