.class public Lcom/android/launcher3/provider/RestoreDbTask;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/provider/RestoreDbTask;->lambda$getTelephonyIntentSQLLiteSelection$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getManagedProfileIds(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J)",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/LongSparseArray;

    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v0, p3

    const-string p2, "SELECT profileId from favorites WHERE profileId != ? GROUP BY profileId"

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "profileId"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p0
.end method

.method private static getTelephonyIntentSQLLiteSelection(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lr/a;->a:Lr/a;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, " OR "

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getUserForAncestralSerialNumber(Landroid/app/backup/BackupManager;J)Landroid/os/UserHandle;
    .locals 0

    sget-boolean p0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/app/backup/BackupManager;->getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public static isPending(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/Item;

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->RESTORE_DEVICE:Lcom/android/launcher3/ConstantItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherPrefs;->has([Lcom/android/launcher3/Item;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getTelephonyIntentSQLLiteSelection$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "intent LIKE \'%%\' || \'%s\' || \'%%\' "

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static maybeOverrideShortcuts(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 17

    move-object/from16 v0, p2

    const-string v9, "profileId"

    const-string v10, "intent"

    const-string v11, "_id"

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/uioverrides/ApiWrapper;->getActivityOverrides(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    const-string v2, "favorites"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v3

    const-string v1, "%s=? AND %s=? AND ( %s )"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "itemType"

    const/4 v13, 0x0

    aput-object v5, v4, v13

    const/4 v14, 0x1

    aput-object v9, v4, v14

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/provider/RestoreDbTask;->getTelephonyIntentSQLLiteSelection(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v13

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v14

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v2, v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    if-eqz v5, :cond_1

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Lcom/android/launcher3/model/ModelDbController;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v5}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "favorites"

    const-string v7, "%s=?"

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v11, v15, v13

    invoke-static {v7, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v15, v14, [Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v13

    invoke-virtual {v0, v5, v6, v7, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object/from16 v8, p1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_5
    invoke-virtual {v2}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_3

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "RestoreDbTask"

    const-string v2, "Error while overriding shortcuts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    return-void
.end method

.method private static performRestore(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/launcher3/model/ModelDbController;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v1, v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Lcom/android/launcher3/provider/RestoreDbTask;

    invoke-direct {v2}, Lcom/android/launcher3/provider/RestoreDbTask;-><init>()V

    new-instance v3, Landroid/app/backup/BackupManager;

    invoke-direct {v3, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p0, p1, v0, v3}, Lcom/android/launcher3/provider/RestoreDbTask;->sanitizeDB(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;Landroid/database/sqlite/SQLiteDatabase;Landroid/app/backup/BackupManager;)I

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/provider/RestoreDbTask;->restoreAppWidgetIdsIfExists(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;)V

    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    :try_start_2
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "RestoreDbTask"

    const-string v0, "Failed to verify db"

    invoke-static {p1, v0, p0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method

.method private restoreAppWidgetIdsIfExists(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;)V
    .locals 8

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/android/launcher3/Item;

    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v4, Lcom/android/launcher3/LauncherPrefs;->OLD_APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherPrefs;->has([Lcom/android/launcher3/Item;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/appwidget/AppWidgetHost;

    const/16 v6, 0x400

    invoke-direct {v1, p1, v6}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/android/launcher3/util/IntArray;->fromConcatString(Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/android/launcher3/util/IntArray;->fromConcatString(Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v7

    invoke-static {p1, p2, v6, v7, v1}, Lcom/android/launcher3/AppWidgetsRestoredReceiver;->restoreAppWidgetIds(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;[I[ILandroid/appwidget/AppWidgetHost;)V

    goto :goto_0

    :cond_0
    const-string p1, "RestoreDbTask"

    const-string p2, "No app widget ids to restore."

    invoke-static {p1, p2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-array p1, v0, [Lcom/android/launcher3/Item;

    aput-object v2, p1, v3

    aput-object v4, p1, v5

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherPrefs;->remove([Lcom/android/launcher3/Item;)V

    return-void
.end method

.method public static restoreIfNeeded(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;)V
    .locals 4

    invoke-static {p0}, Lcom/android/launcher3/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/android/launcher3/provider/RestoreDbTask;->performRestore(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/model/ModelDbController;->createEmptyDB()V

    :cond_1
    sget-object p1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/Item;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher3/LauncherPrefs;->RESTORE_DEVICE:Lcom/android/launcher3/ConstantItem;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->removeSync([Lcom/android/launcher3/Item;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->reinitializeAfterRestore(Landroid/content/Context;)V

    return-void
.end method

.method public static setPending(Landroid/content/Context;)V
    .locals 4

    const-string v0, "RestoreDbTask"

    const-string v1, "Restore data received through full backup "

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ln5/k;

    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->RESTORE_DEVICE:Lcom/android/launcher3/ConstantItem;

    new-instance v3, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v3, p0}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/launcher3/model/DeviceGridState;->getDeviceType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/launcher3/Item;->to(Ljava/lang/Object;)Ln5/k;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->putSync([Ln5/k;)V

    return-void
.end method

.method public static setRestoredAppWidgetIds(Landroid/content/Context;[I[I)V
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ln5/k;

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->OLD_APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;

    invoke-static {p1}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Item;->to(Ljava/lang/Object;)Ln5/k;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object p1, Lcom/android/launcher3/LauncherPrefs;->APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;

    invoke-static {p2}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/Item;->to(Ljava/lang/Object;)Ln5/k;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherPrefs;->putSync([Ln5/k;)V

    return-void
.end method


# virtual methods
.method protected changeDefaultColumn(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 0

    const-string p0, "ALTER TABLE favorites RENAME TO favorites_old;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p1, p2, p3, p0}, Lcom/android/launcher3/LauncherSettings$Favorites;->addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    const-string p0, "INSERT INTO favorites SELECT * FROM favorites_old;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "favorites_old"

    invoke-static {p1, p0}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method protected getDefaultProfileId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2

    const-string p0, "PRAGMA table_info (favorites)"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "name"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "profileId"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "dflt_value"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Table does not have a profile id column"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
.end method

.method protected migrateProfileId(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Changing profile user id from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RestoreDbTask"

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "profileId"

    invoke-virtual {p0, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p4, p3

    const-string p2, "favorites"

    const-string p3, "profileId = ?"

    invoke-virtual {p1, p2, p0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method protected removeScreenIdGaps(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    const-string p0, "RestoreDbTask"

    const-string v0, "Removing gaps between screenIds"

    invoke-static {p0, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v3, "favorites"

    const-string v4, "screen"

    const-string v5, "container = -100"

    const/4 v6, 0x0

    const-string v7, "screen"

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/provider/LauncherDbUtils;->queryIntArray(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "screen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " =\nCASE\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    const-string v4, "WHEN "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " == "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " THEN "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    const-string p0, "ELSE screen\nEND WHERE "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "container"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, -0x64

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method protected sanitizeDB(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;Landroid/database/sqlite/SQLiteDatabase;Landroid/app/backup/BackupManager;)I
    .locals 18
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/launcher3/model/ModelDbController;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v9

    invoke-virtual {v6, v8}, Lcom/android/launcher3/provider/RestoreDbTask;->getDefaultProfileId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sanitizeDB: myProfileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " oldProfileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestoreDbTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v6, v8, v11, v12}, Lcom/android/launcher3/provider/RestoreDbTask;->getManagedProfileIds(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/util/LongSparseArray;

    move-result-object v0

    new-instance v13, Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    const/4 v14, 0x1

    add-int/2addr v2, v14

    invoke-direct {v13, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v11, v12, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v14

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    move-object/from16 v5, p4

    invoke-direct {v6, v5, v3, v4}, Lcom/android/launcher3/provider/RestoreDbTask;->getUserForAncestralSerialNumber(Landroid/app/backup/BackupManager;J)Landroid/os/UserHandle;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v7, v15}, Lcom/android/launcher3/model/ModelDbController;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v14

    move-object/from16 v16, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v3, v4, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sanitizeDB: managed profile id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " should be mapped to new id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move-object/from16 v16, v0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    add-int/lit8 v3, v0, -0x1

    :goto_2
    const/4 v5, 0x1

    if-lt v3, v5, :cond_2

    invoke-virtual {v13, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "?"

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profileId NOT IN ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v5, ", "

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "favorites"

    invoke-virtual {v8, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items from unrestored user(s) were deleted"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeepAllIcons"

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x4

    if-eqz v0, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    const/4 v15, 0x1

    or-int/2addr v5, v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v15, "restored"

    invoke-virtual {v1, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x0

    invoke-virtual {v8, v3, v1, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto :goto_4

    :cond_4
    move v0, v4

    :goto_4
    or-int/lit8 v0, v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    const-string v2, "itemType = ?"

    invoke-virtual {v8, v3, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v15, Landroid/util/SparseLongArray;

    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-direct {v15, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    move v0, v4

    move v4, v1

    :goto_5
    const-wide/high16 v16, -0x8000000000000000L

    if-ltz v4, :cond_7

    invoke-virtual {v13, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {v13, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    move/from16 p4, v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    invoke-virtual {v13, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_5

    invoke-virtual {v15, v0, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    add-int/lit8 v0, v0, 0x1

    add-long v4, v4, v16

    :cond_5
    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v17, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/provider/RestoreDbTask;->migrateProfileId(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    move/from16 v0, v16

    goto :goto_6

    :cond_6
    move/from16 v17, p4

    :goto_6
    add-int/lit8 v4, v17, -0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v15}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v13, v0

    :goto_7
    if-ltz v13, :cond_8

    invoke-virtual {v15, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    add-long v2, v4, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/provider/RestoreDbTask;->migrateProfileId(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    add-int/lit8 v13, v13, -0x1

    goto :goto_7

    :cond_8
    cmp-long v0, v9, v11

    if-eqz v0, :cond_9

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/launcher3/provider/RestoreDbTask;->changeDefaultColumn(Landroid/database/sqlite/SQLiteDatabase;J)V

    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->RESTORE_DEVICE:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    invoke-virtual {v6, v8}, Lcom/android/launcher3/provider/RestoreDbTask;->removeScreenIdGaps(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_a
    move-object/from16 v0, p1

    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/launcher3/provider/RestoreDbTask;->maybeOverrideShortcuts(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;Landroid/database/sqlite/SQLiteDatabase;J)V

    return v14
.end method
