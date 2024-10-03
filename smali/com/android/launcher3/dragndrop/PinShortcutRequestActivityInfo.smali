.class public Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;
.super Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInfo:Landroid/content/pm/ShortcutInfo;

.field private final mRequestSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/LauncherApps$PinItemRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    new-instance v1, Li/v;

    invoke-direct {v1, p1}, Li/v;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;-><init>(Landroid/content/pm/ShortcutInfo;Ljava/util/function/Supplier;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ShortcutInfo;Ljava/util/function/Supplier;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ShortcutInfo;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/LauncherApps$PinItemRequest;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pinned-shortcut"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mRequestSupplier:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mInfo:Landroid/content/pm/ShortcutInfo;

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/content/pm/LauncherApps$PinItemRequest;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->lambda$new$0(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/content/pm/LauncherApps$PinItemRequest;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public createWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 4

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->MULTI_SELECT_EDIT_MODE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/statemanager/BaseState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x1f4

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mRequestSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {v0, p0, v2, v3}, Lcom/android/launcher3/pm/PinRequestHelper;->createWorkspaceItemFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getItemType()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public isPersistable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startConfigActivity(Landroid/app/Activity;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
