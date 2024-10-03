.class public final Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/InvariantDeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GridOption"
.end annotation


# instance fields
.field private final allAppsStyle:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private final cellStyle:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private final dbFile:Ljava/lang/String;

.field private final defaultLayoutId:I

.field private final demoModeLayoutId:I

.field public final deviceCategory:I

.field private final devicePaddingId:I

.field private final folderStyle:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private final hotseatColumnSpan:[I

.field private inlineNavButtonsEndSpacing:I
    .annotation build Landroidx/annotation/DimenRes;
    .end annotation
.end field

.field private final inlineQsb:[Z

.field private final isScalable:Z

.field private final mWorkspaceSpecsId:I

.field public final name:Ljava/lang/String;

.field private final numAllAppsColumns:I

.field public final numColumns:I

.field private final numDatabaseAllAppsColumns:I

.field private final numDatabaseHotseatIcons:I

.field private final numFolderColumns:I

.field private final numFolderRows:I

.field private final numHotseatIcons:I

.field public final numRows:I

.field public final numSearchContainerColumns:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->hotseatColumnSpan:[I

    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->inlineQsb:[Z

    sget-object v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v3, 0xf

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numRows:I

    const/16 v5, 0x12

    invoke-virtual {p2, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numColumns:I

    const/16 v6, 0x19

    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numSearchContainerColumns:I

    const/4 v6, 0x2

    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->dbFile:Ljava/lang/String;

    invoke-static {p1}, Lz2/b;->d(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->defaultLayoutId:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->demoModeLayoutId:I

    const p1, 0x7f130003

    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->allAppsStyle:I

    const/16 p1, 0x11

    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numAllAppsColumns:I

    mul-int/2addr p1, v6

    const/16 v7, 0x13

    invoke-virtual {p2, v7, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseAllAppsColumns:I

    const/16 p1, 0x17

    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numHotseatIcons:I

    mul-int/2addr p1, v6

    const/16 v7, 0x14

    invoke-virtual {p2, v7, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseHotseatIcons:I

    const/16 p1, 0x8

    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aput v7, v1, v4

    const/16 v7, 0x9

    invoke-virtual {p2, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    const/4 v8, 0x1

    aput v7, v1, v8

    const/16 v7, 0xa

    invoke-virtual {p2, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    const/4 v9, 0x3

    aput v7, v1, v9

    const/16 v7, 0xb

    invoke-virtual {p2, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aput v7, v1, v6

    const/16 v1, 0xc

    const v7, 0x7f07052d

    invoke-virtual {p2, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->inlineNavButtonsEndSpacing:I

    const/16 v1, 0x16

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderRows:I

    const/16 v1, 0x15

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderColumns:I

    const/4 v1, 0x7

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->folderStyle:I

    const v5, 0x7f130134

    invoke-virtual {p2, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->cellStyle:I

    const/16 v5, 0xe

    invoke-virtual {p2, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isScalable:Z

    const/4 v5, 0x6

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->devicePaddingId:I

    const/4 v5, 0x5

    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->deviceCategory:I

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_RESPONSIVE_WORKSPACE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1a

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceSpecsId:I

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceSpecsId:I

    :goto_0
    const/16 p0, 0xd

    invoke-virtual {p2, p0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    and-int/lit8 v1, p0, 0x1

    if-ne v1, v8, :cond_1

    move v1, v8

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    aput-boolean v1, v2, v4

    and-int/lit8 v1, p0, 0x2

    if-ne v1, v6, :cond_2

    move v1, v8

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    aput-boolean v1, v2, v8

    and-int/lit8 v1, p0, 0x4

    if-ne v1, v0, :cond_3

    move v0, v8

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_3
    aput-boolean v0, v2, v6

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_4

    move v4, v8

    :cond_4
    aput-boolean v4, v2, v9

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->cellStyle:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isScalable:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->devicePaddingId:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceSpecsId:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->inlineNavButtonsEndSpacing:I

    return p0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numHotseatIcons:I

    return p0
.end method

.method static synthetic access$1800(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseHotseatIcons:I

    return p0
.end method

.method static synthetic access$1900(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->hotseatColumnSpan:[I

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->allAppsStyle:I

    return p0
.end method

.method static synthetic access$2300(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numAllAppsColumns:I

    return p0
.end method

.method static synthetic access$2400(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseAllAppsColumns:I

    return p0
.end method

.method static synthetic access$2900(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->inlineQsb:[Z

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->dbFile:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->defaultLayoutId:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->demoModeLayoutId:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderRows:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderColumns:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->folderStyle:I

    return p0
.end method


# virtual methods
.method public isEnabled(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->deviceCategory:I

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->deviceCategory:I

    const/4 p1, 0x4

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->deviceCategory:I

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_5

    move v0, v1

    :cond_5
    return v0
.end method
