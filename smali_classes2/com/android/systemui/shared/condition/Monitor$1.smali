.class Lcom/android/systemui/shared/condition/Monitor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/condition/Condition$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/condition/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/condition/Monitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/condition/Monitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor$1;->this$0:Lcom/android/systemui/shared/condition/Monitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/systemui/shared/condition/Monitor$1;Lcom/android/systemui/shared/condition/Condition;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/condition/Monitor$1;->lambda$onConditionChanged$0(Lcom/android/systemui/shared/condition/Condition;)V

    return-void
.end method

.method private synthetic lambda$onConditionChanged$0(Lcom/android/systemui/shared/condition/Condition;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$1;->this$0:Lcom/android/systemui/shared/condition/Monitor;

    invoke-static {p0, p1}, Lcom/android/systemui/shared/condition/Monitor;->access$300(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/shared/condition/Condition;)V

    return-void
.end method


# virtual methods
.method public onConditionChanged(Lcom/android/systemui/shared/condition/Condition;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$1;->this$0:Lcom/android/systemui/shared/condition/Monitor;

    invoke-static {v0}, Lcom/android/systemui/shared/condition/Monitor;->access$200(Lcom/android/systemui/shared/condition/Monitor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shared/condition/h;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/condition/h;-><init>(Lcom/android/systemui/shared/condition/Monitor$1;Lcom/android/systemui/shared/condition/Condition;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
