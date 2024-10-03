.class public Le2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/t$a;
    }
.end annotation


# static fields
.field public static final k:Le2/t$a;


# instance fields
.field private final g:Lorg/json/JSONObject;

.field private h:I

.field private i:Landroid/view/View;

.field private j:Lx1/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/t$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Le2/t;->k:Le2/t$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/t;->g:Lorg/json/JSONObject;

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    sget-object v1, Li2/j;->a:Li2/j$a;

    invoke-virtual {v1}, Li2/j$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    :cond_0
    iput v0, p0, Le2/t;->h:I

    return-void
.end method

.method static synthetic B(Le2/t;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 5

    instance-of p2, p6, Le2/t$e;

    if-eqz p2, :cond_0

    move-object p2, p6

    check-cast p2, Le2/t$e;

    iget p3, p2, Le2/t$e;->m:I

    const/high16 p4, -0x80000000

    and-int v0, p3, p4

    if-eqz v0, :cond_0

    sub-int/2addr p3, p4

    iput p3, p2, Le2/t$e;->m:I

    goto :goto_0

    :cond_0
    new-instance p2, Le2/t$e;

    invoke-direct {p2, p0, p6}, Le2/t$e;-><init>(Le2/t;Lq5/d;)V

    :goto_0
    iget-object p3, p2, Le2/t$e;->k:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p4

    iget p6, p2, Le2/t$e;->m:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p6, :cond_3

    if-eq p6, v1, :cond_2

    if-ne p6, v0, :cond_1

    invoke-static {p3}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p2, Le2/t$e;->j:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object p1, p2, Le2/t$e;->i:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    iget-object p5, p2, Le2/t$e;->h:Ljava/lang/Object;

    check-cast p5, Lx1/m;

    iget-object p6, p2, Le2/t$e;->g:Ljava/lang/Object;

    check-cast p6, Le2/t;

    invoke-static {p3}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object p3, p2

    move-object p2, p1

    move-object p1, p6

    goto :goto_1

    :cond_3
    invoke-static {p3}, Ln5/m;->b(Ljava/lang/Object;)V

    const/4 p3, -0x1

    iget p6, p0, Le2/t;->h:I

    if-eq p3, p6, :cond_8

    iput-object p5, p0, Le2/t;->j:Lx1/m;

    invoke-virtual {p1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Le2/t;->i:Landroid/view/View;

    if-eqz p1, :cond_6

    iget-object p3, p0, Le2/t;->g:Lorg/json/JSONObject;

    invoke-static {p3}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p3

    const-string p6, "infoJson!!.keys()"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    move-object p1, p0

    move-object p0, p3

    move-object p3, p2

    move-object p2, v4

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    iget-object v2, p1, Le2/t;->g:Lorg/json/JSONObject;

    invoke-virtual {v2, p6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "key"

    invoke-static {p6, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "value"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p3, Le2/t$e;->g:Ljava/lang/Object;

    iput-object p5, p3, Le2/t$e;->h:Ljava/lang/Object;

    iput-object p2, p3, Le2/t$e;->i:Ljava/lang/Object;

    iput-object p0, p3, Le2/t$e;->j:Ljava/lang/Object;

    iput v1, p3, Le2/t$e;->m:I

    invoke-virtual {p1, p2, p6, v2, p3}, Le2/t;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, p4, :cond_4

    return-object p4

    :cond_5
    move-object p0, p1

    move-object p2, p3

    :cond_6
    instance-of p1, p0, Lx1/j;

    if-eqz p1, :cond_8

    new-instance p1, Le2/t$f;

    const/4 p3, 0x0

    invoke-direct {p1, p5, p0, p3}, Le2/t$f;-><init>(Lx1/m;Le2/t;Lq5/d;)V

    iput-object p3, p2, Le2/t$e;->g:Ljava/lang/Object;

    iput-object p3, p2, Le2/t$e;->h:Ljava/lang/Object;

    iput-object p3, p2, Le2/t$e;->i:Ljava/lang/Object;

    iput-object p3, p2, Le2/t$e;->j:Ljava/lang/Object;

    iput v0, p2, Le2/t$e;->m:I

    invoke-virtual {p0, p1, p2}, Le2/t;->e(Ly5/l;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p4, :cond_7

    return-object p4

    :cond_7
    :goto_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_8
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public static final synthetic b(Le2/t;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Le2/t;->d(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Le2/t;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Le2/t;->w(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final d(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 11
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

    instance-of p2, p4, Le2/t$b;

    if-eqz p2, :cond_0

    move-object p2, p4

    check-cast p2, Le2/t$b;

    iget v0, p2, Le2/t$b;->o:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p2, Le2/t$b;->o:I

    goto :goto_0

    :cond_0
    new-instance p2, Le2/t$b;

    invoke-direct {p2, p0, p4}, Le2/t$b;-><init>(Le2/t;Lq5/d;)V

    :goto_0
    iget-object p4, p2, Le2/t$b;->m:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p2, Le2/t$b;->o:I

    const-string v2, "SimulatedView"

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    iget-object p0, p2, Le2/t$b;->l:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONArray;

    iget-object p1, p2, Le2/t$b;->k:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p3, p2, Le2/t$b;->j:Ljava/lang/Object;

    check-cast p3, Ljava/util/Iterator;

    iget-object v1, p2, Le2/t$b;->i:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    iget-object v4, p2, Le2/t$b;->h:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    iget-object v5, p2, Le2/t$b;->g:Ljava/lang/Object;

    check-cast v5, Le2/t;

    :try_start_0
    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V

    invoke-static {p3}, Lv1/a;->f(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p3

    if-eqz p3, :cond_6

    const/4 p4, 0x0

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-static {p4, v1}, Le6/e;->i(II)Le6/d;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    move-object v1, p3

    move-object p3, p4

    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    move-object p4, p3

    check-cast p4, Lo5/a0;

    invoke-virtual {p4}, Lo5/a0;->nextInt()I

    move-result p4

    invoke-static {v1, p4}, Lv1/b;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p4

    if-eqz p4, :cond_3

    :try_start_1
    sget-object v4, Ln5/l;->h:Ln5/l$a;

    const-string v4, "invoke_method"

    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "invoke_params"

    invoke-static {p4, v4}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p4

    new-instance v4, Lc2/a;

    invoke-direct {v4, p4}, Lc2/a;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "target.context"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lc2/a;->c(Landroid/content/Context;)V

    invoke-virtual {v4}, Lc2/a;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4}, Lc2/a;->b()Ljava/util/ArrayList;

    move-result-object v6

    const-string v4, "method"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p2, Le2/t$b;->g:Ljava/lang/Object;

    iput-object p1, p2, Le2/t$b;->h:Ljava/lang/Object;

    iput-object v1, p2, Le2/t$b;->i:Ljava/lang/Object;

    iput-object p3, p2, Le2/t$b;->j:Ljava/lang/Object;

    iput-object v10, p2, Le2/t$b;->k:Ljava/lang/Object;

    iput-object p4, p2, Le2/t$b;->l:Ljava/lang/Object;

    iput v3, p2, Le2/t$b;->o:I

    move-object v4, p0

    move-object v7, v10

    move-object v8, p1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Le2/t;->m(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v4, v0, :cond_4

    return-object v0

    :cond_4
    move-object v5, p0

    move-object v4, p1

    move-object p0, p4

    move-object p1, v10

    :goto_2
    :try_start_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyInvokeInfo, method = "

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", args= "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception p4

    move-object v5, p0

    move-object v4, p1

    move-object p0, p4

    :goto_3
    sget-object p1, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string p1, "applyInvokeInfo error."

    invoke-static {v2, p1, p0}, Lh2/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    move-object p1, v4

    move-object p0, v5

    goto/16 :goto_1

    :cond_6
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method static synthetic q(Le2/t;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Li2/j;->a:Li2/j$a;

    invoke-virtual {v0}, Li2/j$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "view_type"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Li2/j$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_18

    const-string v0, "layout_width"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    const-string v0, "layout_height"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Le2/t;->z(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x597a2048

    if-eq v0, v1, :cond_6

    const v1, 0x55f4784

    if-eq v0, v1, :cond_5

    const v1, 0x2a8c788b

    if-eq v0, v1, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "paddingRight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_5
    const-string v0, "paddingTop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_6
    const-string v0, "paddingLeft"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    :goto_3
    const-string v0, "paddingBottom"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2, p3}, Le2/t;->y(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string v0, "layout_marginStart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    :sswitch_1
    const-string v0, "layout_marginRight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    :sswitch_2
    const-string v0, "layout_marginLeft"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    :sswitch_3
    const-string v0, "layout_marginBottom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    :sswitch_4
    const-string v0, "layout_marginTop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    const-string v0, "layout_marginEnd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :cond_b
    :goto_6
    if-eqz v2, :cond_c

    invoke-direct {p0, p1, p2, p3}, Le2/t;->x(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_c
    const-string v0, "setStateListAnimator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1, p2, p3, p4}, Le2/t;->w(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_d

    return-object p0

    :cond_d
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_e
    const-string v0, "setBackgroundTintList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1, p2, p3}, Le2/t;->t(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :cond_f
    const-string v0, "setBackgroundTintBlendMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1, p2, p3}, Le2/t;->s(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :cond_10
    const-string v0, "setForegroundTintList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2, p3}, Le2/t;->v(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :cond_11
    const-string v0, "setForegroundTintBlendMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p1, p2, p3}, Le2/t;->u(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :cond_12
    const-string v0, "setAnimationDrawable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1, p2, p3, p4}, Le2/t;->r(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_13

    return-object p0

    :cond_13
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_14
    const-string v0, "invoke"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, p1, p2, p3, p4}, Le2/t;->d(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_15

    return-object p0

    :cond_15
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_16
    invoke-virtual {p0, p1, p2, p3, p4}, Le2/t;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_17

    return-object p0

    :cond_17
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_18
    :goto_7
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x38e2ba0e -> :sswitch_4
        0x8daf46e -> :sswitch_3
        0x1c87af0a -> :sswitch_2
        0x74c49379 -> :sswitch_1
        0x74d795bf -> :sswitch_0
    .end sparse-switch
.end method

.method private final r(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 3
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

    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lz1/a;

    invoke-direct {v1, v0}, Lz1/a;-><init>(Lorg/json/JSONObject;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnimationDrawable key = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", value = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mode = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SimulatedView"

    invoke-static {p3, p2}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Le2/t$c;

    const/4 p3, 0x0

    invoke-direct {p2, p0, v1, p1, p3}, Le2/t$c;-><init>(Le2/t;Lz1/a;Landroid/view/View;Lq5/d;)V

    invoke-virtual {p0, p2, p4}, Le2/t;->e(Ly5/l;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final s(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0, p3}, Le2/t;->n(Ljava/lang/Object;)Landroid/graphics/BlendMode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundTintBlendMode(Landroid/graphics/BlendMode;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set background tint blend mode key = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", value = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedView"

    invoke-static {p1, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final t(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p3, p1}, Le2/t;->g(Ljava/lang/Object;Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set background tint list key = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", value = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", colorState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedView"

    invoke-static {p1, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final u(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0, p3}, Le2/t;->n(Ljava/lang/Object;)Landroid/graphics/BlendMode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setForegroundTintBlendMode(Landroid/graphics/BlendMode;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set foreground tint blend mode key = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", value = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedView"

    invoke-static {p1, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final v(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0, p3, p1}, Le2/t;->g(Ljava/lang/Object;Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setForegroundTintList(Landroid/content/res/ColorStateList;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set foreground tint list key = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", value = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", colorState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedView"

    invoke-static {p1, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final w(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p4, Le2/t$d;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le2/t$d;

    iget v1, v0, Le2/t$d;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le2/t$d;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Le2/t$d;

    invoke-direct {v0, p0, p4}, Le2/t$d;-><init>(Le2/t;Lq5/d;)V

    :goto_0
    iget-object p4, v0, Le2/t$d;->g:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Le2/t$d;->i:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V

    :try_start_0
    sget-object p4, Ln5/l;->h:Ln5/l$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p4, p3}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object p3

    invoke-static {p3}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p3

    sget-object p4, Ln5/l;->h:Ln5/l$a;

    invoke-static {p3}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_1
    invoke-static {p3}, Ln5/l;->f(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    const/4 p3, 0x0

    :cond_3
    check-cast p3, Landroid/animation/StateListAnimator;

    if-eqz p3, :cond_4

    iput v3, v0, Le2/t$d;->i:I

    invoke-virtual {p0, p1, p2, p3, v0}, Le2/t;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final x(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "layout_marginStart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v1, p3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "layout_marginRight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v1, p3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :sswitch_2
    const-string v0, "layout_marginLeft"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v1, p3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :sswitch_3
    const-string v0, "layout_marginBottom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v1, p3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :sswitch_4
    const-string v0, "layout_marginTop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v1, p3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :sswitch_5
    const-string v0, "layout_marginEnd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v1, p3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "set view margin = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedView"

    invoke-static {p1, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x38e2f288 -> :sswitch_5
        -0x38e2ba0e -> :sswitch_4
        0x8daf46e -> :sswitch_3
        0x1c87af0a -> :sswitch_2
        0x74c49379 -> :sswitch_1
        0x74d795bf -> :sswitch_0
    .end sparse-switch
.end method

.method private final y(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    instance-of p0, p3, Ljava/lang/Integer;

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string p0, "paddingRight"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    move-object v1, p3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_1

    :sswitch_1
    const-string p0, "paddingBottom"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_2

    :sswitch_2
    const-string p0, "paddingTop"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    :sswitch_3
    const-string p0, "paddingLeft"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object p0, p3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    :goto_2
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "set view padding = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedView"

    invoke-static {p1, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x597a2048 -> :sswitch_3
        0x55f4784 -> :sswitch_2
        0xc0fb19c -> :sswitch_1
        0x2a8c788b -> :sswitch_0
    .end sparse-switch
.end method

.method private final z(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string p0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p3

    check-cast p0, Ljava/lang/String;

    const-string v0, "wrap_content"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x2

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string v0, "match_parent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lh6/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "layoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "layout_width"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    :cond_2
    const-string v1, "layout_height"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "set view size = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedView"

    invoke-static {p1, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
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

    invoke-static/range {p0 .. p6}, Le2/t;->B(Le2/t;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public e(Ly5/l;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lx1/o$a;->a(Lx1/o;Ly5/l;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f()Lx1/m;
    .locals 0

    iget-object p0, p0, Le2/t;->j:Lx1/m;

    return-object p0
.end method

.method public final g(Ljava/lang/Object;Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "target"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2, p1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p2, Ln5/l;->h:Ln5/l$a;

    invoke-static {p1}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Ln5/l;->f(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    move-object p0, p1

    :goto_2
    check-cast p0, Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public final h(Landroid/view/View;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string p0, "target"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "target.resources"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p0, p1, v0}, Lv1/d;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final i()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Le2/t;->g:Lorg/json/JSONObject;

    return-object p0
.end method

.method public final j()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Le2/t;->i:Landroid/view/View;

    return-object p0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Le2/t;->h:I

    return p0
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p3}, Lf2/a;->a(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p3}, Lf2/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-static {p3, v0}, Lv1/a;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    invoke-static {}, Lo5/j;->e()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lo5/j;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_3
    move-object v3, v0

    if-eqz v1, :cond_4

    invoke-static {}, Lo5/j;->e()Ljava/util/List;

    move-result-object p3

    goto :goto_4

    :cond_4
    invoke-static {p3}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-static {p3}, Lo5/j;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    :goto_4
    move-object v4, p3

    move-object v2, p0

    move-object v5, p2

    move-object v6, p1

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Le2/t;->m(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public m(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lx1/o$a;->b(Lx1/o;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ljava/lang/Object;)Landroid/graphics/BlendMode;
    .locals 1

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lj2/d;->a:Lj2/d$a;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lj2/d$a;->a(I)Landroid/graphics/BlendMode;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-static {p1}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Ln5/l;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move-object p0, p1

    :goto_2
    check-cast p0, Landroid/graphics/BlendMode;

    return-object p0
.end method

.method public final o(Ljava/lang/Object;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lj2/e;->a:Lj2/e$a;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lj2/e$a;->a(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-static {p1}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Ln5/l;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move-object p0, p1

    :goto_2
    check-cast p0, Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2, p3, p4}, Le2/t;->q(Le2/t;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
