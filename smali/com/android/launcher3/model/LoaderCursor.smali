.class public Lcom/android/launcher3/model/LoaderCursor;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# static fields
.field public static final WORK_SPACE_PROJECTS:[Ljava/lang/String;


# instance fields
.field private final allUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public container:I

.field public final coverValueIndex:I

.field public final folderTypeIndex:I

.field public id:I

.field public itemType:I

.field private mActivityInfo:Landroid/content/pm/LauncherActivityInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mAppWidgetIdIndex:I

.field private final mAppWidgetProviderIndex:I

.field private final mAppWidgetSourceIndex:I

.field private final mCellXIndex:I

.field private final mCellYIndex:I

.field private final mContainerIndex:I

.field private final mContext:Landroid/content/Context;

.field private final mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mIconCache:Lcom/android/launcher3/icons/IconCache;

.field private final mIconIndex:I

.field private final mIdIndex:I

.field private final mIntentIndex:I

.field private final mItemTypeIndex:I

.field private final mItemsToRemove:Lcom/android/launcher3/util/IntArray;

.field private final mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/util/GridOccupancy;",
            ">;"
        }
    .end annotation
.end field

.field private final mOptionsIndex:I

.field private final mPM:Landroid/content/pm/PackageManager;

.field private final mProfileIdIndex:I

.field private final mRankIndex:I

.field private final mRestoredIndex:I

.field private final mRestoredRows:Lcom/android/launcher3/util/IntArray;

.field private final mScreenIndex:I

.field private final mSpanXIndex:I

.field private final mSpanYIndex:I

.field public final mTitleIndex:I

.field public restoreFlag:I

.field public serialNumber:J

.field public user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "container"

    const-string v3, "itemType"

    const-string v4, "screen"

    const-string v5, "cellX"

    const-string v6, "cellY"

    const-string v7, "profileId"

    const-string v8, "restored"

    const-string v9, "intent"

    const-string v10, "spanX"

    const-string v11, "spanY"

    const-string v12, "appWidgetId"

    const-string v13, "appWidgetProvider"

    const-string v14, "rank"

    const-string v15, "options"

    const-string v16, "appWidgetSource"

    const-string v17, "folderType"

    const-string v18, "coverValue"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/model/LoaderCursor;->WORK_SPACE_PROJECTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/UserManagerState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    new-instance p1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {p1}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mItemsToRemove:Lcom/android/launcher3/util/IntArray;

    new-instance p1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {p1}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mRestoredRows:Lcom/android/launcher3/util/IntArray;

    new-instance p1, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {p1}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderCursor;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object p1, p3, Lcom/android/launcher3/model/UserManagerState;->allUsers:Landroid/util/LongSparseArray;

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mPM:Landroid/content/pm/PackageManager;

    const-string p1, "icon"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconIndex:I

    const-string p1, "title"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mTitleIndex:I

    const-string p1, "_id"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIdIndex:I

    const-string p1, "container"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mContainerIndex:I

    const-string p1, "itemType"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mItemTypeIndex:I

    const-string p1, "screen"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mScreenIndex:I

    const-string p1, "cellX"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mCellXIndex:I

    const-string p1, "cellY"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mCellYIndex:I

    const-string p1, "profileId"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mProfileIdIndex:I

    const-string p1, "restored"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mRestoredIndex:I

    const-string p1, "intent"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIntentIndex:I

    const-string p1, "appWidgetId"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mAppWidgetIdIndex:I

    const-string p1, "appWidgetProvider"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mAppWidgetProviderIndex:I

    const-string p1, "spanX"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mSpanXIndex:I

    const-string p1, "spanY"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mSpanYIndex:I

    const-string p1, "rank"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mRankIndex:I

    const-string p1, "options"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mOptionsIndex:I

    const-string p1, "appWidgetSource"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mAppWidgetSourceIndex:I

    const-string p1, "folderType"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->folderTypeIndex:I

    const-string p1, "coverValue"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->coverValueIndex:I

    return-void
.end method

.method private getIconFromDb()[B
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lg4/i;

    move-result-object v2

    const-string v3, "favorites"

    const-string v1, "icon"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id = ? "

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    iget p0, p0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelDbController;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_0

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query icon from favorite table error, e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LoaderCursor"

    invoke-static {v1, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    new-array p0, v0, [B

    return-object p0
.end method


# virtual methods
.method public applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->container:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mScreenIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mCellXIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mCellYIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mSpanXIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mSpanYIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p0

    iput p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    return-void
.end method

.method public checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    return-void
.end method

.method public checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderMemoryLogger;)V
    .locals 2

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->checkItemPlacement(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0, p3}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;ZLcom/android/launcher3/model/LoaderMemoryLogger;)V

    goto :goto_0

    :cond_1
    const-string p1, "Item position overlap"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected checkItemPlacement(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const-string v4, ") already occupied"

    const-string v5, ")"

    const-string v6, ":"

    const-string v7, "Error loading shortcut "

    const/16 v8, -0x65

    const-string v9, "LoaderCursor"

    const-string v10, ","

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v3, v8, :cond_3

    iget-object v2, v0, Lcom/android/launcher3/model/LoaderCursor;->mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/GridOccupancy;

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget-object v13, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v13, v13, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    if-lt v3, v13, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " into hotseat position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position out of bounds: (0 to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    sub-int/2addr v0, v12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_0
    if-eqz v2, :cond_2

    iget-object v0, v2, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v2, v0, v3

    aget-boolean v2, v2, v11

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading shortcut into hotseat "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " into position ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-object v0, v0, v3

    aput-boolean v12, v0, v11

    return v12

    :cond_2
    new-instance v2, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v2, v13, v12}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget-object v3, v2, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    aget-object v1, v3, v1

    aput-boolean v12, v1, v11

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderCursor;->mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v12

    :cond_3
    const/16 v8, -0x64

    if-eq v3, v8, :cond_4

    return v12

    :cond_4
    iget-object v13, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v14, v13, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v13, v13, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    const-string v15, "-"

    const-string v11, " into cell ("

    if-ne v3, v8, :cond_5

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ltz v3, :cond_a

    :cond_5
    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ltz v3, :cond_a

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    add-int/2addr v8, v12

    if-gt v8, v14, :cond_a

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int/2addr v3, v8

    if-le v3, v13, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-object v3, v0, Lcom/android/launcher3/model/LoaderCursor;->mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Lcom/android/launcher3/util/GridOccupancy;

    const/4 v5, 0x1

    add-int/lit8 v8, v14, 0x1

    add-int/2addr v13, v5

    invoke-direct {v3, v8, v13}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-nez v5, :cond_7

    const/16 v20, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v3

    move/from16 v19, v8

    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_7
    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v5, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    iget-object v0, v0, Lcom/android/launcher3/model/LoaderCursor;->mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v0, v3, v5, v8, v12}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    return v3

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_a
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") out of screen bounds ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public commitDeleted()Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mItemsToRemove:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lg4/i;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderCursor;->mItemsToRemove:Lcom/android/launcher3/util/IntArray;

    const-string v1, "_id"

    invoke-static {v1, p0}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "favorites"

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/launcher3/model/ModelDbController;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public commitRestoredItems()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mRestoredRows:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "restored"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lg4/i;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderCursor;->mRestoredRows:Lcom/android/launcher3/util/IntArray;

    const-string v2, "_id"

    invoke-static {v2, p0}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const-string v3, "favorites"

    invoke-virtual {v1, v3, v0, p0, v2}, Lcom/android/launcher3/model/ModelDbController;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public createIconRequestInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Lcom/android/launcher3/model/data/IconRequestInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            "Z)",
            "Lcom/android/launcher3/model/data/IconRequestInfo<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getIconFromDb()[B

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/android/launcher3/model/data/IconRequestInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-direct {v1, p1, p0, v0, p2}, Lcom/android/launcher3/model/data/IconRequestInfo;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;[BZ)V

    return-object v1
.end method

.method public getAppShortcutInfo(Landroid/content/Intent;ZZZ)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    const-string v1, "LoaderCursor"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Null user found in getShortcutInfo"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "Missing component found in getShortcutInfo"

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v3, Lm5/a;->a:Lm5/a;

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, p1, v5}, Lm5/a;->a(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    if-nez v3, :cond_2

    if-nez p2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Missing activity found in getShortcutInfo: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    const/4 v1, 0x0

    iput v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mSpanXIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mSpanYIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-nez p4, :cond_3

    invoke-static {p2}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0, p2, v1, p3}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    iget-object p3, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, v0, v1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    :cond_4
    iget-object p3, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    if-eqz p3, :cond_5

    invoke-static {p2, p3}, Lcom/android/launcher3/model/data/AppInfo;->updateRuntimeFlagsForActivityTarget(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;)V

    :cond_5
    iget-object p3, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    if-eqz p4, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez p3, :cond_7

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    sget-object p1, Ly3/b;->a:Ly3/b;

    iget-object p3, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, p3}, Ly3/b;->b(Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderCursor;->mPM:Landroid/content/pm/PackageManager;

    iget-object p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object p3, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p3}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    return-object p2

    :cond_6
    const-string p1, ""

    iput-object p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object p3, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    return-object p2
.end method

.method public getAppWidgetId()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mAppWidgetIdIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p0

    return p0
.end method

.method public getAppWidgetProvider()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mAppWidgetProviderIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppWidgetSource()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mAppWidgetSourceIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p0

    return p0
.end method

.method public getIconBlob()[B
    .locals 2

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getIconFromDb()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getBlob(I)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLauncherActivityInfo()Landroid/content/pm/LauncherActivityInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    return-object p0
.end method

.method public getOptions()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mOptionsIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p0

    return p0
.end method

.method public getRank()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mRankIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p0

    return p0
.end method

.method public getRestoredItemInfo(Landroid/content/Intent;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 3

    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object p1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    iget p1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    iput p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget p0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iput p0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    return-object v0

    :cond_3
    new-instance p1, Ljava/security/InvalidParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid restoreType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSpanX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mSpanXIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p0

    return p0
.end method

.method public getSpanY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mSpanYIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p0

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mTitleIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasRestoreFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOnWorkspaceOrHotseat()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/model/LoaderCursor;->container:I

    const/16 v0, -0x64

    if-eq p0, v0, :cond_1

    const/16 v0, -0x65

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

.method protected loadIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/LoaderCursor;->createIconRequestInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Lcom/android/launcher3/model/data/IconRequestInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/data/IconRequestInfo;->loadWorkspaceIcon(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public loadSimpleWorkspaceItem()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    :cond_0
    return-object v0
.end method

.method public markDeleted(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LoaderCursor"

    invoke-static {v0, p1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mItemsToRemove:Lcom/android/launcher3/util/IntArray;

    iget p0, p0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/IntArray;->add(I)V

    return-void
.end method

.method public markDeleted(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "LoaderCursor"

    invoke-static {v0, p1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderCursor;->mItemsToRemove:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/IntArray;->add(I)V

    return-void
.end method

.method public markRestored()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mRestoredRows:Lcom/android/launcher3/util/IntArray;

    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    :cond_0
    return-void
.end method

.method public moveToNext()Z
    .locals 4

    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mItemTypeIndex:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mContainerIndex:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/LoaderCursor;->container:I

    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIdIndex:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mProfileIdIndex:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iput-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mRestoredIndex:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    :cond_0
    return v0
.end method

.method public parseIntent()Landroid/content/Intent;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIntentIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    const-string p0, "LoaderCursor"

    const-string v1, "Error parsing Intent"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public updater()Lcom/android/launcher3/util/ContentWriter;
    .locals 6

    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/launcher3/util/ContentWriter$CommitParams;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderCursor;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lg4/i;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget p0, p0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const-string p0, "_id= ?"

    invoke-direct {v2, v3, p0, v4}, Lcom/android/launcher3/util/ContentWriter$CommitParams;-><init>(Lcom/android/launcher3/model/ModelDbController;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/ContentWriter$CommitParams;)V

    return-object v0
.end method
