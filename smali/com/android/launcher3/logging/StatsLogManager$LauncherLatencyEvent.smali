.class public final enum Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$EventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logging/StatsLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LauncherLatencyEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;",
        ">;",
        "Lcom/android/launcher3/logging/StatsLogManager$EventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

.field public static final enum LAUNCHER_LATENCY_STARTUP_ACTIVITY_ON_CREATE:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

.field public static final enum LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

.field public static final enum LAUNCHER_LATENCY_STARTUP_VIEW_INFLATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

.field public static final enum LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

.field public static final enum LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;


# instance fields
.field private final mId:I


# direct methods
.method private static synthetic $values()[Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_ACTIVITY_ON_CREATE:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_VIEW_INFLATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const-string v1, "LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION"

    const/4 v2, 0x0

    const/16 v3, 0x552

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const-string v1, "LAUNCHER_LATENCY_STARTUP_ACTIVITY_ON_CREATE"

    const/4 v2, 0x1

    const/16 v3, 0x553

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_ACTIVITY_ON_CREATE:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const-string v1, "LAUNCHER_LATENCY_STARTUP_VIEW_INFLATION"

    const/4 v2, 0x2

    const/16 v3, 0x554

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_VIEW_INFLATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const-string v1, "LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC"

    const/4 v2, 0x3

    const/16 v3, 0x556

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const-string v1, "LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC"

    const/4 v2, 0x4

    const/16 v3, 0x557

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    invoke-static {}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->$values()[Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->$VALUES:[Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;
    .locals 1

    const-class v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->$VALUES:[Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    invoke-virtual {v0}, [Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->mId:I

    return p0
.end method
