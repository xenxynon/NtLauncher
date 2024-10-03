.class public final Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/q<",
        "Lkotlinx/coroutines/flow/f<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Boolean;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.android.systemui.shared.condition.CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1"
    f = "CombinedCondition.kt"
    l = {
        0xbe
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $groupedConditions$inlined:Ljava/util/Map;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/shared/condition/CombinedCondition;


# direct methods
.method public constructor <init>(Lq5/d;Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/Map;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    iput-object p3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->$groupedConditions$inlined:Ljava/util/Map;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/f;

    check-cast p3, Lq5/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->invoke(Lkotlinx/coroutines/flow/f;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/flow/f;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->$groupedConditions$inlined:Ljava/util/Map;

    invoke-direct {v0, p3, v1, p0}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;-><init>(Lq5/d;Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/Map;)V

    iput-object p1, v0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/f;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    iget-object v3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->$groupedConditions$inlined:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {}, Lo5/j;->e()Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v1, v3, v4}, Lcom/android/systemui/shared/condition/CombinedCondition;->access$lazilyEvaluate(Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/Collection;Z)Lkotlinx/coroutines/flow/e;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lkotlinx/coroutines/flow/g;->r(Ljava/lang/Object;)Lkotlinx/coroutines/flow/e;

    move-result-object v1

    :goto_0
    iput v2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/g;->m(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/e;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
