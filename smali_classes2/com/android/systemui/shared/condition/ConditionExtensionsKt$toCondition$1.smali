.class public final Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;
.super Lcom/android/systemui/shared/condition/Condition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/condition/ConditionExtensionsKt;->toCondition(Lkotlinx/coroutines/flow/e;Li6/m0;ILjava/lang/Boolean;)Lcom/android/systemui/shared/condition/Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $scope:Li6/m0;

.field final synthetic $strategy:I

.field final synthetic $this_toCondition:Lkotlinx/coroutines/flow/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private job:Li6/v1;


# direct methods
.method constructor <init>(Li6/m0;Ljava/lang/Boolean;Lkotlinx/coroutines/flow/e;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/m0;",
            "Ljava/lang/Boolean;",
            "Lkotlinx/coroutines/flow/e<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->$scope:Li6/m0;

    iput-object p3, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->$this_toCondition:Lkotlinx/coroutines/flow/e;

    iput p4, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->$strategy:I

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/shared/condition/Condition;-><init>(Li6/m0;Ljava/lang/Boolean;Z)V

    return-void
.end method


# virtual methods
.method public final getJob()Li6/v1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->job:Li6/v1;

    return-object p0
.end method

.method protected getStartStrategy()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->$strategy:I

    return p0
.end method

.method public final setJob(Li6/v1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->job:Li6/v1;

    return-void
.end method

.method protected start()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->$scope:Li6/m0;

    new-instance v3, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1$start$1;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->$this_toCondition:Lkotlinx/coroutines/flow/e;

    const/4 v2, 0x0

    invoke-direct {v3, v1, p0, v2}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1$start$1;-><init>(Lkotlinx/coroutines/flow/e;Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;Lq5/d;)V

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->job:Li6/v1;

    return-void
.end method

.method protected stop()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->job:Li6/v1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Li6/v1$a;->a(Li6/v1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->job:Li6/v1;

    return-void
.end method
