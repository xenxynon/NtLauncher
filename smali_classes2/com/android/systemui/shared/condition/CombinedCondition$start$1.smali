.class final Lcom/android/systemui/shared/condition/CombinedCondition$start$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/condition/CombinedCondition;->start()V
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
    c = "com.android.systemui.shared.condition.CombinedCondition$start$1"
    f = "CombinedCondition.kt"
    l = {
        0x47
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/shared/condition/CombinedCondition;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/condition/CombinedCondition;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/condition/CombinedCondition;",
            "Lq5/d<",
            "-",
            "Lcom/android/systemui/shared/condition/CombinedCondition$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 0
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

    new-instance p1, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;-><init>(Lcom/android/systemui/shared/condition/CombinedCondition;Lq5/d;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    invoke-static {p1}, Lcom/android/systemui/shared/condition/CombinedCondition;->access$getConditions$p(Lcom/android/systemui/shared/condition/CombinedCondition;)Ljava/util/Collection;

    move-result-object p1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/shared/condition/Condition;

    invoke-virtual {v4}, Lcom/android/systemui/shared/condition/Condition;->isOverridingCondition()Z

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {}, Lo5/j;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {p1, v3, v2}, Lcom/android/systemui/shared/condition/CombinedCondition;->access$lazilyEvaluate(Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/Collection;Z)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/g;->j(Lkotlinx/coroutines/flow/e;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    iget-object v3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    new-instance v4, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3, v1}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;-><init>(Lq5/d;Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/Map;)V

    invoke-static {p1, v4}, Lkotlinx/coroutines/flow/g;->u(Lkotlinx/coroutines/flow/e;Ly5/q;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$2;

    iget-object v3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    invoke-direct {v1, v3}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$2;-><init>(Lcom/android/systemui/shared/condition/CombinedCondition;)V

    iput v2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/e;->collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
