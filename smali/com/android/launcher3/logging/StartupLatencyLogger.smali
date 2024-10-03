.class public Lcom/android/launcher3/logging/StartupLatencyLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logging/StartupLatencyLogger$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/logging/StartupLatencyLogger$Companion;


# instance fields
.field private cardinality:I

.field private final endTimeByEvent:Landroid/util/SparseLongArray;

.field private isInTest:Z

.field private final latencyType:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field private final startTimeByEvent:Landroid/util/SparseLongArray;

.field private workspaceLoadStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/logging/StartupLatencyLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/logging/StartupLatencyLogger$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/launcher3/logging/StartupLatencyLogger;->Companion:Lcom/android/launcher3/logging/StartupLatencyLogger$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V
    .locals 2

    const-string v0, "latencyType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->latencyType:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->endTimeByEvent:Landroid/util/SparseLongArray;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->cardinality:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->workspaceLoadStartTime:J

    return-void
.end method

.method private final maybeLogStartOfWorkspaceLoadTime(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-wide v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->workspaceLoadStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    sget-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    if-eq p1, v4, :cond_1

    sget-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    if-ne p1, v4, :cond_2

    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)Lcom/android/launcher3/logging/StartupLatencyLogger;

    iput-wide v2, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->workspaceLoadStartTime:J

    :cond_2
    return-void
.end method

.method private final validateLoggingEventAtEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Z
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->isInTest:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-string v3, "Cannot end "

    const-string v4, "LauncherStartupLatencyLogger"

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " event before starting it"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->endTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot end same "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " event again"

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    if-eq p1, v0, :cond_6

    iget-object p0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->endTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_5

    move p0, v1

    goto :goto_3

    :cond_5
    move p0, v2

    :goto_3
    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " event after "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    return v1
.end method

.method private final validateLoggingEventAtStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Z
    .locals 13
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->isInTest:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-string v3, "LauncherStartupLatencyLogger"

    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot restart same "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " event"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    if-eq p1, v0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The first log start event must be "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const-string v4, " starts"

    const-string v5, " event after "

    const-string v6, "Cannot start "

    const-wide/16 v7, 0x0

    if-ne p1, v0, :cond_5

    iget-object v9, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    sget-object v10, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    invoke-virtual {v10}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v11

    cmp-long v9, v11, v7

    if-eqz v9, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    sget-object v9, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    if-ne p1, v9, :cond_6

    iget-object p0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p0

    cmp-long p0, p0, v7

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    return v1
.end method


# virtual methods
.method public log()Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    return-object p0
.end method

.method public final logCardinality(I)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iput p1, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->cardinality:I

    return-object p0
.end method

.method public final logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)Lcom/android/launcher3/logging/StartupLatencyLogger;

    move-result-object p0

    return-object p0
.end method

.method public final logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/logging/StartupLatencyLogger;->maybeLogStartOfWorkspaceLoadTime(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/logging/StartupLatencyLogger;->validateLoggingEventAtEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->endTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_0
    return-object p0
.end method

.method public final logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)Lcom/android/launcher3/logging/StartupLatencyLogger;

    move-result-object p0

    return-object p0
.end method

.method public final logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/logging/StartupLatencyLogger;->validateLoggingEventAtStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_0
    return-object p0
.end method

.method public final logWorkspaceLoadStartTime()Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logWorkspaceLoadStartTime(J)Lcom/android/launcher3/logging/StartupLatencyLogger;

    move-result-object p0

    return-object p0
.end method

.method public final logWorkspaceLoadStartTime(J)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iput-wide p1, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->workspaceLoadStartTime:J

    return-object p0
.end method

.method public final reset()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->endTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->cardinality:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->workspaceLoadStartTime:J

    return-void
.end method
