.class public final Lg3/b;
.super Lcom/android/launcher3/graphics/LauncherPreviewRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg3/b$a;,
        Lg3/b$b;
    }
.end annotation


# instance fields
.field private final g:I

.field private final h:I

.field private final i:Lcom/android/launcher3/icons/LauncherIconProvider;

.field private final j:Lcom/android/launcher3/icons/IconCache;

.field private final k:Lcom/android/launcher3/icons/BaseIconFactory;

.field private final l:Lcom/android/launcher3/icons/BaseIconFactory;

.field private final m:Lg3/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/app/WallpaperColors;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            "Landroid/app/WallpaperColors;",
            "Landroid/util/SparseArray<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/app/WallpaperColors;Landroid/util/SparseArray;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object p3

    iget p3, p3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput p3, p0, Lg3/b;->g:I

    invoke-virtual {p2, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object p3

    invoke-virtual {p3}, Lj3/a;->h()I

    move-result p3

    iput p3, p0, Lg3/b;->h:I

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getIconProvider()Lcom/android/launcher3/icons/LauncherIconProvider;

    move-result-object p3

    const-string p4, "getInstance(activityContext).iconProvider"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lg3/b;->i:Lcom/android/launcher3/icons/LauncherIconProvider;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p3

    const-string p4, "getInstance(activityContext).iconCache"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lg3/b;->j:Lcom/android/launcher3/icons/IconCache;

    new-instance p3, Lcom/android/launcher3/icons/BaseIconFactory;

    iget p4, p2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-direct {p3, p1, p4, v0}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    iput-object p3, p0, Lg3/b;->l:Lcom/android/launcher3/icons/BaseIconFactory;

    new-instance p3, Lcom/android/launcher3/icons/BaseIconFactory;

    iget p4, p2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-virtual {p2, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object p2

    invoke-virtual {p2}, Lj3/a;->h()I

    move-result p2

    invoke-direct {p3, p1, p4, p2}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    iput-object p3, p0, Lg3/b;->k:Lcom/android/launcher3/icons/BaseIconFactory;

    new-instance p2, Lg3/b$a;

    invoke-direct {p2, p0, p1}, Lg3/b$a;-><init>(Lg3/b;Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/nothing/cardhost/d;->n()V

    iput-object p2, p0, Lg3/b;->m:Lg3/b$a;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/app/WallpaperColors;Landroid/util/SparseArray;ILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lg3/b;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/app/WallpaperColors;Landroid/util/SparseArray;)V

    return-void
.end method

.method private final c(Z)Lcom/android/launcher3/icons/BaseIconFactory;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lg3/b;->k:Lcom/android/launcher3/icons/BaseIconFactory;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lg3/b;->l:Lcom/android/launcher3/icons/BaseIconFactory;

    :goto_0
    return-object p0
.end method

.method private final g(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/folder/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/BigFolderIcon$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getWorkSpace()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    const-string v2, "workSpace"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0e0044

    invoke-virtual {v0, v2, p0, v1, p1}, Lcom/android/launcher3/folder/BigFolderIcon$Companion;->inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/BigFolderIcon;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/FolderInfo;->removeListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    invoke-interface {p0, v0, p1}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method private final h(Lcom/nothing/launcher/card/s;Lcom/android/launcher3/model/WidgetsModel;)V
    .locals 2

    invoke-virtual {p1}, Lcom/nothing/launcher/card/s;->h()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetProviderInfoByProviderName(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p2

    instance-of v0, p2, Lg4/a;

    if-eqz v0, :cond_0

    check-cast p2, Lg4/a;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lg4/a;->a()Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lg3/b;->i(Lcom/nothing/launcher/card/s;Lcom/nothing/launcher/card/CardWidgetProviderInfo;)V

    :cond_1
    return-void
.end method

.method private final i(Lcom/nothing/launcher/card/s;Lcom/nothing/launcher/card/CardWidgetProviderInfo;)V
    .locals 7

    iget-object v0, p0, Lg3/b;->m:Lg3/b$a;

    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mContext:Landroid/content/Context;

    const-string v2, "mContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nothing/launcher/card/s;->getWidgetId()I

    move-result v2

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/nothing/cardhost/d;->q(Lcom/nothing/cardhost/d;Landroid/content/Context;ILcom/nothing/cardservice/CardWidgetMetaInfo;ZILjava/lang/Object;)Lcom/nothing/cardhost/e;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    instance-of v0, p2, Lcom/nothing/launcher/card/u;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/nothing/launcher/card/u;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v0, v1, v2}, Lcom/nothing/launcher/card/u;->applyDisplaySpan(II)V

    :cond_0
    invoke-interface {p0, p2, p1}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_1
    return-void
.end method

.method private final j(Lcom/nothing/launcher/card/s;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/card/s;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/nothing/launcher/card/CardWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1}, Lcom/nothing/launcher/card/s;->h()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lg3/b;->i(Lcom/nothing/launcher/card/s;Lcom/nothing/launcher/card/CardWidgetProviderInfo;)V

    :cond_0
    return-void
.end method

.method private final m(Lcom/android/launcher3/folder/BaseFolderIcon;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->onCoverValueChange()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->refreshFolderBgColor()V

    return-void
.end method

.method private final n()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getWorkSpace()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher3/BubbleTextView;

    if-eqz v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v5}, Lg3/b;->p(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    instance-of v6, v5, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v5, Lcom/android/launcher3/folder/FolderIcon;

    invoke-direct {p0, v5}, Lg3/b;->s(Lcom/android/launcher3/folder/FolderIcon;)V

    goto :goto_1

    :cond_1
    instance-of v6, v5, Lcom/android/launcher3/folder/BigFolderIcon;

    if-eqz v6, :cond_2

    check-cast v5, Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-direct {p0, v5}, Lg3/b;->r(Lcom/android/launcher3/folder/BigFolderIcon;)V

    goto :goto_1

    :cond_2
    instance-of v5, v5, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final o()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/BubbleTextView;

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v4}, Lg3/b;->p(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    instance-of v5, v4, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v4, Lcom/android/launcher3/folder/FolderIcon;

    invoke-direct {p0, v4}, Lg3/b;->s(Lcom/android/launcher3/folder/FolderIcon;)V

    goto :goto_1

    :cond_1
    instance-of v4, v4, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final p(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfoWithIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lg3/b;->h:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lg3/b;->g:I

    :goto_0
    sget-object v2, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v2}, Lo3/b$b;->a()Lo3/b;

    move-result-object v2

    invoke-static {v0, v1, v0}, Lb3/m;->l(Lcom/android/launcher3/model/data/ItemInfo;ILcom/android/launcher3/model/data/ItemInfo;)Lv3/d;

    move-result-object v1

    iget-object v3, p0, Lg3/b;->j:Lcom/android/launcher3/icons/IconCache;

    invoke-static {v0}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    invoke-direct {p0, v4}, Lg3/b;->c(Z)Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v4

    iget-object p0, p0, Lg3/b;->i:Lcom/android/launcher3/icons/LauncherIconProvider;

    invoke-virtual {v2, v1, v3, v4, p0}, Lo3/b;->p(Lv3/d;Lcom/android/launcher3/icons/cache/BaseIconCache;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    iput-object p0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->reapplyItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_2
    return-void
.end method

.method private final r(Lcom/android/launcher3/folder/BigFolderIcon;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object v0

    invoke-interface {v0}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lg3/b;->p(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lg3/b;->m(Lcom/android/launcher3/folder/BaseFolderIcon;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private final s(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/launcher3/folder/PreviewItemManager;->getFirstPageParams()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v0, v3, :cond_2

    if-ge v0, v4, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    return-void

    :cond_0
    sget-object v6, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v6}, Lo3/b$b;->a()Lo3/b;

    move-result-object v6

    iget v7, p0, Lg3/b;->g:I

    invoke-static {v5, v7, v5}, Lb3/m;->l(Lcom/android/launcher3/model/data/ItemInfo;ILcom/android/launcher3/model/data/ItemInfo;)Lv3/d;

    move-result-object v7

    iget-object v8, p0, Lg3/b;->j:Lcom/android/launcher3/icons/IconCache;

    invoke-static {v5}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v9

    invoke-direct {p0, v9}, Lg3/b;->c(Z)Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v9

    iget-object v10, p0, Lg3/b;->i:Lcom/android/launcher3/icons/LauncherIconProvider;

    invoke-virtual {v6, v7, v8, v9, v10}, Lo3/b;->p(Lv3/d;Lcom/android/launcher3/icons/cache/BaseIconCache;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iput-object v6, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/PreviewItemManager;->getFirstPageParams()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {v2, v6, v5}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawablePublic(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lg3/b;->m(Lcom/android/launcher3/folder/BaseFolderIcon;)V

    invoke-virtual {v2}, Lcom/android/launcher3/folder/PreviewItemManager;->onParamsChanged()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    iget-object p0, p0, Lg3/b;->m:Lg3/b$a;

    invoke-virtual {p0}, Lg3/b$a;->G()V

    return-void
.end method

.method public final f(Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Ljava/util/Map;I)Landroid/view/View;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "+",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/nothing/launcher/card/CardWidgetProviderInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "dataModel"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getDeviceProfile()Lj3/a;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHomeElementInflater:Landroid/view/LayoutInflater;

    const-string v7, "this.mHomeElementInflater"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getWorkSpace()Lcom/android/launcher3/CellLayout;

    move-result-object v6

    const-string v7, "workSpace"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x1

    new-array v13, v12, [I

    const/4 v14, 0x0

    aput p4, v13, v14

    invoke-static {v13}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v13

    iget-object v15, v1, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-static {v13, v15, v6, v7}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-array v7, v12, [I

    aput p4, v7, v14

    invoke-static {v7}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v7

    iget-object v13, v1, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-static {v7, v13, v8, v9}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-array v7, v12, [I

    aput p4, v7, v14

    invoke-static {v7}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v7

    iget-object v9, v1, Lcom/android/launcher3/model/BgDataModel;->cardWidgets:Ljava/util/ArrayList;

    invoke-static {v7, v9, v10, v11}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v9, "itemInfo"

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    iget v11, v7, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v11, :cond_2

    if-eq v11, v12, :cond_2

    const/4 v13, 0x2

    if-eq v11, v13, :cond_0

    const/4 v9, 0x6

    if-eq v11, v9, :cond_2

    goto :goto_0

    :cond_0
    invoke-static {v7, v9}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v9

    check-cast v7, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v9, :cond_1

    invoke-direct {v0, v7}, Lg3/b;->g(Lcom/android/launcher3/model/data/FolderInfo;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v7}, Lg3/b;->inflateAndAddFolder(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    goto :goto_0

    :cond_2
    const-string v9, "null cannot be cast to non-null type com.android.launcher3.model.data.WorkspaceItemInfo"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0, v7}, Lg3/b;->k(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v11, 0x4

    if-eq v8, v11, :cond_4

    const/4 v11, 0x5

    if-eq v8, v11, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {v7, v9}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v2}, Lg3/b;->l(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Ljava/util/Map;)V

    goto :goto_1

    :cond_5
    iget-object v8, v1, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v0, v7, v8}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/WidgetsModel;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nothing/launcher/card/s;

    if-eqz v3, :cond_8

    invoke-static {v6, v9}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v6, v3}, Lg3/b;->j(Lcom/nothing/launcher/card/s;Ljava/util/Map;)V

    sget-object v7, Ln5/t;->a:Ln5/t;

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_7

    invoke-static {v6, v9}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    const-string v8, "dataModel.widgetsModel"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v6, v7}, Lg3/b;->h(Lcom/nothing/launcher/card/s;Lcom/android/launcher3/model/WidgetsModel;)V

    goto :goto_2

    :cond_9
    iget v1, v5, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v2, v5, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v4, v1, v2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->measureView(Landroid/view/View;II)V

    invoke-virtual {v0, v4, v12}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->dispatchVisibilityAggregated(Landroid/view/View;Z)V

    iget v0, v5, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, v5, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v4, v0, v1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->measureView(Landroid/view/View;II)V

    iget v0, v5, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, v5, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v4, v0, v1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->measureView(Landroid/view/View;II)V

    const-string v0, "rootView"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4
.end method

.method public getScreenWithId(I)Lcom/android/launcher3/CellLayout;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getWorkSpace()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    const-string p1, "workSpace"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method protected inflateAndAddFolder(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddFolder(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/data/FolderInfo;->removeListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    const-string p1, "super.inflateAndAddFolde\u2026oveListener(it)\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method protected k(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 4

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHomeElementInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getWorkSpace()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    const v2, 0x7f0e0038

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.views.DoubleShadowBubbleTextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;

    invoke-virtual {v0, p1}, Lcom/nothing/launcher/views/NTBubbleTextView;->updateIconSizeAndPadding(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-interface {p0, v0, p1}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method protected l(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "+",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widgetProviderInfoMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lg3/b;->i:Lcom/android/launcher3/icons/LauncherIconProvider;

    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lo3/d;->setIconThemeSupported(Z)V

    invoke-direct {p0}, Lg3/b;->n()V

    invoke-direct {p0}, Lg3/b;->o()V

    return-void
.end method
