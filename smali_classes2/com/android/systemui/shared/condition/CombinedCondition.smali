.class public final Lcom/android/systemui/shared/condition/CombinedCondition;
.super Lcom/android/systemui/shared/condition/Condition;
.source "SourceFile"


# instance fields
.field private final _startStrategy$delegate:Ln5/e;

.field private final conditions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/systemui/shared/condition/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private job:Li6/v1;

.field private final operand:I

.field private final scope:Li6/m0;


# direct methods
.method public constructor <init>(Li6/m0;Ljava/util/Collection;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/m0;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/systemui/shared/condition/Condition;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conditions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/shared/condition/Condition;-><init>(Li6/m0;Ljava/lang/Boolean;Z)V

    iput-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->scope:Li6/m0;

    iput-object p2, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->conditions:Ljava/util/Collection;

    iput p3, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->operand:I

    new-instance p1, Lcom/android/systemui/shared/condition/CombinedCondition$_startStrategy$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/condition/CombinedCondition$_startStrategy$2;-><init>(Lcom/android/systemui/shared/condition/CombinedCondition;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->_startStrategy$delegate:Ln5/e;

    return-void
.end method

.method public static final synthetic access$calculateStartStrategy(Lcom/android/systemui/shared/condition/CombinedCondition;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/condition/CombinedCondition;->calculateStartStrategy()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getConditions$p(Lcom/android/systemui/shared/condition/CombinedCondition;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->conditions:Ljava/util/Collection;

    return-object p0
.end method

.method public static final synthetic access$getOperand$p(Lcom/android/systemui/shared/condition/CombinedCondition;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->operand:I

    return p0
.end method

.method public static final synthetic access$getScope$p(Lcom/android/systemui/shared/condition/CombinedCondition;)Li6/m0;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->scope:Li6/m0;

    return-object p0
.end method

.method public static final synthetic access$lazilyEvaluate(Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/Collection;Z)Lkotlinx/coroutines/flow/e;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/condition/CombinedCondition;->lazilyEvaluate(Ljava/util/Collection;Z)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$shouldEarlyReturn(Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/lang/Boolean;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/condition/CombinedCondition;->shouldEarlyReturn(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method private final calculateStartStrategy()I
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->conditions:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/condition/Condition;

    invoke-virtual {v1}, Lcom/android/systemui/shared/condition/Condition;->getStartStrategy()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method private final get_startStrategy()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->_startStrategy$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final lazilyEvaluate(Ljava/util/Collection;Z)Lkotlinx/coroutines/flow/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/systemui/shared/condition/Condition;",
            ">;Z)",
            "Lkotlinx/coroutines/flow/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;-><init>(Ljava/util/Collection;ZLcom/android/systemui/shared/condition/CombinedCondition;Lq5/d;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/g;->e(Ly5/p;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method private final shouldEarlyReturn(Ljava/lang/Boolean;)Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->operand:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    return p0
.end method


# virtual methods
.method protected getStartStrategy()I
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/condition/CombinedCondition;->get_startStrategy()I

    move-result p0

    return p0
.end method

.method protected start()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->scope:Li6/m0;

    new-instance v3, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;-><init>(Lcom/android/systemui/shared/condition/CombinedCondition;Lq5/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->job:Li6/v1;

    return-void
.end method

.method protected stop()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->job:Li6/v1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Li6/v1$a;->a(Li6/v1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->job:Li6/v1;

    return-void
.end method
