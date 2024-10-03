.class final Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/condition/CombinedCondition;->lazilyEvaluate(Ljava/util/Collection;Z)Lkotlinx/coroutines/flow/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Lk6/t<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.android.systemui.shared.condition.CombinedCondition$lazilyEvaluate$1"
    f = "CombinedCondition.kt"
    l = {
        0x9e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $conditions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/systemui/shared/condition/Condition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $filterUnknown:Z

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/shared/condition/CombinedCondition;


# direct methods
.method constructor <init>(Ljava/util/Collection;ZLcom/android/systemui/shared/condition/CombinedCondition;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/systemui/shared/condition/Condition;",
            ">;Z",
            "Lcom/android/systemui/shared/condition/CombinedCondition;",
            "Lq5/d<",
            "-",
            "Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->$conditions:Ljava/util/Collection;

    iput-boolean p2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->$filterUnknown:Z

    iput-object p3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method

.method public static final synthetic access$invokeSuspend$cancelAllExcept(Ljava/util/List;Ljava/util/Collection;Ljava/util/List;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->invokeSuspend$cancelAllExcept(Ljava/util/List;Ljava/util/Collection;Ljava/util/List;I)V

    return-void
.end method

.method public static final synthetic access$invokeSuspend$collectFlow(Ljava/util/List;ZLjava/util/List;Lk6/t;Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/List;Ljava/util/Collection;I)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->invokeSuspend$collectFlow(Ljava/util/List;ZLjava/util/List;Lk6/t;Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/List;Ljava/util/Collection;I)V

    return-void
.end method

.method private static final invokeSuspend$cancelAllExcept(Ljava/util/List;Ljava/util/Collection;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li6/v1;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/systemui/shared/condition/Condition;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    if-ne v1, p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    if-eq p3, v2, :cond_1

    invoke-static {p1, v1}, Lo5/j;->D(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/condition/Condition;

    invoke-virtual {v2}, Lcom/android/systemui/shared/condition/Condition;->getStartStrategy()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li6/v1;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Li6/v1$a;->a(Li6/v1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_2
    invoke-interface {p0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static final invokeSuspend$collectFlow(Ljava/util/List;ZLjava/util/List;Lk6/t;Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/List;Ljava/util/Collection;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/coroutines/flow/e<",
            "Ljava/lang/Boolean;",
            ">;>;Z",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lk6/t<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/shared/condition/CombinedCondition;",
            "Ljava/util/List<",
            "Li6/v1;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/systemui/shared/condition/Condition;",
            ">;I)V"
        }
    .end annotation

    move/from16 v10, p7

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne v10, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/android/systemui/shared/condition/CombinedCondition;->access$getScope$p(Lcom/android/systemui/shared/condition/CombinedCondition;)Li6/m0;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v14, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;

    const/4 v9, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p7

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;-><init>(Ljava/util/List;ILjava/util/List;Lcom/android/systemui/shared/condition/CombinedCondition;Lk6/t;Ljava/util/List;Ljava/util/Collection;ZLq5/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    invoke-static/range {v1 .. v6}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    move-result-object v0

    move-object/from16 v1, p5

    invoke-interface {v1, v10, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-static/range {p2 .. p2}, Lo5/j;->F(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p2

    :goto_1
    sget-object v1, Lcom/android/systemui/shared/condition/Evaluator;->INSTANCE:Lcom/android/systemui/shared/condition/Evaluator;

    invoke-static/range {p4 .. p4}, Lcom/android/systemui/shared/condition/CombinedCondition;->access$getOperand$p(Lcom/android/systemui/shared/condition/CombinedCondition;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/shared/condition/Evaluator;->evaluate$shared_release(Ljava/util/Collection;I)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Lk6/z;->B(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "*>;)",
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->$conditions:Ljava/util/Collection;

    iget-boolean v2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->$filterUnknown:Z

    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;-><init>(Ljava/util/Collection;ZLcom/android/systemui/shared/condition/CombinedCondition;Lq5/d;)V

    iput-object p1, v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6/t;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->invoke(Lk6/t;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lk6/t;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/t<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lk6/t;

    iget-object v4, v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->$conditions:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x0

    if-ge v6, v4, :cond_2

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->$conditions:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_3

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->$conditions:Ljava/util/Collection;

    new-instance v14, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lo5/j;->n(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v14, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/shared/condition/Condition;

    invoke-static {v6}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt;->toFlow(Lcom/android/systemui/shared/condition/Condition;)Lkotlinx/coroutines/flow/e;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v4, v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->$conditions:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v11, v5

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v16, v11, 0x1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/condition/Condition;

    invoke-virtual {v4}, Lcom/android/systemui/shared/condition/Condition;->getStartStrategy()I

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v5, v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->$filterUnknown:Z

    iget-object v8, v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    iget-object v10, v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->$conditions:Ljava/util/Collection;

    move-object v4, v14

    move-object v6, v13

    move-object v7, v2

    move-object v9, v12

    invoke-static/range {v4 .. v11}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->invokeSuspend$collectFlow(Ljava/util/List;ZLjava/util/List;Lk6/t;Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/List;Ljava/util/Collection;I)V

    move v5, v3

    :cond_5
    move/from16 v11, v16

    goto :goto_3

    :cond_6
    if-nez v5, :cond_7

    iget-boolean v5, v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->$filterUnknown:Z

    iget-object v8, v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    iget-object v10, v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->$conditions:Ljava/util/Collection;

    const/4 v11, 0x0

    move-object v4, v14

    move-object v6, v13

    move-object v7, v2

    move-object v9, v12

    invoke-static/range {v4 .. v11}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->invokeSuspend$collectFlow(Ljava/util/List;ZLjava/util/List;Lk6/t;Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/List;Ljava/util/Collection;I)V

    :cond_7
    new-instance v4, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;

    iget-object v5, v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->$conditions:Ljava/util/Collection;

    invoke-direct {v4, v12, v5, v13}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/List;)V

    iput v3, v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->label:I

    invoke-static {v2, v4, v0}, Lk6/r;->a(Lk6/t;Ly5/a;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_4
    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0
.end method
