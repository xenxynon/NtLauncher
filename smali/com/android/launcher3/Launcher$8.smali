.class Lcom/android/launcher3/Launcher$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/Launcher$8;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher$8;->lambda$onDraw$0()V

    return-void
.end method

.method private synthetic lambda$onDraw$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->access$200(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StartupLatencyLogger;->log()Lcom/android/launcher3/logging/StartupLatencyLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StartupLatencyLogger;->reset()V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/t1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/t1;-><init>(Lcom/android/launcher3/Launcher$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
