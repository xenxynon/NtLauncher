.class public Lcom/android/launcher3/model/data/ItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG:Z = false

.field private static final NAV_BAR_KIDS_MODE:Landroid/net/Uri;

.field public static final NO_ID:I = -0x1

.field public static final NO_MATCHING_ID:I = -0x80000000


# instance fields
.field public addWay:I

.field public animationType:I

.field public cellX:I

.field public cellY:I

.field public container:I

.field public contentDescription:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public id:I

.field public isUninstallableSystemApp:Z

.field public itemType:I

.field private mComponentName:Landroid/content/ComponentName;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public minSpanX:I

.field public minSpanY:I

.field public rank:I

.field public resizeCellX:I

.field public resizeCellY:I

.field public screenId:I

.field public spanX:I

.field public spanY:I

.field public title:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public toCenter:Landroid/graphics/Point;

.field public useResizeCoords:Z

.field public user:Landroid/os/UserHandle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nav_bar_kids_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/model/data/ItemInfo;->NAV_BAR_KIDS_MODE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->animationType:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->addWay:I

    iput-boolean v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->isUninstallableSystemApp:Z

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1    # Lcom/android/launcher3/model/data/ItemInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->animationType:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->addWay:I

    iput-boolean v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->isUninstallableSystemApp:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic a(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/model/data/ItemInfo;->lambda$buildProto$0(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/model/data/ItemInfo;->lambda$buildProto$4(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/model/data/ItemInfo;->lambda$buildProto$3(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->lambda$buildProto$5(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/model/data/ItemInfo;->lambda$buildProto$1(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->lambda$buildProto$2(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$buildProto$0(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 2

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Application;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->setComponentName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$buildProto$1(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "shortcut_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$buildProto$2(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->setShortcutName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/model/data/j;->a:Lcom/android/launcher3/model/data/j;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/model/data/c;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/data/c;-><init>(Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method private static synthetic lambda$buildProto$3(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->setShortcutName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$buildProto$4(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 2

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->setComponentName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$buildProto$5(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Task;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->setComponentName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p1, p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildProto()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/data/ItemInfo;->buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 4
    .param p1    # Lcom/android/launcher3/model/data/FolderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getDefaultItemInfoBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/android/launcher3/model/data/d;

    invoke-direct {v2, p0}, Lcom/android/launcher3/model/data/d;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Task;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setTask(Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/launcher3/model/data/e;

    invoke-direct {v2, p0}, Lcom/android/launcher3/model/data/e;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/launcher3/model/data/g;->a:Lcom/android/launcher3/model/data/g;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->setSpanX(I)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->setSpanY(I)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setWidget(Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/launcher3/model/data/h;->a:Lcom/android/launcher3/model/data/h;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setShortcut(Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/android/launcher3/model/data/f;->a:Lcom/android/launcher3/model/data/f;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Application;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setApplication(Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    :goto_1
    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->setGridX(I)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->setGridY(I)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    move-result-object v2

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v2, p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x67

    if-eq p0, v2, :cond_6

    const/16 v2, -0x65

    if-eq p0, v2, :cond_6

    const/16 v2, -0x64

    if-eq p0, v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object p0

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object p0

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setGridX(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object p0

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setGridY(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    move-result-object p0

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    :goto_2
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setFolder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->CONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    :cond_8
    :goto_3
    invoke-virtual {v0}, Lt1/k$b;->build()Lt1/k;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object p0
.end method

.method public copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p1    # Lcom/android/launcher3/model/data/ItemInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->animationType:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->animationType:I

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method protected dumpProperties()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v1}, Lcom/android/launcher3/LauncherSettings$Favorites;->itemTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " container=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cell("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") span("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") minSpan("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getComponentKey()Lcom/android/launcher3/util/ComponentKey;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v1, -0xc8

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getExtendedContainer()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lt1/k$b;->build()Lt1/k;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setGridX(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setGridY(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v1

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v1, p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    move-result-object v1

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v1, p0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;

    move-result-object v1

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v1, p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    goto :goto_0

    :pswitch_7
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_9
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_a
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x72
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected getDefaultItemInfoBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setIsWork(Z)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/SettingsCache;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v4, Lcom/android/launcher3/model/data/ItemInfo;->NAV_BAR_KIDS_MODE:Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setIsKidsMode(Z)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setRank(I)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    return-object v0
.end method

.method protected getExtendedContainer()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object p0

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/model/data/i;->a:Lcom/android/launcher3/model/data/i;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    return-object p0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getViewId()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    return p0
.end method

.method public isDisabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInHotseat()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v0, -0x65

    if-eq p0, v0, :cond_1

    const/16 v0, -0x67

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isPredictedItem()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v0, -0x67

    if-eq p0, v0, :cond_1

    const/16 v0, -0x66

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public makeShallowCopy()Lcom/android/launcher3/model/data/ItemInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/data/ItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-object v0
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 2
    .param p1    # Lcom/android/launcher3/util/ContentWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/android/launcher3/WorkspaceLayoutManager;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->writeToValues(Lcom/android/launcher3/util/ContentWriter;)V

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const-string v0, "profileId"

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ContentWriter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen id should not be extra empty screen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFromValues(Landroid/content/ContentValues;)V
    .locals 1
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "itemType"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const-string v0, "container"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const-string v0, "cellX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const-string v0, "cellY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const-string v0, "spanX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const-string v0, "spanY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const-string v0, "rank"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Lcom/android/launcher3/model/ModelWriter;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/android/launcher3/model/ModelWriter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    return-void
.end method

.method public shouldUseBackgroundAnimation()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->animationType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_RESULT_LAUNCH_TRANSITION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToValues(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 2
    .param p1    # Lcom/android/launcher3/util/ContentWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "screen"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellY"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanX"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanY"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "rank"

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    return-void
.end method
