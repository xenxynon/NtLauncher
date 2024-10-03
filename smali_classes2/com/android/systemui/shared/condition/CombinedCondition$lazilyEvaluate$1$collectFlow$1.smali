.class final Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->invokeSuspend$collectFlow(Ljava/util/List;ZLjava/util/List;Lk6/t;Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/List;Ljava/util/Collection;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Li6/m0;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.android.systemui.shared.condition.CombinedCondition$lazilyEvaluate$1$collectFlow$1"
    f = "CombinedCondition.kt"
    l = {
        0x83
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$callbackFlow:Lk6/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic $flows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlinx/coroutines/flow/e<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $index:I

.field final synthetic $jobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li6/v1;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/android/systemui/shared/condition/CombinedCondition;


# direct methods
.method constructor <init>(Ljava/util/List;ILjava/util/List;Lcom/android/systemui/shared/condition/CombinedCondition;Lk6/t;Ljava/util/List;Ljava/util/Collection;ZLq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/coroutines/flow/e<",
            "Ljava/lang/Boolean;",
            ">;>;I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/shared/condition/CombinedCondition;",
            "Lk6/t<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Li6/v1;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/systemui/shared/condition/Condition;",
            ">;Z",
            "Lq5/d<",
            "-",
            "Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$flows:Ljava/util/List;

    iput p2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$index:I

    iput-object p3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$values:Ljava/util/List;

    iput-object p4, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    iput-object p5, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$$this$callbackFlow:Lk6/t;

    iput-object p6, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$jobs:Ljava/util/List;

    iput-object p7, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$conditions:Ljava/util/Collection;

    iput-boolean p8, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$filterUnknown:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 10
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

    new-instance p1, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$flows:Ljava/util/List;

    iget v2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$index:I

    iget-object v3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$values:Ljava/util/List;

    iget-object v4, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    iget-object v5, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$$this$callbackFlow:Lk6/t;

    iget-object v6, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$jobs:Ljava/util/List;

    iget-object v7, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$conditions:Ljava/util/Collection;

    iget-boolean v8, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$filterUnknown:Z

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;-><init>(Ljava/util/List;ILjava/util/List;Lcom/android/systemui/shared/condition/CombinedCondition;Lk6/t;Ljava/util/List;Ljava/util/Collection;ZLq5/d;)V

    return-object p1
.end method

.method public final invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/m0;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$flows:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$index:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/e;

    new-instance v1, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;

    iget-object v4, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$values:Ljava/util/List;

    iget v5, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$index:I

    iget-object v6, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    iget-object v7, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$$this$callbackFlow:Lk6/t;

    iget-object v8, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$jobs:Ljava/util/List;

    iget-object v9, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$conditions:Ljava/util/Collection;

    iget-object v10, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$flows:Ljava/util/List;

    iget-boolean v11, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$filterUnknown:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;-><init>(Ljava/util/List;ILcom/android/systemui/shared/condition/CombinedCondition;Lk6/t;Ljava/util/List;Ljava/util/Collection;Ljava/util/List;Z)V

    iput v2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/e;->collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
