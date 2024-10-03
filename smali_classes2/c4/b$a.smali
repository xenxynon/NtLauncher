.class public final Lc4/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lc4/b$a;-><init>()V

    return-void
.end method

.method public static synthetic c(Lc4/b$a;Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lc4/b$a;->b(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Z)Z

    move-result p0

    return p0
.end method

.method private final e(Landroid/content/Context;ZLcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;)Z
    .locals 15

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lg4/i;

    move-result-object v0

    move-object/from16 v9, p1

    invoke-virtual {v0, v9, v7}, Lg4/i;->h(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    :try_start_0
    sget-object v1, Ln5/l;->h:Ln5/l$a;

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelDbController;->newTransaction()Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v13, 0x0

    :try_start_1
    new-instance v14, Lc4/b;

    invoke-virtual {v12}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v1, "it.db"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v8, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    new-instance v5, Landroid/graphics/Point;

    iget v1, v8, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v2, v8, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v5, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    move-object v1, v14

    move/from16 v2, p2

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lc4/b;-><init>(ZLandroid/database/sqlite/SQLiteDatabase;ILandroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v14}, Lc4/b;->a()V

    if-nez v7, :cond_0

    invoke-virtual {v0}, Lg4/i;->e()V

    :cond_0
    invoke-virtual {v12}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V

    sget-object v0, Ln5/t;->a:Ln5/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v12, v13}, Lw5/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-static {v12, v1}, Lw5/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    sget-object v1, Ln5/l;->h:Ln5/l$a;

    invoke-static {v0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "NTGridSizeMigrationTask"

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during grid migration, error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "grid migration for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_2

    const-string v3, "preview"

    goto :goto_1

    :cond_2
    const-string v3, "apply grid layout"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " completed in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v10

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p3}, Lc4/b$a;->f(Landroid/content/Context;ZLcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-static {v0}, Ln5/l;->g(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final f(Landroid/content/Context;ZLcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 0

    if-nez p2, :cond_0

    new-instance p0, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {p0, p3}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    const-string v0, "getIDP(context)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lc4/b$a;->c(Lc4/b$a;Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final b(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Z)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetIDP"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v1, p2}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    if-nez p3, :cond_0

    invoke-static {v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->needsToMigrate(Lcom/android/launcher3/model/DeviceGridState;Lcom/android/launcher3/model/DeviceGridState;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v1, Lg4/i;->a:Lg4/i$a;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lg4/i;

    move-result-object v2

    invoke-virtual {v2}, Lg4/i;->f()Lcom/android/launcher3/model/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lg4/i$a;->a(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/DatabaseHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "srcDeviceState.columns"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/model/DeviceGridState;->getRows()Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "srcDeviceState.rows"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, p1, p3, p2, v1}, Lc4/b$a;->e(Landroid/content/Context;ZLcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;)Z

    move-result p0

    return p0
.end method

.method public final d(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->needsToMigrate(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)Z

    move-result p0

    return p0
.end method
