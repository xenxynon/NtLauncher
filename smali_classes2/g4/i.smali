.class public final Lg4/i;
.super Lcom/android/launcher3/model/ModelDbController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg4/i$a;
    }
.end annotation


# static fields
.field public static final a:Lg4/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg4/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg4/i$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lg4/i;->a:Lg4/i$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelDbController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final g(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Lg4/i;->f()Lcom/android/launcher3/model/DatabaseHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/ModelDbController;->createDatabaseHelper(Z)Lcom/android/launcher3/model/DatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Lg4/i;->f()Lcom/android/launcher3/model/DatabaseHelper;

    move-result-object p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lq2/r;->a:Lq2/r;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lq2/r;->a(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "favorites"

    invoke-static {v1, v4, v2, v3, p1}, Lcom/android/launcher3/provider/LauncherDbUtils;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0, p0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    :cond_0
    return-void
.end method

.method private final i(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sget-object v1, Lq2/r;->a:Lq2/r;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lq2/r;->a(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "favorites"

    invoke-static {v0, v2, p0, v1, p1}, Lcom/android/launcher3/provider/LauncherDbUtils;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg4/i;->f()Lcom/android/launcher3/model/DatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "currentDBFileName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lz4/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 0

    invoke-virtual {p0}, Lg4/i;->f()Lcom/android/launcher3/model/DatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/DatabaseHelper;->forceInitializeMaxIds()V

    return-void
.end method

.method public final f()Lcom/android/launcher3/model/DatabaseHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final h(Landroid/content/Context;Z)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lg4/i;->i(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lg4/i;->g(Landroid/content/Context;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final j(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherPrefs$Companion;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widget_transform_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg4/i;->f()Lcom/android/launcher3/model/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Lcom/nothing/launcher/widget/g;

    invoke-direct {v4, p1}, Lcom/nothing/launcher/widget/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lg4/i;->f()Lcom/android/launcher3/model/DatabaseHelper;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/nothing/launcher/widget/g;->c(Lcom/android/launcher3/model/DatabaseHelper;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transform widget info card successfully. cost = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherProvider"

    invoke-static {p1, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    const-string v0, "targetDBName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/model/ModelDbController;->createDatabaseHelper(ZLjava/lang/String;)Lcom/android/launcher3/model/DatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    :cond_1
    return-void
.end method
