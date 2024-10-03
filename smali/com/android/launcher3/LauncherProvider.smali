.class public Lcom/android/launcher3/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherProvider$SqlArguments;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private initializeExternalAdd(Landroid/content/ContentValues;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelDbController;->generateNewItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "itemType"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-string v0, "appWidgetId"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    const-string v2, "appWidgetProvider"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->allocateAppWidgetId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1, v4, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "LauncherProvider"

    const-string v1, "Failed to initialize external widget"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    return v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    throw p1

    :cond_1
    return v3

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private reloadLauncherIfExternal()V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelDbController;->newTransaction()Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Landroid/content/ContentProviderResult;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentProviderOperation;

    invoke-virtual {v4, p0, v2, v3}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    return-object v2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
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

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1

    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object p1

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/android/launcher3/model/ModelDbController;->bulkInsert(Ljava/lang/String;[Landroid/content/ContentValues;)I

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    array-length p0, p2

    return p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p3

    const/4 v0, 0x0

    if-eq p2, p3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p3, "create_empty_db"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 p2, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string p3, "new_db_transaction"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 p2, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string p3, "load_default_favorites"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x7

    goto :goto_0

    :sswitch_3
    const-string p3, "restore_hotseat_table"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x6

    goto :goto_0

    :sswitch_4
    const-string p3, "clear_empty_db_flag"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p2, 0x5

    goto :goto_0

    :sswitch_5
    const-string p3, "generate_new_screen_id"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p2, 0x4

    goto :goto_0

    :sswitch_6
    const-string p3, "generate_new_item_id"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p2, 0x3

    goto :goto_0

    :sswitch_7
    const-string p3, "transform_widget_to_card"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_8
    const-string p3, "remove_ghost_widgets"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_9
    const-string p3, "delete_empty_folders"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 p2, 0x0

    :goto_0
    const-string p1, "value"

    packed-switch p2, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createEmptyDB()V

    return-object v0

    :pswitch_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->newTransaction()Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p2

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->loadDefaultFavoritesIfNecessary()V

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->refreshHotseatRestoreTable()V

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->clearEmptyDbFlag()V

    return-object v0

    :pswitch_5
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->getNewScreenId()I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p2

    :pswitch_6
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->generateNewItemId()I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p2

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lg4/i;->j(Landroid/content/Context;)V

    return-object v0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->removeGhostWidgets()V

    return-object v0

    :pswitch_9
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->deleteEmptyFolders()Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x772f6ec1 -> :sswitch_9
        -0x5d566b7c -> :sswitch_8
        -0x45db4b74 -> :sswitch_7
        -0x4200a9a2 -> :sswitch_6
        -0x3d63635b -> :sswitch_5
        -0x3c1ca8d7 -> :sswitch_4
        0x12478130 -> :sswitch_3
        0x1c6a9ec0 -> :sswitch_2
        0x6046c11c -> :sswitch_1
        0x7e36b893 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object p1

    iget-object p2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object p3, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/launcher3/model/ModelDbController;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    :cond_0
    return p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getModelDbController()Lg4/i;
    .locals 0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lg4/i;

    move-result-object p0

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    new-instance p0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vnd.android.cursor.dir/"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vnd.android.cursor.item/"

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherProvider;->initializeExternalAdd(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object v1

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Lcom/android/launcher3/model/ModelDbController;->insert(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p2

    if-gez p2, :cond_1

    return-object v2

    :cond_1
    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    return-object p1
.end method

.method public onCreate()Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/MainProcessInitializer;->initialize(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance p3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {p3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iget-object p4, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v3, p2

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelDbController;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getModelDbController()Lg4/i;

    move-result-object p1

    iget-object p3, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object p4, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p1, p3, p2, p4, v0}, Lcom/android/launcher3/model/ModelDbController;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    return p1
.end method
