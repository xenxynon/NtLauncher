.class final Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic $callback:Lcom/android/systemui/shared/condition/Condition$Callback;

.field final synthetic $this_toFlow:Lcom/android/systemui/shared/condition/Condition;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/condition/Condition;Lcom/android/systemui/shared/condition/Condition$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$1;->$this_toFlow:Lcom/android/systemui/shared/condition/Condition;

    iput-object p2, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$1;->$callback:Lcom/android/systemui/shared/condition/Condition$Callback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$1;->invoke()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$1;->$this_toFlow:Lcom/android/systemui/shared/condition/Condition;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$1;->$callback:Lcom/android/systemui/shared/condition/Condition$Callback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/condition/Condition;->removeCallback(Lcom/android/systemui/shared/condition/Condition$Callback;)V

    return-void
.end method
