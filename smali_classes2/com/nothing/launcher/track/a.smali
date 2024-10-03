.class public final Lcom/nothing/launcher/track/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/nothing/launcher/track/a;

.field public static b:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static d:J

.field private static e:J

.field private static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/nothing/launcher/track/a;

    invoke-direct {v0}, Lcom/nothing/launcher/track/a;-><init>()V

    sput-object v0, Lcom/nothing/launcher/track/a;->a:Lcom/nothing/launcher/track/a;

    new-instance v0, Lcom/android/launcher3/ConstantItem;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v2, "nt_total_drawer_duration"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/ConstantItem;-><init>(Ljava/lang/String;ZLjava/lang/Object;ZLjava/lang/Class;ILkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/track/a;->b:Lcom/android/launcher3/ConstantItem;

    new-instance v0, Lcom/android/launcher3/ConstantItem;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v10, "nt_drawer_access_times"

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x10

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/ConstantItem;-><init>(Ljava/lang/String;ZLjava/lang/Object;ZLjava/lang/Class;ILkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/track/a;->c:Lcom/android/launcher3/ConstantItem;

    const-string v0, "DrawerTracker"

    sput-object v0, Lcom/nothing/launcher/track/a;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()J
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static final c(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/nothing/launcher/track/a;->e:J

    sget-wide v2, Lcom/nothing/launcher/track/a;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-void

    :cond_0
    sub-long/2addr v0, v2

    sput-wide v4, Lcom/nothing/launcher/track/a;->d:J

    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v3

    sget-object v4, Lcom/nothing/launcher/track/a;->b:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v5

    sget-object v6, Lcom/nothing/launcher/track/a;->c:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v6

    sget-object v7, Lcom/nothing/launcher/track/a;->b:Lcom/android/launcher3/ConstantItem;

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/Item;Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    sget-object v0, Lcom/nothing/launcher/track/a;->c:Lcom/android/launcher3/ConstantItem;

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/Item;Ljava/lang/Object;)V

    return-void
.end method

.method public static final d()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/nothing/launcher/track/a;->d:J

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p0

    sget-object v0, Lcom/nothing/launcher/track/a;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    sget-object p0, Lcom/nothing/launcher/track/ReportDrawerDataWorker;->b:Lcom/nothing/launcher/track/ReportDrawerDataWorker$a;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/track/ReportDrawerDataWorker$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final e(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/launcher/track/a;->b()J

    move-result-wide v0

    new-instance p0, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v2, Lcom/nothing/launcher/track/ReportDrawerDataWorker;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-direct {p0, v2, v4, v5, v3}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/work/WorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest$Builder;

    sget-object v0, Lcom/nothing/launcher/track/a;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/work/WorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest$Builder;

    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p0

    const-string v0, "Builder(\n            Rep\u2026Tag)\n            .build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/work/PeriodicWorkRequest;

    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    return-void
.end method
