.class Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer$FinishImmediatelyHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishImmediatelyHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer$FinishImmediatelyHandler;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer$FinishImmediatelyHandler;->lambda$onRecentsAnimationStart$0(Lcom/android/quickstep/RecentsAnimationController;)V

    return-void
.end method

.method private static synthetic lambda$onRecentsAnimationStart$0(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 0

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p2, Lcom/android/quickstep/inputconsumers/h;

    invoke-direct {p2, p1}, Lcom/android/quickstep/inputconsumers/h;-><init>(Lcom/android/quickstep/RecentsAnimationController;)V

    invoke-static {p0, p2}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
