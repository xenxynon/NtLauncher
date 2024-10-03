.class public final Le2/f;
.super Le2/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/f$a;
    }
.end annotation


# static fields
.field public static final m:Le2/f$a;

.field private static final n:Lh6/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/f$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Le2/f;->m:Le2/f$a;

    new-instance v0, Lh6/i;

    const-string v1, "\\d+(\\.\\d+)?f"

    invoke-direct {v0, v1}, Lh6/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Le2/f;->n:Lh6/i;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Le2/u;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static final synthetic F(Le2/f;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Le2/f;->M(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final G(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p3, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    const/16 v0, 0x168

    int-to-float v0, v0

    rem-float/2addr p3, v0

    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    sub-float p3, v0, p3

    rem-float/2addr p3, v0

    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Le2/f;->L(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final H(Ljava/lang/Object;Lorg/json/JSONArray;Lq5/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/json/JSONArray;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string p3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_7

    :try_start_0
    sget-object v3, Ln5/l;->h:Ln5/l$a;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_6

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_1

    sget-object v8, Le2/f;->n:Lh6/i;

    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Lh6/i;->d(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v7}, Lv1/a;->d(Ljava/lang/Object;)F

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/b;->b(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_1

    :cond_1
    instance-of v8, v7, Lorg/json/JSONArray;

    if-eqz v8, :cond_4

    move-object v8, v7

    check-cast v8, Lorg/json/JSONArray;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v8, v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v8, v7

    check-cast v8, Lorg/json/JSONArray;

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lj2/c;->a:Lj2/c$a;

    invoke-virtual {v9}, Lj2/c$a;->j()I

    move-result v10

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v10}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    check-cast v7, Lorg/json/JSONArray;

    invoke-direct {p0, v7}, Le2/f;->K(Lorg/json/JSONArray;)[I

    move-result-object v7

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Lj2/c$a;->h()I

    move-result v9

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    check-cast v7, Lorg/json/JSONArray;

    invoke-direct {p0, v7}, Le2/f;->J(Lorg/json/JSONArray;)[F

    move-result-object v7

    :cond_4
    :goto_1
    const-string v8, "param"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lf2/a;->a(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Lf2/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    new-array p0, v0, [Ljava/lang/Class;

    invoke-interface {v3, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/Class;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-interface {v4, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lf2/c;->b(Ljava/lang/Object;)Lf2/c$g;

    move-result-object p3

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    invoke-interface {p3, v0, p0}, Lf2/c$g;->a(Ljava/lang/String;[Ljava/lang/Class;)Lf2/c$j;

    move-result-object p0

    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lf2/c$j;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invoke method = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " error. msg = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedConstraintLayout"

    invoke-static {p1, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final I(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    instance-of p0, p3, Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string p0, "androidx.constraintlayout.widget.ConstraintSet"

    invoke-static {p0}, Lf2/c;->c(Ljava/lang/String;)Lf2/c$g;

    move-result-object p0

    const/4 p2, 0x2

    new-array v0, p2, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "parseDimensionRatioString"

    invoke-interface {p0, v1, v0}, Lf2/c$g;->a(Ljava/lang/String;[Ljava/lang/Class;)Lf2/c$j;

    move-result-object p0

    const/4 v0, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    aput-object p3, p2, v3

    invoke-interface {p0, v0, p2}, Lf2/c$j;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final J(Lorg/json/JSONArray;)[F
    .locals 5

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    new-array p0, p0, [F

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private final K(Lorg/json/JSONArray;)[I
    .locals 4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    new-array p0, p0, [I

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private final L(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    instance-of p0, p3, Ljava/lang/Float;

    const-string v0, "androidx.constraintlayout.widget.ConstraintLayout$LayoutParams"

    if-eqz p0, :cond_0

    invoke-static {v0}, Lf2/c;->c(Ljava/lang/String;)Lf2/c$g;

    move-result-object p0

    invoke-interface {p0, p2}, Lf2/c$g;->b(Ljava/lang/String;)Lf2/c$i;

    move-result-object p0

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-interface {p0, p1, p2}, Lf2/c$i;->c(Ljava/lang/Object;F)V

    goto :goto_0

    :cond_0
    instance-of p0, p3, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-static {v0}, Lf2/c;->c(Ljava/lang/String;)Lf2/c$g;

    move-result-object p0

    invoke-interface {p0, p2}, Lf2/c$g;->b(Ljava/lang/String;)Lf2/c$i;

    move-result-object p0

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lf2/c$i;->b(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    instance-of p0, p3, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    invoke-static {v0}, Lf2/c;->c(Ljava/lang/String;)Lf2/c$g;

    move-result-object p0

    invoke-interface {p0, p2}, Lf2/c$g;->b(Ljava/lang/String;)Lf2/c$i;

    move-result-object p0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lf2/c$i;->d(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_2
    instance-of p0, p3, Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-static {v0}, Lf2/c;->c(Ljava/lang/String;)Lf2/c$g;

    move-result-object p0

    invoke-interface {p0, p2}, Lf2/c$g;->b(Ljava/lang/String;)Lf2/c$i;

    move-result-object p0

    invoke-interface {p0, p1, p3}, Lf2/c$i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final M(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 10
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

    instance-of v0, p4, Le2/f$b;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le2/f$b;

    iget v1, v0, Le2/f$b;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le2/f$b;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Le2/f$b;

    invoke-direct {v0, p0, p4}, Le2/f$b;-><init>(Le2/f;Lq5/d;)V

    :goto_0
    iget-object p4, v0, Le2/f$b;->n:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Le2/f$b;->p:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget p0, v0, Le2/f$b;->m:I

    iget p1, v0, Le2/f$b;->l:I

    iget-object p2, v0, Le2/f$b;->k:Ljava/lang/Object;

    iget-object p3, v0, Le2/f$b;->j:Ljava/lang/Object;

    check-cast p3, Lorg/json/JSONArray;

    iget-object v2, v0, Le2/f$b;->i:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v0, Le2/f$b;->h:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    iget-object v6, v0, Le2/f$b;->g:Ljava/lang/Object;

    check-cast v6, Le2/f;

    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V

    const/4 p4, 0x0

    :try_start_0
    sget-object v2, Ln5/l;->h:Ln5/l$a;

    instance-of v2, p3, Lorg/json/JSONArray;

    if-eqz v2, :cond_3

    check-cast p3, Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    instance-of v2, p3, Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v2, Lorg/json/JSONArray;

    check-cast p3, Ljava/lang/String;

    invoke-direct {v2, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object p3, v2

    goto :goto_1

    :cond_4
    move-object p3, p4

    :goto_1
    invoke-static {p3}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p3

    sget-object v2, Ln5/l;->h:Ln5/l$a;

    invoke-static {p3}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_2
    invoke-static {p3}, Ln5/l;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move-object p4, p3

    :goto_3
    check-cast p4, Lorg/json/JSONArray;

    if-eqz p4, :cond_9

    const-string p3, "androidx.constraintlayout.widget.ConstraintSet"

    invoke-static {p3}, Lf2/c;->c(Ljava/lang/String;)Lf2/c$g;

    move-result-object p3

    new-array v2, v3, [Ljava/lang/Class;

    invoke-interface {p3, v2}, Lf2/c$g;->c([Ljava/lang/Class;)Lf2/c$h;

    move-result-object p3

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {p3, v2}, Lf2/c$h;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-static {p3}, Lf2/c;->b(Ljava/lang/Object;)Lf2/c$g;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "clone"

    invoke-interface {v2, v6, v5}, Lf2/c$g;->a(Ljava/lang/String;[Ljava/lang/Class;)Lf2/c$j;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-interface {v2, p3, v5}, Lf2/c$j;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v2

    move-object v5, v1

    move-object v1, p4

    move-object p4, p3

    move-object p3, p1

    move-object p1, p0

    move p0, v2

    move-object v2, v0

    move-object v0, p2

    move p2, v3

    :goto_4
    if-ge p2, p0, :cond_8

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lorg/json/JSONArray;

    if-eqz v7, :cond_7

    check-cast v6, Lorg/json/JSONArray;

    iput-object p1, v2, Le2/f$b;->g:Ljava/lang/Object;

    iput-object p3, v2, Le2/f$b;->h:Ljava/lang/Object;

    iput-object v0, v2, Le2/f$b;->i:Ljava/lang/Object;

    iput-object v1, v2, Le2/f$b;->j:Ljava/lang/Object;

    iput-object p4, v2, Le2/f$b;->k:Ljava/lang/Object;

    iput p2, v2, Le2/f$b;->l:I

    iput p0, v2, Le2/f$b;->m:I

    iput v4, v2, Le2/f$b;->p:I

    invoke-direct {p1, p4, v6, v2}, Le2/f;->H(Ljava/lang/Object;Lorg/json/JSONArray;Lq5/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_6

    return-object v5

    :cond_6
    move-object v6, p1

    move p1, p2

    move-object p2, p4

    move-object v8, v5

    move-object v5, p3

    move-object p3, v1

    move-object v1, v8

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    :goto_5
    move-object p4, p2

    move p2, p1

    move-object p1, v6

    move-object v8, v1

    move-object v1, p3

    move-object p3, v5

    move-object v5, v8

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    :cond_7
    add-int/2addr p2, v4

    goto :goto_4

    :cond_8
    invoke-static {p4}, Lf2/c;->b(Ljava/lang/Object;)Lf2/c$g;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-interface {p0, v0, p1}, Lf2/c$g;->a(Ljava/lang/String;[Ljava/lang/Class;)Lf2/c$j;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p3, p1, v3

    invoke-interface {p0, p4, p1}, Lf2/c$j;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final N(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 5
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

    const/4 p2, 0x0

    :try_start_0
    sget-object p4, Ln5/l;->h:Ln5/l$a;

    instance-of p4, p3, Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    check-cast p3, Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    instance-of p4, p3, Ljava/lang/String;

    if-eqz p4, :cond_1

    new-instance p4, Lorg/json/JSONObject;

    check-cast p3, Ljava/lang/String;

    invoke-direct {p4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p3, p4

    goto :goto_0

    :cond_1
    move-object p3, p2

    :goto_0
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

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move-object p2, p3

    :goto_2
    check-cast p2, Lorg/json/JSONObject;

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-eqz p3, :cond_8

    const-string p4, "layoutParams"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p4

    const-string v0, "this.keys()"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "paramValue"

    const-string v3, "paramKey"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v4, "guidePercent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_4

    :sswitch_1
    const-string v4, "matchConstraintPercentWidth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_4

    :sswitch_2
    const-string v4, "verticalBias"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :sswitch_3
    const-string v4, "circleAngle"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {v0, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, v0, v1}, Le2/f;->G(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_4
    const-string v4, "dimensionRatio"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v0, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, v0, v1}, Le2/f;->I(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_5
    const-string v4, "verticalWeight"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :sswitch_6
    const-string v4, "horizontalWeight"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :sswitch_7
    const-string v4, "horizontalBias"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :sswitch_8
    const-string v4, "matchConstraintPercentHeight"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v0, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lv1/a;->d(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->b(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_5

    :cond_6
    :goto_4
    invoke-static {v0, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    invoke-direct {p0, p3, v0, v1}, Le2/f;->L(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7c000c96 -> :sswitch_8
        -0x58d58f03 -> :sswitch_7
        -0x560cf044 -> :sswitch_6
        -0x15175a72 -> :sswitch_5
        -0xedf9dbb -> :sswitch_4
        -0x59fb21d -> :sswitch_3
        -0x230acb1 -> :sswitch_2
        0x682ff723 -> :sswitch_1
        0x7871ada9 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
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

    const-string v0, "applyTo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Le2/f;->M(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_1
    const-string v0, "setLayoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Le2/f;->N(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Le2/u;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
