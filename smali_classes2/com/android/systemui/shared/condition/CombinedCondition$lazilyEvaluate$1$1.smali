.class final Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ln5/t;",
        ">;"
    }
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


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/List;)V
    .locals 0
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
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;->$jobs:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;->$conditions:Ljava/util/Collection;

    iput-object p3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;->$values:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;->invoke()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;->$jobs:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;->$conditions:Ljava/util/Collection;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;->$values:Ljava/util/List;

    const/4 v2, -0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->access$invokeSuspend$cancelAllExcept(Ljava/util/List;Ljava/util/Collection;Ljava/util/List;I)V

    return-void
.end method
