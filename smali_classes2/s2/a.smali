.class public Ls2/a;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source "SourceFile"


# static fields
.field private static sPool:Ls2/a;

.field private static sPoolId:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field private final mPoolId:I

.field private next:Ls2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ls2/a;->sPoolSync:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;III)V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/IconShape;->enableShapeDetection()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;IIZ)V

    iput p4, p0, Ls2/a;->mPoolId:I

    return-void
.end method

.method public static clearPool()V
    .locals 2

    sget-object v0, Ls2/a;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Ls2/a;->sPool:Ls2/a;

    sget v1, Ls2/a;->sPoolId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ls2/a;->sPoolId:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static obtain(Landroid/content/Context;)Ls2/a;
    .locals 4

    sget-object v0, Ls2/a;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ls2/a;->sPool:Ls2/a;

    if-eqz v1, :cond_0

    iget-object p0, v1, Ls2/a;->next:Ls2/a;

    sput-object p0, Ls2/a;->sPool:Ls2/a;

    const/4 p0, 0x0

    iput-object p0, v1, Ls2/a;->next:Ls2/a;

    monitor-exit v0

    return-object v1

    :cond_0
    sget v1, Ls2/a;->sPoolId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    new-instance v2, Ls2/a;

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object v0

    invoke-virtual {v0}, Lj3/a;->h()I

    move-result v0

    invoke-direct {v2, p0, v3, v0, v1}, Ls2/a;-><init>(Landroid/content/Context;III)V

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static obtainFor2x2Icon(Landroid/content/Context;)Ls2/a;
    .locals 1

    instance-of v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->newNTLauncherIcons(Landroid/content/Context;)Ls2/a;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ls2/a;->obtain(Landroid/content/Context;)Ls2/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Ls2/a;->recycle()V

    return-void
.end method

.method public recycle()V
    .locals 3

    sget-object v0, Ls2/a;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Ls2/a;->sPoolId:I

    iget v2, p0, Ls2/a;->mPoolId:I

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->clear()V

    sget-object v1, Ls2/a;->sPool:Ls2/a;

    iput-object v1, p0, Ls2/a;->next:Ls2/a;

    sput-object p0, Ls2/a;->sPool:Ls2/a;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
