.class public Lcom/android/launcher3/icons/LauncherIcons;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source "SourceFile"


# static fields
.field private static sPool:Lcom/android/launcher3/icons/LauncherIcons;

.field private static sPoolId:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field private final mPoolId:I

.field private next:Lcom/android/launcher3/icons/LauncherIcons;

.field private printed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;III)V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/IconShape;->enableShapeDetection()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;IIZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/icons/LauncherIcons;->printed:Z

    iput p4, p0, Lcom/android/launcher3/icons/LauncherIcons;->mPoolId:I

    return-void
.end method

.method public static clearPool()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    sget v1, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;
    .locals 4

    instance-of v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->newLauncherIcons(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    if-eqz v1, :cond_1

    iget-object p0, v1, Lcom/android/launcher3/icons/LauncherIcons;->next:Lcom/android/launcher3/icons/LauncherIcons;

    sput-object p0, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    const/4 p0, 0x0

    iput-object p0, v1, Lcom/android/launcher3/icons/LauncherIcons;->next:Lcom/android/launcher3/icons/LauncherIcons;

    monitor-exit v0

    return-object v1

    :cond_1
    sget v1, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    new-instance v2, Lcom/android/launcher3/icons/LauncherIcons;

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/launcher3/icons/LauncherIcons;-><init>(Landroid/content/Context;III)V

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    return-void
.end method

.method public recycle()V
    .locals 4

    sget-object v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    iget v2, p0, Lcom/android/launcher3/icons/LauncherIcons;->mPoolId:I

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->clear()V

    sget-object v1, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    iput-object v1, p0, Lcom/android/launcher3/icons/LauncherIcons;->next:Lcom/android/launcher3/icons/LauncherIcons;

    sput-object p0, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    iget-boolean v2, p0, Lcom/android/launcher3/icons/LauncherIcons;->printed:Z

    if-nez v2, :cond_1

    if-ne v1, p0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/icons/LauncherIcons;->printed:Z

    const-string p0, "LauncherIcons"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current icon re-use is wrong, callstack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xf

    invoke-static {v3, v1}, Ly2/e;->h(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ly2/e;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
