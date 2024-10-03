.class public final Le2/v;
.super Le2/u;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/v$a;
    }
.end annotation


# static fields
.field public static final n:Le2/v$a;


# instance fields
.field private final m:Lx1/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/v$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Le2/v;->n:Le2/v$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lx1/i;)V
    .locals 1

    const-string v0, "actionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Le2/u;-><init>(Lorg/json/JSONObject;)V

    iput-object p2, p0, Le2/v;->m:Lx1/i;

    return-void
.end method

.method public static final synthetic F(Le2/v;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p7}, Le2/v;->S(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final G(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Le2/h;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-static {v0, v1}, Le6/e;->i(II)Le6/d;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lo5/a0;

    invoke-virtual {v1}, Lo5/a0;->nextInt()I

    move-result v1

    invoke-static {p1, v1}, Lv1/b;->c(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    new-instance v2, Le2/h;

    check-cast v1, Lorg/json/JSONObject;

    iget-object v3, p0, Le2/v;->m:Lx1/i;

    invoke-direct {v2, v1, v3}, Le2/h;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Le2/h;

    new-instance v3, Lorg/json/JSONObject;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le2/v;->m:Lx1/i;

    invoke-direct {v2, v3, v1}, Le2/h;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lo5/j;->F(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_4

    :cond_3
    invoke-static {}, Lo5/j;->e()Ljava/util/List;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private final H(Lorg/json/JSONObject;)I
    .locals 1

    sget-object p0, Li2/k;->a:Li2/k$a;

    invoke-virtual {p0}, Li2/k$a;->c()Ljava/lang/String;

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

.method private final I(Lorg/json/JSONObject;)Le2/h;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "setItemChanged"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Le2/h;

    iget-object p0, p0, Le2/v;->m:Lx1/i;

    invoke-direct {p1, v0, p0}, Le2/h;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    return-object p1
.end method

.method private final J(Lorg/json/JSONObject;)Z
    .locals 1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "smoothScroll"

    invoke-static {p1, v0, p0}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final K(Lorg/json/JSONObject;)I
    .locals 1

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "setCurrentItem"

    invoke-static {p1, v0, p0}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final L(Landroid/view/View;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-virtual {p0}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-static {v3, v2}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    instance-of v4, v1, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Le2/v;->G(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Le2/v;->P(Lorg/json/JSONObject;Ljava/util/List;)Z

    move-result v3

    invoke-virtual {p0}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4}, Le2/v;->K(Lorg/json/JSONObject;)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v12, v4

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    new-instance v13, Le2/p;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v4, "content.context"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lo5/j;->e0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    move-object v4, v13

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move v11, v3

    invoke-direct/range {v4 .. v11}, Le2/p;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Z)V

    invoke-virtual {v1, v13}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    if-eqz v3, :cond_1

    if-nez v12, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v6

    invoke-static/range {p0 .. p6}, Le2/v;->R(Le2/v;Landroidx/viewpager2/widget/ViewPager2;IZIILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final M(Landroidx/viewpager2/widget/ViewPager2;Lorg/json/JSONObject;)V
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Li2/k;->a:Li2/k$a;

    invoke-virtual {v1}, Li2/k$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Li2/k$a;->d()Ljava/lang/String;

    move-result-object p2

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-ltz p2, :cond_2

    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v1}, Li2/k$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of v0, p1, Le2/p;

    if-eqz v0, :cond_0

    check-cast p1, Le2/p;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-static {v0, v1}, Le6/e;->i(II)Le6/d;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lo5/a0;

    invoke-virtual {v1}, Lo5/a0;->nextInt()I

    move-result v1

    invoke-static {v2, v1}, Lv1/b;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    add-int/lit8 v3, p2, 0x1

    new-instance v4, Le2/h;

    iget-object v5, p0, Le2/v;->m:Lx1/i;

    invoke-direct {v4, v1, v5}, Le2/h;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    invoke-virtual {p1, p2, v4}, Le2/p;->i(ILe2/h;)V

    move p2, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final N(Landroidx/viewpager2/widget/ViewPager2;Lorg/json/JSONObject;)V
    .locals 3

    invoke-direct {p0, p2}, Le2/v;->K(Lorg/json/JSONObject;)I

    move-result v0

    invoke-direct {p0, p2}, Le2/v;->J(Lorg/json/JSONObject;)Z

    move-result v1

    const-string v2, "adapter_data"

    invoke-direct {p0, p2, v2}, Le2/v;->G(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Le2/v;->P(Lorg/json/JSONObject;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p1, p2, v1, v0}, Le2/v;->Q(Landroidx/viewpager2/widget/ViewPager2;IZI)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method private final O(Landroidx/viewpager2/widget/ViewPager2;Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0, p2}, Le2/v;->H(Lorg/json/JSONObject;)I

    move-result v0

    invoke-direct {p0, p2}, Le2/v;->I(Lorg/json/JSONObject;)Le2/h;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of p2, p1, Le2/p;

    if-eqz p2, :cond_0

    check-cast p1, Le2/p;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0, p0}, Le2/p;->i(ILe2/h;)V

    :cond_1
    return-void
.end method

.method private final P(Lorg/json/JSONObject;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Le2/h;",
            ">;)Z"
        }
    .end annotation

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "isCyclePlay"

    invoke-static {p1, v0, p0}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final Q(Landroidx/viewpager2/widget/ViewPager2;IZI)V
    .locals 0

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    if-eq p2, p0, :cond_1

    const p0, 0x3fffffff    # 1.9999999f

    rem-int p2, p0, p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p0, p2

    :goto_0
    add-int/2addr p0, p4

    invoke-virtual {p1, p0, p3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method static synthetic R(Le2/v;Landroidx/viewpager2/widget/ViewPager2;IZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Le2/v;->Q(Landroidx/viewpager2/widget/ViewPager2;IZI)V

    return-void
.end method

.method private final S(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
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

    move-object/from16 v0, p7

    instance-of v1, v0, Le2/v$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le2/v$c;

    iget v2, v1, Le2/v$c;->q:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le2/v$c;->q:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Le2/v$c;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Le2/v$c;-><init>(Le2/v;Lq5/d;)V

    :goto_0
    iget-object v0, v1, Le2/v$c;->o:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v3

    iget v4, v1, Le2/v$c;->q:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v1, Le2/v$c;->n:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v1, Le2/v$c;->m:Ljava/lang/Object;

    check-cast v4, Lx1/m;

    iget-object v6, v1, Le2/v$c;->l:Ljava/lang/Object;

    check-cast v6, Lw1/a;

    iget-object v7, v1, Le2/v$c;->k:Ljava/lang/Object;

    check-cast v7, Lx1/e;

    iget-object v8, v1, Le2/v$c;->j:Ljava/lang/Object;

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v9, v1, Le2/v$c;->i:Ljava/lang/Object;

    check-cast v9, Landroid/view/View;

    iget-object v10, v1, Le2/v$c;->h:Ljava/lang/Object;

    check-cast v10, Landroid/view/View;

    iget-object v11, v1, Le2/v$c;->g:Ljava/lang/Object;

    check-cast v11, Le2/v;

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object v0, v10

    move-object v10, v3

    move-object v3, v8

    move-object v8, v1

    move-object v1, v9

    move-object v9, v2

    move-object v2, v11

    move-object/from16 v18, v7

    move-object v7, v4

    move-object/from16 v4, v18

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const-string v4, "infoJson!!.keys()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v9, v0

    move-object v8, v1

    move-object v10, v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "adapter_data"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "key"

    if-eqz v12, :cond_4

    invoke-static {v11, v13}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p0, v2

    move-object/from16 p1, v0

    move-object/from16 p2, v11

    move-object/from16 p3, v1

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    invoke-direct/range {p0 .. p7}, Le2/v;->L(Landroid/view/View;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;)V

    goto :goto_1

    :cond_4
    const-string v12, "setCurrentItem"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    instance-of v11, v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v11, :cond_3

    move-object v11, v0

    check-cast v11, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v2, v11, v12}, Le2/v;->N(Landroidx/viewpager2/widget/ViewPager2;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_5
    sget-object v12, Li2/k;->a:Li2/k$a;

    invoke-virtual {v12}, Li2/k$a;->e()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    instance-of v11, v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v11, :cond_3

    move-object v11, v0

    check-cast v11, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v2, v11, v12}, Le2/v;->O(Landroidx/viewpager2/widget/ViewPager2;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v12}, Li2/k$a;->b()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    instance-of v11, v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v11, :cond_3

    move-object v11, v0

    check-cast v11, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v2, v11, v12}, Le2/v;->M(Landroidx/viewpager2/widget/ViewPager2;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_7
    const-string v12, "scrollToNext"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    instance-of v12, v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v12, :cond_3

    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v2}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "duration"

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v11, "orientation"

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    move-object v12, v0

    check-cast v12, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object/from16 p0, v12

    move-wide/from16 p1, v13

    move/from16 p3, v11

    move-object/from16 p4, v15

    move/from16 p5, v16

    move-object/from16 p6, v17

    invoke-static/range {p0 .. p6}, Lv1/f;->c(Landroidx/viewpager2/widget/ViewPager2;JILandroid/animation/TimeInterpolator;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v2}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v13}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "value"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v8, Le2/v$c;->g:Ljava/lang/Object;

    iput-object v0, v8, Le2/v$c;->h:Ljava/lang/Object;

    iput-object v1, v8, Le2/v$c;->i:Ljava/lang/Object;

    iput-object v3, v8, Le2/v$c;->j:Ljava/lang/Object;

    iput-object v4, v8, Le2/v$c;->k:Ljava/lang/Object;

    iput-object v6, v8, Le2/v$c;->l:Ljava/lang/Object;

    iput-object v7, v8, Le2/v$c;->m:Ljava/lang/Object;

    iput-object v9, v8, Le2/v$c;->n:Ljava/lang/Object;

    iput v5, v8, Le2/v$c;->q:I

    invoke-virtual {v2, v0, v11, v12, v8}, Le2/u;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v10, :cond_3

    return-object v10

    :cond_9
    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0
.end method


# virtual methods
.method public A(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 9
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

    instance-of v0, p6, Le2/v$b;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Le2/v$b;

    iget v1, v0, Le2/v$b;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le2/v$b;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Le2/v$b;

    invoke-direct {v0, p0, p6}, Le2/v$b;-><init>(Le2/v;Lq5/d;)V

    :goto_0
    move-object v8, v0

    iget-object p6, v8, Le2/v$b;->g:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, v8, Le2/v$b;->i:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p6}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p6}, Ln5/m;->b(Ljava/lang/Object;)V

    const/4 p6, -0x1

    invoke-virtual {p0}, Le2/t;->k()I

    move-result v1

    if-eq p6, v1, :cond_3

    invoke-virtual {p0}, Le2/t;->k()I

    move-result p6

    invoke-virtual {p1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p6

    if-eqz p6, :cond_3

    iput v2, v8, Le2/v$b;->i:I

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Le2/v;->S(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
