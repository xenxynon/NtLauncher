.class public final Lcom/nothing/launcher/track/ReportDrawerDataWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/track/ReportDrawerDataWorker$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/nothing/launcher/track/ReportDrawerDataWorker$a;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/track/ReportDrawerDataWorker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/track/ReportDrawerDataWorker$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/track/ReportDrawerDataWorker;->b:Lcom/nothing/launcher/track/ReportDrawerDataWorker$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/nothing/launcher/track/ReportDrawerDataWorker;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 6

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    iget-object v1, p0, Lcom/nothing/launcher/track/ReportDrawerDataWorker;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v1

    sget-object v2, Lcom/nothing/launcher/track/a;->b:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/nothing/launcher/track/ReportDrawerDataWorker;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v3, Lcom/nothing/launcher/track/a;->c:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const-string v3, "success()"

    if-gtz v0, :cond_0

    :goto_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    int-to-long v4, v0

    div-long/2addr v1, v4

    sget-object v4, Ly4/a;->h:Ly4/a;

    invoke-virtual {v4, v1, v2, v0}, Ly4/a;->b(JI)V

    sget-object v0, Lcom/nothing/launcher/track/ReportDrawerDataWorker;->b:Lcom/nothing/launcher/track/ReportDrawerDataWorker$a;

    iget-object p0, p0, Lcom/nothing/launcher/track/ReportDrawerDataWorker;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/nothing/launcher/track/ReportDrawerDataWorker$a;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
