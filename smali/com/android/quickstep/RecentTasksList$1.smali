.class Lcom/android/quickstep/RecentTasksList$1;
.super Lcom/android/wm/shell/recents/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/RecentTasksList;-><init>(Lcom/android/launcher3/util/LooperExecutor;Landroid/app/KeyguardManager;Lcom/android/quickstep/SystemUiProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RecentTasksList;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RecentTasksList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    invoke-direct {p0}, Lcom/android/wm/shell/recents/b$a;-><init>()V

    return-void
.end method

.method public static synthetic R(Lcom/android/quickstep/RecentTasksList$1;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentTasksList$1;->lambda$onRunningTaskVanished$1(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic S(Lcom/android/quickstep/RecentTasksList$1;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentTasksList$1;->lambda$onRunningTaskAppeared$0(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private synthetic lambda$onRunningTaskAppeared$0(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentTasksList;->access$200(Lcom/android/quickstep/RecentTasksList;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private synthetic lambda$onRunningTaskVanished$1(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentTasksList;->access$100(Lcom/android/quickstep/RecentTasksList;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method


# virtual methods
.method public onRecentTasksChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    invoke-static {v0}, Lcom/android/quickstep/RecentTasksList;->access$000(Lcom/android/quickstep/RecentTasksList;)Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    new-instance v1, Lcom/android/quickstep/c4;

    invoke-direct {v1, p0}, Lcom/android/quickstep/c4;-><init>(Lcom/android/quickstep/RecentTasksList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    invoke-static {v0}, Lcom/android/quickstep/RecentTasksList;->access$000(Lcom/android/quickstep/RecentTasksList;)Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/b4;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/b4;-><init>(Lcom/android/quickstep/RecentTasksList$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    invoke-static {v0}, Lcom/android/quickstep/RecentTasksList;->access$000(Lcom/android/quickstep/RecentTasksList;)Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/a4;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/a4;-><init>(Lcom/android/quickstep/RecentTasksList$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
