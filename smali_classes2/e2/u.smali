.class public Le2/u;
.super Le2/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/u$a;
    }
.end annotation


# static fields
.field public static final l:Le2/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/u$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/u$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Le2/u;->l:Le2/u$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Le2/t;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static final synthetic C(Le2/u;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Le2/u;->E(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic D(Le2/u;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 1

    const-string v0, "setLayoutAnimation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Le2/u;->E(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Le2/t;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final E(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
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

    instance-of v0, p4, Le2/u$b;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le2/u$b;

    iget v1, v0, Le2/u$b;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le2/u$b;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Le2/u$b;

    invoke-direct {v0, p0, p4}, Le2/u$b;-><init>(Le2/u;Lq5/d;)V

    :goto_0
    iget-object p4, v0, Le2/u$b;->g:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Le2/u$b;->i:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_4

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

    instance-of v2, p3, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-static {v2, p3}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object p3

    goto :goto_1

    :cond_3
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

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move-object p4, p3

    :goto_3
    check-cast p4, Landroid/view/animation/LayoutAnimationController;

    if-eqz p4, :cond_5

    iput v3, v0, Le2/u$b;->i:I

    invoke-virtual {p0, p1, p2, p4, v0}, Le2/t;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_4
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method


# virtual methods
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

    invoke-static {p0, p1, p2, p3, p4}, Le2/u;->D(Le2/u;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
