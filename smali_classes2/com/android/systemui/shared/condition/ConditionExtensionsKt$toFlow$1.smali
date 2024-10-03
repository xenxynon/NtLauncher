.class final Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/condition/ConditionExtensionsKt;->toFlow(Lcom/android/systemui/shared/condition/Condition;)Lkotlinx/coroutines/flow/e;
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
    c = "com.android.systemui.shared.condition.ConditionExtensionsKt$toFlow$1"
    f = "ConditionExtensions.kt"
    l = {
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $this_toFlow:Lcom/android/systemui/shared/condition/Condition;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/condition/Condition;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/condition/Condition;",
            "Lq5/d<",
            "-",
            "Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->$this_toFlow:Lcom/android/systemui/shared/condition/Condition;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method

.method public static synthetic a(Lk6/t;Lcom/android/systemui/shared/condition/Condition;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->invokeSuspend$lambda$0(Lk6/t;Lcom/android/systemui/shared/condition/Condition;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lk6/t;Lcom/android/systemui/shared/condition/Condition;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/shared/condition/Condition;->isConditionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/shared/condition/Condition;->isConditionMet()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lk6/z;->B(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 1
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

    new-instance v0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->$this_toFlow:Lcom/android/systemui/shared/condition/Condition;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;-><init>(Lcom/android/systemui/shared/condition/Condition;Lq5/d;)V

    iput-object p1, v0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6/t;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->invoke(Lk6/t;Lq5/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lk6/t;

    new-instance v1, Lcom/android/systemui/shared/condition/b;

    invoke-direct {v1, p1}, Lcom/android/systemui/shared/condition/b;-><init>(Lk6/t;)V

    iget-object v3, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->$this_toFlow:Lcom/android/systemui/shared/condition/Condition;

    invoke-virtual {v3, v1}, Lcom/android/systemui/shared/condition/Condition;->addCallback(Lcom/android/systemui/shared/condition/Condition$Callback;)V

    iget-object v3, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->$this_toFlow:Lcom/android/systemui/shared/condition/Condition;

    invoke-interface {v1, v3}, Lcom/android/systemui/shared/condition/Condition$Callback;->onConditionChanged(Lcom/android/systemui/shared/condition/Condition;)V

    new-instance v3, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$1;

    iget-object v4, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->$this_toFlow:Lcom/android/systemui/shared/condition/Condition;

    invoke-direct {v3, v4, v1}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$1;-><init>(Lcom/android/systemui/shared/condition/Condition;Lcom/android/systemui/shared/condition/Condition$Callback;)V

    iput v2, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->label:I

    invoke-static {p1, v3, p0}, Lk6/r;->a(Lk6/t;Ly5/a;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
