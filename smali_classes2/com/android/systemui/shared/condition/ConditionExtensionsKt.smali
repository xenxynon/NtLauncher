.class public final Lcom/android/systemui/shared/condition/ConditionExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final toCondition(Lkotlinx/coroutines/flow/e;Li6/m0;I)Lcom/android/systemui/shared/condition/Condition;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/e<",
            "Ljava/lang/Boolean;",
            ">;",
            "Li6/m0;",
            "I)",
            "Lcom/android/systemui/shared/condition/Condition;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt;->toCondition$default(Lkotlinx/coroutines/flow/e;Li6/m0;ILjava/lang/Boolean;ILjava/lang/Object;)Lcom/android/systemui/shared/condition/Condition;

    move-result-object p0

    return-object p0
.end method

.method public static final toCondition(Lkotlinx/coroutines/flow/e;Li6/m0;ILjava/lang/Boolean;)Lcom/android/systemui/shared/condition/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/e<",
            "Ljava/lang/Boolean;",
            ">;",
            "Li6/m0;",
            "I",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/android/systemui/shared/condition/Condition;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;

    invoke-direct {v0, p1, p3, p0, p2}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;-><init>(Li6/m0;Ljava/lang/Boolean;Lkotlinx/coroutines/flow/e;I)V

    return-object v0
.end method

.method public static synthetic toCondition$default(Lkotlinx/coroutines/flow/e;Li6/m0;ILjava/lang/Boolean;ILjava/lang/Object;)Lcom/android/systemui/shared/condition/Condition;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt;->toCondition(Lkotlinx/coroutines/flow/e;Li6/m0;ILjava/lang/Boolean;)Lcom/android/systemui/shared/condition/Condition;

    move-result-object p0

    return-object p0
.end method

.method public static final toFlow(Lcom/android/systemui/shared/condition/Condition;)Lkotlinx/coroutines/flow/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/condition/Condition;",
            ")",
            "Lkotlinx/coroutines/flow/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;-><init>(Lcom/android/systemui/shared/condition/Condition;Lq5/d;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/g;->e(Ly5/p;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/flow/g;->j(Lkotlinx/coroutines/flow/e;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method
