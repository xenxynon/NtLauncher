.class final Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1$start$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1$start$1$1;->this$0:Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1$start$1$1;->emit(ZLq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final emit(ZLq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1$start$1$1;->this$0:Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/condition/Condition;->updateCondition(Z)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
